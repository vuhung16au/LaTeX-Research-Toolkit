# Your First LaTeX Document

## Step-by-Step Guide

### 1. Create a new file
Save as `first-document.tex`

### 2. Basic template
```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage{amsmath}

\title{My First LaTeX Document}
\author{Your Name}
\date{\today}

\begin{document}

\maketitle

\section{Introduction}
This is my first LaTeX document. I'm learning how to write academic papers!

\section{Mathematics}
Here's a simple equation: $E = mc^2$

And a more complex one:
\begin{equation}
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
\end{equation}

\section{Conclusion}
LaTeX is great for academic writing!

\end{document}
```

### 3. Compile the document
```bash
pdflatex first-document.tex
```

### 4. View the result
Open `first-document.pdf` to see your formatted document.

## Next Steps
- Try adding more sections
- Experiment with different formatting
- Add figures and tables
- Learn about bibliography
