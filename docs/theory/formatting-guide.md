# LaTeX Formatting Guide

## Text Formatting
```latex
\textbf{Bold text}
\textit{Italic text}
\emph{Emphasized text}
\underline{Underlined text}
\texttt{Typewriter text}
\textsc{Small caps}
```

## Font Sizes
```latex
\tiny
\scriptsize
\footnotesize
\small
\normalsize
\large
\Large
\LARGE
\huge
\Huge
```

## Spacing
```latex
\\              % Line break
\newline        % Line break
\newpage        % Page break
\vspace{1cm}    % Vertical space
\hspace{2cm}    % Horizontal space
```

## Paragraphs
```latex
% Normal paragraph (indented)
This is a paragraph.

% No indentation
\noindent This paragraph has no indentation.

% Custom indentation
\setlength{\parindent}{0pt}  % No indentation
\setlength{\parindent}{2em}  % 2em indentation
```

## Lists
```latex
% Itemize
\begin{itemize}
    \item First item
    \item Second item
        \begin{itemize}
            \item Nested item
        \end{itemize}
\end{itemize}

% Enumerate
\begin{enumerate}
    \item Numbered item
    \item Another item
\end{enumerate}

% Description
\begin{description}
    \item[Term] Definition
    \item[Another] Another definition
\end{description}
```

## Custom Lists
```latex
\renewcommand{\labelitemi}{$\bullet$}
\renewcommand{\labelitemii}{$\circ$}
```
