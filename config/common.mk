# LaTeX Research Toolkit - Common Configuration
# This file provides cross-platform compatibility for macOS and Ubuntu

# Platform detection
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
    PLATFORM := macos
    PKG_MANAGER := brew
    HOMEBREW_PATH := /opt/homebrew/bin:/usr/local/bin
else ifeq ($(UNAME_S),Linux)
    PLATFORM := linux
    PKG_MANAGER := apt
    # Check if Ubuntu/Debian
    ifneq ($(shell grep -i "ubuntu\|debian" /etc/os-release 2>/dev/null),)
        DISTRO := ubuntu
    else
        DISTRO := unknown
    endif
endif

# Tool availability checks (cached for performance)
HAS_CONVERT := $(shell command -v convert 2> /dev/null)
HAS_FFMPEG := $(shell command -v ffmpeg 2> /dev/null)
HAS_BIBER := $(shell command -v biber 2> /dev/null)
HAS_MAKEGLOSSARIES := $(shell command -v makeglossaries 2> /dev/null)
HAS_PDFTOPPM := $(shell command -v pdftoppm 2> /dev/null)
HAS_PYGMENTS := $(shell command -v pygmentize 2> /dev/null)

# LaTeX engine detection
HAS_XELATEX := $(shell command -v xelatex 2> /dev/null)
HAS_LUALATEX := $(shell command -v lualatex 2> /dev/null)

# Export for sub-makes
export PLATFORM PKG_MANAGER DISTRO
export HAS_CONVERT HAS_FFMPEG HAS_BIBER HAS_MAKEGLOSSARIES HAS_PDFTOPPM HAS_PYGMENTS
export HAS_XELATEX HAS_LUALATEX

# Common compilation flags
PDFLATEX_FLAGS := -interaction=nonstopmode -halt-on-error
ifeq ($(PLATFORM),macos)
    # On macOS, ensure Homebrew tools are in PATH
    export PATH := $(HOMEBREW_PATH):$(PATH)
endif

# Define color output for better readability
ifeq ($(shell command -v tput 2> /dev/null),)
    RED :=
    GREEN :=
    YELLOW :=
    NC :=
else
    RED := $(shell tput setaf 1)
    GREEN := $(shell tput setaf 2)
    YELLOW := $(shell tput setaf 3)
    NC := $(shell tput sgr0)
endif

# Common messages
define msg_success
    @echo "$(GREEN)✓$(NC) $(1)"
endef

define msg_warning
    @echo "$(YELLOW)⚠$(NC) $(1)"
endef

define msg_error
    @echo "$(RED)✗$(NC) $(1)"
endef