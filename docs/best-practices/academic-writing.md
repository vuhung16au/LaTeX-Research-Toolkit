# Academic Writing Best Practices

## Document Organization
```latex
% Standard academic paper structure
\documentclass{article}
\usepackage{amsmath,amsfonts,amssymb}
\usepackage{graphicx}
\usepackage{hyperref}

\title{Your Paper Title}
\author{Your Name}
\date{\today}

\begin{document}
\maketitle

\begin{abstract}
Your abstract here...
\end{abstract}

\section{Introduction}
\section{Literature Review}
\section{Methodology}
\section{Results}
\section{Discussion}
\section{Conclusion}

\bibliographystyle{plain}
\bibliography{references}
\end{document}
```

## Writing Style Guidelines

### Use Consistent Terminology
- Define technical terms on first use
- Use consistent notation throughout
- Avoid unnecessary jargon

### Clear Structure
```latex
% Use clear section headings
\section{Introduction}
\subsection{Problem Statement}
\subsection{Research Questions}
\subsection{Contributions}
```

### Mathematical Writing
```latex
% Number important equations
\begin{equation}
\label{eq:main}
f(x) = \int_{-\infty}^{\infty} g(t) e^{-ixt} dt
\end{equation}

% Reference equations properly
As shown in Equation~\ref{eq:main}...
```

## Citation Best Practices
```latex
% Use appropriate citation style
According to Smith et al.~\cite{smith2023}...
Recent studies~\cite{jones2022,doe2023} have shown...

% Avoid over-citing
% Good: "Previous work~\cite{smith2023} has shown..."
% Bad: "Smith~\cite{smith2023} showed that Smith~\cite{smith2023} found..."
```

## Figure and Table Guidelines
```latex
% Always include captions
\begin{figure}[h]
\centering
\includegraphics[width=0.8\textwidth]{figure.png}
\caption{Clear description of what the figure shows.}
\label{fig:main}
\end{figure}

% Reference figures in text
As shown in Figure~\ref{fig:main}...
```

## Common Mistakes to Avoid
1. **Inconsistent formatting** - Use consistent spacing, fonts
2. **Poor figure placement** - Don't leave figures floating
3. **Missing references** - Always cite your sources
4. **Overly complex sentences** - Keep it clear and concise
5. **Inconsistent notation** - Use the same symbols throughout
