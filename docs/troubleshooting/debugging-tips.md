# LaTeX Debugging Tips

## Systematic Debugging Approach

### 1. Read Error Messages Carefully
```
! LaTeX Error: Something's wrong--perhaps a missing \item.
l.15 \item
```
- Line number (l.15) shows where the error occurred
- Error message gives context about what's wrong

### 2. Use Minimal Working Examples (MWE)
```latex
% Start with minimal document
\documentclass{article}
\begin{document}
Hello World!
\end{document}

% Add complexity gradually
\documentclass{article}
\usepackage{amsmath}
\begin{document}
Hello World!
\end{document}
```

### 3. Comment Out Problematic Sections
```latex
\documentclass{article}
\begin{document}
% \section{Problem Section}
% This section causes errors
% \begin{itemize}
%     \item Item without \begin{itemize}
% \end{itemize}

\section{Working Section}
This section works fine.
\end{document}
```

## Debugging Tools

### Verbose Output
```bash
# Get detailed compilation output
pdflatex -interaction=nonstopmode document.tex
```

### Check Log Files
```bash
# Look at .log file for detailed error information
cat document.log | grep -A 5 -B 5 "Error"
```

### Use Draft Mode
```latex
\documentclass[draft]{article}
% This skips figure loading and shows boxes instead
```

## Common Debugging Techniques

### 1. Add Debug Output
```latex
% Add temporary text to see where compilation stops
\section{Debug Section}
This is working...
\typeout{Reached point A}
% More content
\typeout{Reached point B}
```

### 2. Check Package Dependencies
```latex
% Load packages one by one to identify conflicts
\usepackage{amsmath}
% \usepackage{conflicting-package}
```

### 3. Validate Bibliography
```latex
% Check .bib file syntax
% Use online BibTeX validators
% Ensure all required fields are present
```

### 4. Test Math Separately
```latex
% Test complex math in separate document
\documentclass{article}
\usepackage{amsmath}
\begin{document}
\[
% Your complex equation here
\]
\end{document}
```

## Advanced Debugging

### Use \show Commands
```latex
\show\section
\showthe\section
```

### Check Counter Values
```latex
% Display current counter values
\typeout{Section counter: \thesection}
\typeout{Page number: \thepage}
```

### Package Conflicts
```latex
% Load packages in different order
% Comment out packages to identify conflicts
```

## Prevention Tips
1. **Compile frequently** - Don't wait until the end
2. **Use version control** - Commit working versions
3. **Keep backups** - Save working versions
4. **Test incrementally** - Add features one at a time
5. **Read documentation** - Check package documentation for conflicts
