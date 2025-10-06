# Cross-References in LaTeX

## Basic References
```latex
\section{Introduction}
\label{sec:intro}

As discussed in Section~\ref{sec:intro}...

\subsection{Details}
\label{subsec:details}

See Subsection~\ref{subsec:details} for more information.
```

## Figure and Table References
```latex
\begin{figure}[h]
\centering
\includegraphics{image.png}
\caption{Example figure}
\label{fig:example}
\end{figure}

As shown in Figure~\ref{fig:example}...

\begin{table}[h]
\centering
\begin{tabular}{cc}
A & B \\
\end{tabular}
\caption{Example table}
\label{tab:example}
\end{table}

See Table~\ref{tab:example} for details.
```

## Equation References
```latex
\begin{equation}
E = mc^2
\label{eq:einstein}
\end{equation}

As shown in Equation~\ref{eq:einstein}...
```

## Page References
```latex
See page~\pageref{sec:intro} for the introduction.
```

## Custom Labels
```latex
\label{my:custom:label}
\ref{my:custom:label}
```

## Multiple References
```latex
See Sections~\ref{sec:intro} and~\ref{sec:conclusion}...
```

## Hyperlinks (with hyperref package)
```latex
\usepackage{hyperref}

% Automatic hyperlinks
\autoref{fig:example}  % Figure 1
\autoref{tab:example}  % Table 1
\autoref{eq:einstein}  % Equation (1)

% Custom hyperlink text
\hyperref[fig:example]{this figure}
```

## Reference Ranges
```latex
\label{sec:start}
% ... content ...
\label{sec:end}

See Sections~\ref{sec:start}--\ref{sec:end}...
```

## Cleveref Package
```latex
\usepackage{cleveref}

\cref{fig:example}      % "fig. 1"
\Cref{fig:example}      % "Figure 1"
\crefrange{sec:start}{sec:end}  % "sections 1 to 3"
```
