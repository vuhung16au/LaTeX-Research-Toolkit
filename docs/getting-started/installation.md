# LaTeX Installation Guide

## Quick Installation

### Windows
1. Download MiKTeX or TeX Live from official websites
2. Run installer and follow setup wizard
3. Verify installation: `pdflatex --version`

### macOS
```bash
# Using Homebrew
brew install --cask mactex

# Or download MacTeX from tug.org
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install texlive-full
```

## Recommended Editors
- **TeXstudio** (Cross-platform, beginner-friendly)
- **Overleaf** (Online, collaborative)
- **VS Code** with LaTeX Workshop extension
- **Vim/Neovim** with vimtex plugin

## Verification
Create a test file `test.tex`:
```latex
\documentclass{article}
\begin{document}
Hello, LaTeX!
\end{document}
```

Compile with: `pdflatex test.tex`
