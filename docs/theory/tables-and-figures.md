# Tables and Figures in LaTeX

## Basic Tables
```latex
\begin{table}[h]
\centering
\begin{tabular}{|l|c|r|}
\hline
Left & Center & Right \\
\hline
A & B & C \\
1 & 2 & 3 \\
\hline
\end{tabular}
\caption{My first table}
\label{tab:first}
\end{table}
```

## Table Formatting
```latex
% Column alignment
l % left
c % center  
r % right
p{3cm} % paragraph of width 3cm

% Lines
| % vertical line
\hline % horizontal line
\cline{1-2} % partial horizontal line
```

## Advanced Tables
```latex
\begin{tabular}{@{}l@{\hspace{2em}}c@{}}
\toprule
Name & Score \\
\midrule
Alice & 95 \\
Bob & 87 \\
\bottomrule
\end{tabular}
```

## Figures
```latex
\begin{figure}[h]
\centering
\includegraphics[width=0.8\textwidth]{image.png}
\caption{Description of the figure}
\label{fig:example}
\end{figure}
```

## Figure Options
```latex
\includegraphics[width=5cm]{image.png}
\includegraphics[height=3cm]{image.png}
\includegraphics[scale=0.5]{image.png}
\includegraphics[angle=45]{image.png}
```

## Multiple Figures
```latex
\begin{figure}[h]
\centering
\begin{subfigure}{0.4\textwidth}
    \includegraphics[width=\textwidth]{fig1.png}
    \caption{First subfigure}
\end{subfigure}
\begin{subfigure}{0.4\textwidth}
    \includegraphics[width=\textwidth]{fig2.png}
    \caption{Second subfigure}
\end{subfigure}
\caption{Two related figures}
\end{figure}
```

## References
```latex
As shown in Table~\ref{tab:first} and Figure~\ref{fig:example}...
```

## Float Placement
```latex
[h] % here
[t] % top
[b] % bottom
[p] % page of floats
[H] % HERE (requires float package)
```
