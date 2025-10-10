# Indexing in LaTeX

## Introduction
LaTeX provides tools to create indices (alphabetical lists of terms with page numbers) using the `makeidx` package and external programs like `makeindex` or `xindy`.

## Basic Setup with makeindex

### Document Setup
```latex
\documentclass{article}
\usepackage{makeidx}

\makeindex  % Enable indexing

\begin{document}

This is about LaTeX\index{LaTeX}.
We discuss typography\index{typography}.

\printindex  % Print the index
\end{document}
```

### Compilation Process
```bash
pdflatex document.tex
makeindex document.idx
pdflatex document.tex
```

## Index Entries

### Basic Entry
```latex
LaTeX\index{LaTeX} is a document preparation system.
```

### Multiple Words
```latex
Document preparation\index{document preparation} is important.
```

### Case-Sensitive Sorting
```latex
\index{LaTeX}   % Sorted under "L"
\index{latex}   % Sorted under "l"
```

### Special Characters
```latex
% Use @ to separate sort key from display
\index{LaTeX@\LaTeX}
\index{alpha@$\alpha$}  % Greek letters
```

## Subentries

### Two-Level Index
```latex
\index{LaTeX!packages}
\index{LaTeX!commands}
\index{Mathematics!equations}
\index{Mathematics!symbols}
```

### Three-Level Index
```latex
\index{LaTeX!packages!graphics}
\index{LaTeX!packages!math}
```

## Formatting Index Entries

### Bold and Italic
```latex
% Bold page numbers
\index{important term|textbf}

% Italic page numbers  
\index{emphasized term|textit}

% Custom formatting
\index{special term|textsl}
```

### Page Ranges
```latex
% Start of range
\index{topic|(}
...content spanning multiple pages...
% End of range
\index{topic|)}

% Results in: topic, 5-8
```

### Cross-References
```latex
% "See" reference
\index{LaTeX|see{TeX}}

% "See also" reference
\index{typography|seealso{fonts}}
```

## Advanced Sorting

### Custom Sort Order
```latex
% Sort as "alpha" but display as α
\index{alpha@$\alpha$}

% Sort numerically
\index{2D graphics@2D graphics}
\index{3D graphics@3D graphics}

% Ignore formatting in sorting
\index{Important@\textbf{Important}}
```

### Symbols and Numbers
```latex
% Sort symbols at beginning
\index{symbols!@$+$ (plus)}
\index{symbols!@$-$ (minus)}

% Sort numbers
\index{0@zero}
\index{1@one}
```

## Index Styles

### Customize Index Appearance
```latex
% Create custom .ist file (mystyle.ist)
% headings_flag 1
% heading_prefix "\\textbf{"
% heading_suffix "}\\nopagebreak\n"
% delim_0 ", "
% delim_1 ", "
% delim_2 ", "

% Use in compilation
% makeindex -s mystyle.ist document.idx
```

### Index with imakeidx
```latex
\documentclass{article}
\usepackage{imakeidx}

\makeindex[columns=2, title=Index, intoc]

\begin{document}

Content with \index{entries}...

\printindex
\end{document}
```

## Multiple Indices

### Setup
```latex
\documentclass{article}
\usepackage{imakeidx}

\makeindex[name=persons,title=Index of Persons]
\makeindex[name=places,title=Index of Places]

\begin{document}

Albert Einstein\index[persons]{Einstein, Albert}
lived in Princeton\index[places]{Princeton}.

\printindex[persons]
\printindex[places]
\end{document}
```

## xindy for Advanced Indexing

### Basic Usage
```latex
\documentclass{article}
\usepackage[xindy]{imakeidx}

\makeindex

\begin{document}
Content with \index{entries}...
\printindex
\end{document}
```

### Compilation with xindy
```bash
pdflatex document.tex
texindy document.idx
pdflatex document.tex
```

### Unicode Support
```latex
% xindy supports Unicode naturally
\index{Müller}
\index{Österreich}
\index{中文}
```

### Language-Specific Sorting
```bash
# Sort for German
texindy -L german document.idx

# Sort for French
texindy -L french document.idx
```

## Practical Examples

### Scientific Document
```latex
\documentclass{article}
\usepackage{makeidx}
\makeindex

\begin{document}

\section{Introduction}
This discusses quantum mechanics\index{quantum mechanics}
and wave functions\index{wave function}.

\section{Theory}
The Schrödinger equation\index{Schrödinger equation}
describes quantum systems\index{quantum mechanics!systems}.

Operators\index{operators} are essential in
quantum mechanics\index{quantum mechanics!operators}.

\printindex
\end{document}
```

### Book with Multiple Indices
```latex
\documentclass{book}
\usepackage{imakeidx}

\makeindex[name=general,title=General Index]
\makeindex[name=authors,title=Author Index]
\makeindex[name=subjects,title=Subject Index]

\begin{document}

Einstein\index[authors]{Einstein, Albert}
developed relativity\index[subjects]{relativity}
in 1905\index[general]{1905}.

\printindex[authors]
\printindex[subjects]
\printindex[general]
\end{document}
```

## Automating Index Creation

### Using indexing Commands
```latex
% Define custom indexing command
\newcommand{\term}[1]{\emph{#1}\index{#1}}

% Use in document
We discuss \term{LaTeX} and \term{typography}.
```

### Index Environment
```latex
% Multiple entries at once
This paragraph discusses several topics.
\index{topic one}
\index{topic two}
\index{topic three}
```

## Index Customization

### Change Index Name
```latex
\renewcommand{\indexname}{Table of Terms}
```

### Custom Index Style
```latex
\documentclass{article}
\usepackage{imakeidx}

\indexsetup{
  level=\section*,
  toclevel=section,
  noclearpage
}

\makeindex
\begin{document}
...
\printindex
\end{document}
```

### Two-Column Index
```latex
\documentclass{article}
\usepackage{makeidx}
\usepackage{multicol}

\makeindex

\begin{document}
...

% Two-column index
\begin{multicols}{2}
\printindex
\end{multicols}
\end{document}
```

## Common Index Patterns

### Person Names
```latex
% Last name, First name format
\index{Einstein, Albert}
\index{Curie, Marie}
\index{Newton, Isaac}
```

### Concepts with Subcategories
```latex
\index{Programming!languages}
\index{Programming!paradigms}
\index{Programming!tools}
```

### Terms with Emphasis
```latex
\index{algorithm|textbf}     % Bold page number
\index{data structure|emph}  % Emphasized
```

## Glossary vs Index

| Feature | Index | Glossary |
|---------|-------|----------|
| **Purpose** | Find page references | Define terms |
| **Content** | Page numbers | Definitions |
| **Package** | `makeidx` | `glossaries` |
| **Use case** | Navigation | Reference |

## Complete Example
```latex
\documentclass{article}
\usepackage{makeidx}
\makeindex

\begin{document}

\title{Introduction to LaTeX}
\maketitle

\section{Introduction}
\LaTeX\index{LaTeX@\LaTeX} is a document preparation 
system\index{document preparation}. It was created by 
Leslie Lamport\index{Lamport, Leslie}.

\section{Mathematics}
Mathematical typesetting\index{typesetting!mathematical}
is a strength of \LaTeX\index{LaTeX@\LaTeX!mathematics}.

Equations\index{equations} can be displayed or 
inline\index{equations!inline}.

\subsection{Symbols}
Greek letters\index{Greek letters} like 
$\alpha$\index{alpha@$\alpha$} are easy to typeset.

\section{Graphics}
Including graphics\index{graphics} is possible with 
the \texttt{graphicx} package\index{packages!graphicx}.

\printindex

\end{document}
```

## Compilation Script
```bash
#!/bin/bash
# build-with-index.sh

pdflatex document.tex
makeindex document.idx
pdflatex document.tex
pdflatex document.tex

# Or with xindy for better Unicode support:
# texindy document.idx
```

## Best Practices
1. **Index key terms** - Focus on important concepts
2. **Be consistent** - Use consistent terminology
3. **Use subentries** - Organize related topics hierarchically
4. **Cross-reference** - Use "see" and "see also" appropriately
5. **Check sorting** - Verify alphabetical order is correct
6. **Custom sort keys** - Use `@` for special characters
7. **Page ranges** - Use `|(` and `|)` for multi-page topics
8. **Multiple indices** - Separate different types of entries
9. **Automation** - Create custom commands for frequent terms
10. **Review carefully** - Proofread the generated index

## Troubleshooting
```bash
# If makeindex fails, check:
# 1. .idx file exists
# 2. Proper compilation order
# 3. No special characters causing issues

# View makeindex log
cat document.ilg

# Force regeneration
rm document.ind document.ilg
makeindex document.idx
```
