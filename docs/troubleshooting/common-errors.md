# Common LaTeX Errors and Solutions

## Compilation Errors

### Missing $ Error
```
! Missing $ inserted.
```
**Solution:** Check for unmatched math delimiters
```latex
% Wrong
This is math: x^2 + y^2 = z^2

% Correct
This is math: $x^2 + y^2 = z^2$
```

### Undefined Control Sequence
```
! Undefined control sequence.
l.5 \usepackage{amsmath}
```
**Solution:** Check package name spelling
```latex
% Wrong
\usepackage{amsmaths}

% Correct
\usepackage{amsmath}
```

### Missing \begin{document}
```
! LaTeX Error: Missing \begin{document}.
```
**Solution:** Add \begin{document} after preamble
```latex
\documentclass{article}
\usepackage{amsmath}
% Add this line:
\begin{document}
```

## Figure and Table Errors

### Figure Not Found
```
! LaTeX Error: File `figure.png' not found.
```
**Solution:** Check file path and extension
```latex
% Make sure file exists
\includegraphics{figures/figure.png}
```

### Float Too Large
```
! LaTeX Error: Float too large for page.
```
**Solution:** Reduce figure size or use different placement
```latex
\includegraphics[width=0.8\textwidth]{figure.png}
% Or use [H] placement (requires float package)
```

## Bibliography Errors

### Undefined References
```
! LaTeX Warning: Citation `author2023' on page 1 undefined.
```
**Solution:** Run BibTeX
```bash
pdflatex document.tex
bibtex document
pdflatex document.tex
pdflatex document.tex
```

### Missing Bibliography File
```
! LaTeX Error: File `references.bib' not found.
```
**Solution:** Create bibliography file or check path
```latex
\bibliography{references}  % Make sure references.bib exists
```

## Math Errors

### Missing Math Mode
```
! Missing $ inserted.
```
**Solution:** Use proper math delimiters
```latex
% Wrong
x^2

% Correct
$x^2$
```

### Undefined Math Symbols
```
! Undefined control sequence \alpha
```
**Solution:** Load math packages
```latex
\usepackage{amsmath}
\usepackage{amsfonts}
```

## Common Fixes

### Clear Auxiliary Files
```bash
# Remove all auxiliary files
rm *.aux *.log *.out *.toc *.bbl *.blg
```

### Force Compilation
```bash
# Force compilation ignoring errors
pdflatex -interaction=nonstopmode document.tex
```

### Check Encoding
```latex
% Add encoding package
\usepackage[utf8]{inputenc}
```
