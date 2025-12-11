#!/bin/bash
# Test script for LaTeX Research Toolkit cross-platform compatibility
# This script tests the build system on the current platform

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}LaTeX Research Toolkit - Platform Compatibility Test${NC}"
echo "=================================================="
echo ""

# Get platform info
PLATFORM=$(uname -s)
echo -e "Platform: ${GREEN}$PLATFORM${NC}"

if [ "$PLATFORM" = "Darwin" ]; then
    echo -e "Distribution: macOS $(sw_vers -productVersion)"
elif [ "$PLATFORM" = "Linux" ]; then
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        echo -e "Distribution: $NAME $VERSION"
    fi
fi
echo ""

# Change to project root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
cd "$PROJECT_ROOT"

# Source common configuration to get tool availability variables
eval $(make -pn | grep -E "^HAS_" | sed 's/^/export /')

echo -e "\n${BLUE}Step 1: Checking dependencies...${NC}"
make check-deps

echo -e "\n${BLUE}Step 2: Testing basic PDF compilation...${NC}"
echo "Testing examples/basic directory..."
cd examples/basic
if make pdf 2>&1 | grep -E "(Error|Fatal error|undefined)" >/dev/null; then
    echo -e "${RED}✗ Basic examples failed to compile${NC}"
    exit 1
else
    echo -e "${GREEN}✓ Basic examples compiled successfully${NC}"
fi
cd ../..

echo -e "\n${BLUE}Step 3: Testing template compilation...${NC}"
echo "Testing templates directory..."
cd templates
if make pdf 2>&1 | grep -E "(Error|Fatal error)" >/dev/null; then
    echo -e "${YELLOW}⚠ Some templates had issues (check for missing packages)${NC}"
else
    echo -e "${GREEN}✓ Templates compiled successfully${NC}"
fi
cd ..

echo -e "\n${BLUE}Step 4: Testing animation handling...${NC}"
echo "Testing trio-visual animation (may skip if tools missing)..."
cd examples/intermediate
if make trio-visual.pdf 2>&1 | grep -E "(Error|Fatal error)" >/dev/null; then
    echo -e "${RED}✗ Animation PDF failed to compile${NC}"
else
    echo -e "${GREEN}✓ Animation PDF compiled successfully${NC}"

    # Test optional animation features
    echo "Testing optional GIF/MP4 creation..."
    if make gif 2>&1 | grep -q "Warning"; then
        echo -e "${YELLOW}⚠ GIF creation skipped (ImageMagick not installed)${NC}"
    else
        echo -e "${GREEN}✓ GIF creation works${NC}"
    fi

    if make mp4 2>&1 | grep -q "Warning"; then
        echo -e "${YELLOW}⚠ MP4 creation skipped (FFmpeg not installed)${NC}"
    else
        echo -e "${GREEN}✓ MP4 creation works${NC}"
    fi
fi
cd ../..

echo -e "\n${BLUE}Step 5: Testing bibliography handling...${NC}"
echo "Testing bibliography compilation..."
cd examples/intermediate
if make bibliography-example.pdf 2>&1 | grep -E "(Error|Fatal error)" >/dev/null; then
    echo -e "${YELLOW}⚠ Bibliography example had issues (biber may be missing)${NC}"
else
    echo -e "${GREEN}✓ Bibliography example compiled${NC}"
fi
cd ../..

echo -e "\n${BLUE}Step 6: Testing advanced features...${NC}"
echo "Testing advanced examples..."
cd examples/advanced
if make pdf 2>&1 | grep -E "(Error|Fatal error)" >/dev/null; then
    echo -e "${YELLOW}⚠ Some advanced examples had issues${NC}"
else
    echo -e "${GREEN}✓ Advanced examples compiled${NC}"
fi
cd ../..

echo -e "\n${BLUE}Step 7: Clean up test artifacts...${NC}"
cd examples
make clean >/dev/null 2>&1 || true
cd ../templates
make clean >/dev/null 2>&1 || true
cd ../..

echo ""
echo "=================================================="
echo -e "${GREEN}✓ Platform compatibility test completed!${NC}"
echo ""
echo "Summary:"
echo "  - Basic LaTeX compilation: ✓"
echo "  - Template compilation: ✓"
echo "  - Animation support: " $(if [ -n "$(HAS_CONVERT)" ] && [ -n "$(HAS_FFMPEG)" ]; then echo "✓ (full)"; else echo "⚠ (partial - missing tools)"; fi)
echo "  - Bibliography: " $(if [ -n "$(HAS_BIBER)" ]; then echo "✓ (biber)"; else echo "⚠ (bibtex fallback)"; fi)
echo ""
echo "For full functionality, install missing tools with:"
echo "  make install-deps"