#!/bin/bash
# LaTeX linting script
# Checks for common LaTeX issues

echo "Running LaTeX linting..."

# Check for common issues
echo "Checking for common LaTeX issues..."

# Check for unmatched braces
echo "Checking for unmatched braces..."
grep -n "{" *.tex | wc -l > /tmp/left_braces
grep -n "}" *.tex | wc -l > /tmp/right_braces
if [ $(cat /tmp/left_braces) -ne $(cat /tmp/right_braces) ]; then
    echo "Warning: Unmatched braces detected"
fi

# Check for common typos
echo "Checking for common typos..."
grep -n "teh " *.tex 2>/dev/null && echo "Found 'teh' (should be 'the')"
grep -n "adn " *.tex 2>/dev/null && echo "Found 'adn' (should be 'and')"
grep -n "recieve" *.tex 2>/dev/null && echo "Found 'recieve' (should be 'receive')"

# Check for missing labels
echo "Checking for missing labels..."
grep -n "\\ref{" *.tex | while read line; do
    ref=$(echo "$line" | sed 's/.*\\ref{\([^}]*\)}.*/\1/')
    if ! grep -q "\\label{$ref}" *.tex; then
        echo "Warning: Reference '$ref' not found"
    fi
done

# Check for missing citations
echo "Checking for missing citations..."
grep -n "\\cite{" *.tex | while read line; do
    cite=$(echo "$line" | sed 's/.*\\cite{\([^}]*\)}.*/\1/')
    if ! grep -q "$cite" *.bib 2>/dev/null; then
        echo "Warning: Citation '$cite' not found in bibliography"
    fi
done

echo "Linting complete!"
