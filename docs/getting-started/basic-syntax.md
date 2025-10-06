# Basic LaTeX Syntax

## Document Structure
```latex
\documentclass{article}  % Document class
\usepackage{amsmath}     % Packages
\title{My Document}      % Title
\author{Your Name}       % Author
\date{\today}           % Date

\begin{document}        % Document begins
\maketitle              % Create title page
\section{Introduction}   % Section
This is my first paragraph.

\subsection{Details}     % Subsection
More content here.
\end{document}          % Document ends
```

## Common Commands
- `\textbf{bold text}` - Bold
- `\textit{italic text}` - Italic
- `\emph{emphasized}` - Emphasis
- `\\` - Line break
- `\newpage` - Page break

## Lists
```latex
\begin{itemize}
    \item First item
    \item Second item
\end{itemize}

\begin{enumerate}
    \item Numbered item
    \item Another item
\end{enumerate}
```

## Math Mode
- Inline math: `$x^2 + y^2 = z^2$`
- Display math: `\[E = mc^2\]`
- Numbered equation: `\begin{equation}...\end{equation}`
