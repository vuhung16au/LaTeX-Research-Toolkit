# Modular Documents and Structure

## Introduction
Breaking large documents into smaller files improves organization, compilation speed, and collaboration. LaTeX provides several commands for this purpose.

## \input Command

### Basic Usage
```latex
% main.tex
\documentclass{article}
\begin{document}

\input{introduction}
\input{methods}
\input{results}
\input{conclusion}

\end{document}
```

```latex
% introduction.tex
\section{Introduction}
This is the introduction text.
```

### Nested Input
```latex
% main.tex
\input{chapters/chapter1}

% chapters/chapter1.tex
\input{sections/section1-1}
\input{sections/section1-2}
```

### Relative Paths
```latex
% Works relative to main file location
\input{chapters/chapter1}
\input{../shared/common}
```

### When to Use \input
- Small sections or subsections
- Content that's always included
- Preamble components
- Repeated compilation is acceptable

## \include Command

### Basic Usage
```latex
% main.tex
\documentclass{article}
\begin{document}

\include{chapter1}
\include{chapter2}
\include{chapter3}

\end{document}
```

### Page Breaks
```latex
% \include automatically adds \clearpage before and after
\include{chapter1}  % Starts on new page
\include{chapter2}  % Starts on new page
```

### Selective Compilation
```latex
\documentclass{article}

% Only compile specified files
\includeonly{chapter1,chapter3}

\begin{document}
\include{chapter1}  % Compiled
\include{chapter2}  % Skipped but references preserved
\include{chapter3}  % Compiled
\end{document}
```

### When to Use \include
- Large chapters or major sections
- When selective compilation is needed
- Documents where page breaks between sections are acceptable
- Faster development with large documents

## \input vs \include

| Feature | \input | \include |
|---------|--------|----------|
| **Page breaks** | No | Yes (\clearpage) |
| **Nesting** | Allowed | Not allowed |
| **Selective compilation** | No | Yes (\includeonly) |
| **Auxiliary files** | No | Yes (.aux) |
| **Use case** | Small sections | Large chapters |

## subfiles Package

### Setup
```latex
% main.tex
\documentclass{article}
\usepackage{subfiles}

\begin{document}
\subfile{chapters/chapter1}
\subfile{chapters/chapter2}
\end{document}
```

```latex
% chapters/chapter1.tex
\documentclass[../main.tex]{subfiles}

\begin{document}
\section{Chapter 1}
Content of chapter 1.
\end{document}
```

### Advantages
```latex
% Can compile individual subfiles independently
pdflatex chapters/chapter1.tex  % Works!
pdflatex main.tex                % Also works!
```

### Shared Preamble
```latex
% main.tex
\documentclass{article}
\usepackage{subfiles}
\usepackage{amsmath}
% All packages defined here

% chapters/chapter1.tex inherits all settings
\documentclass[../main.tex]{subfiles}
\begin{document}
% Can use amsmath here
\end{document}
```

## Project Structure Examples

### Basic Research Paper
```
paper/
├── main.tex
├── sections/
│   ├── abstract.tex
│   ├── introduction.tex
│   ├── literature.tex
│   ├── methodology.tex
│   ├── results.tex
│   ├── discussion.tex
│   └── conclusion.tex
├── figures/
│   ├── figure1.png
│   └── figure2.png
└── references.bib
```

```latex
% main.tex
\documentclass{article}
\begin{document}

\title{Research Paper}
\author{Author Name}
\maketitle

\input{sections/abstract}
\input{sections/introduction}
\input{sections/literature}
\input{sections/methodology}
\input{sections/results}
\input{sections/discussion}
\input{sections/conclusion}

\bibliography{references}
\end{document}
```

### Thesis Structure
```
thesis/
├── main.tex
├── chapters/
│   ├── chapter1.tex
│   ├── chapter2.tex
│   ├── chapter3.tex
│   └── chapter4.tex
├── frontmatter/
│   ├── abstract.tex
│   ├── acknowledgments.tex
│   └── dedication.tex
├── backmatter/
│   ├── appendixA.tex
│   └── appendixB.tex
├── figures/
└── references.bib
```

```latex
% main.tex
\documentclass{report}
\begin{document}

\include{frontmatter/abstract}
\tableofcontents

\include{chapters/chapter1}
\include{chapters/chapter2}
\include{chapters/chapter3}
\include{chapters/chapter4}

\appendix
\include{backmatter/appendixA}
\include{backmatter/appendixB}

\bibliography{references}
\end{document}
```

### Book Structure
```
book/
├── main.tex
├── frontmatter/
│   ├── preface.tex
│   └── introduction.tex
├── part1/
│   ├── chapter1.tex
│   └── chapter2.tex
├── part2/
│   ├── chapter3.tex
│   └── chapter4.tex
└── backmatter/
    ├── glossary.tex
    └── index.tex
```

```latex
% main.tex
\documentclass{book}
\begin{document}

\frontmatter
\include{frontmatter/preface}

\mainmatter
\part{First Part}
\include{part1/chapter1}
\include{part1/chapter2}

\part{Second Part}
\include{part2/chapter3}
\include{part2/chapter4}

\backmatter
\include{backmatter/glossary}
\include{backmatter/index}

\end{document}
```

## Shared Preamble

### External Preamble File
```latex
% preamble.tex
\usepackage{amsmath,amsfonts,amssymb}
\usepackage{graphicx}
\usepackage{hyperref}

\newcommand{\mycommand}[1]{\textbf{#1}}
```

```latex
% main.tex
\documentclass{article}
\input{preamble}  % Load all settings

\begin{document}
Content here...
\end{document}
```

### Conditional Content
```latex
% main.tex
\newif\ifdraft
\drafttrue  % Set to \draftfalse for final version

\begin{document}
\ifdraft
  \input{draft-notes}
\fi

\input{main-content}
\end{document}
```

## Managing References

### Centralized Bibliography
```latex
% All files reference the same .bib file
\bibliography{../references}

% Or with biblatex
\addbibresource{../references.bib}
```

### Cross-References Between Files
```latex
% chapter1.tex
\section{Introduction}
\label{sec:intro}

% chapter2.tex
As discussed in Section~\ref{sec:intro}...
% Works when compiled through main.tex
```

## Build Automation

### Makefile
```makefile
# Makefile
MAIN = main
CHAPTERS = chapters/chapter1.tex chapters/chapter2.tex

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(CHAPTERS)
	pdflatex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg
```

### LaTeX Build Script
```bash
#!/bin/bash
# build.sh

pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex

# Clean auxiliary files
rm -f *.aux *.log *.out *.toc
```

## Best Practices

### File Organization
```latex
% Use clear, descriptive names
\input{sections/01-introduction}
\input{sections/02-literature-review}
\input{sections/03-methodology}

% Not:
\input{sec1}
\input{sec2}
```

### Consistent Structure
```latex
% Each chapter file structure:
% chapter1.tex
\chapter{Title}
\label{chap:chapter1}

\section{Section}
Content...

\section{Another Section}
More content...
```

### Version Control Friendly
```latex
% One sentence per line (easier git diffs)
This is a sentence.
This is another sentence.
This is a third sentence.

% Not:
This is a sentence. This is another sentence. This is a third sentence.
```

### Compilation Tips
```latex
% Use \includeonly during writing
\includeonly{chapters/chapter3}

% Comment out for final version
% \includeonly{chapters/chapter3}
```

## Common Pitfalls

### Avoid These
```latex
% Don't nest \include
% main.tex
\include{chapter1}  % OK

% chapter1.tex
\include{subsection}  % ERROR! Can't nest \include
```

### Do This Instead
```latex
% chapter1.tex
\input{subsection}  % OK - \input can be nested
```

### File Extensions
```latex
% Don't include .tex extension
\input{chapter1}     % Correct
\input{chapter1.tex} % Also works, but not recommended
```

## Advanced: Import Package
```latex
\usepackage{import}

% Import with path preserved
\import{chapters/}{chapter1}

% Subimport relative to current file
\subimport{sections/}{section1}
```

## Selective Compilation Example
```latex
% Compile only specific chapters during editing
\documentclass{report}

% Uncomment to compile only Chapter 2
% \includeonly{chapter2}

\begin{document}
\include{chapter1}
\include{chapter2}
\include{chapter3}
\end{document}
```

This preserves cross-references and page numbers while only compiling the specified chapter, significantly speeding up the edit-compile-view cycle.
