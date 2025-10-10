# Homework Assignment Example - Video Reference Guide

This document maps the LaTeX techniques from the YouTube video "How to write your homework using LaTeX" to the code examples in `homework-assignment.tex`.

## Video Timeline and Code Examples

### 1. Math Mode Basics [03:05]

**Video Concept:** Using `\[ ... \]` for display equations and mathematical symbols

**Code in homework-assignment.tex (Lines 35-37):**
```latex
\[
\int_{a}^{b} f(x) \, dx = \lim_{||\Delta x|| \to 0} \sum_{k=1}^{n} f(x_k^*) \Delta x_k
\]
```

**Key Commands:**
- `\int` - integral symbol
- `\sum` - summation symbol  
- `\lim` - limit operator
- `_` - subscript (e.g., `_{a}` for lower limit)
- `^` - superscript (e.g., `^{b}` for upper limit)
- `\to` - arrow symbol (→)
- `\Delta` - Greek letter Delta

### 2. Equation Alignment [12:50]

**Video Concept:** Using the `align` environment with `&` before equals signs for vertical alignment

**Code in homework-assignment.tex (Lines 41-47):**
```latex
\begin{align}
  f'(x) &= \lim_{h \to 0} \frac{(x+h)^2 - x^2}{h} \label{eq:step1} \\
        &= \lim_{h \to 0} \frac{(x^2 + 2xh + h^2) - x^2}{h} \label{eq:step2} \\
        &= \lim_{h \to 0} \frac{2xh + h^2}{h} \label{eq:step3} \\
        &= \lim_{h \to 0} (2x + h) \label{eq:step4} \\
        &= 2x \label{eq:final}
\end{align}
```

**Key Points:**
- The `&` (ampersand) goes **before** the equals sign to align all equations
- `\\` ends each line (except the last)
- Each line is automatically numbered
- `\label{}` allows referencing specific equations

### 3. Problem Lists [06:03, 13:53]

**Video Concept:** Using `enumerate` environment with custom labels; nested lists use letters

**Code in homework-assignment.tex (Lines 21-23, 32-87):**
```latex
% In preamble:
\setlist[enumerate,1]{label=Problem~\arabic*:}
\setlist[enumerate,2]{label=\alph*)}

% In document:
\begin{enumerate}
  \item First problem...
  \item Second problem...
  \begin{enumerate}
    \item Sub-part a
    \item Sub-part b
  \end{enumerate}
\end{enumerate}
```

**Key Points:**
- First level uses "Problem 1:", "Problem 2:", etc.
- Second level automatically uses "a)", "b)", "c)"
- Change "Problem" to "Question" by modifying the `\setlist` command

### 4. Tables with [h] Positioning [07:40]

**Video Concept:** Using `[h]` parameter to place tables "here" instead of floating

**Code in homework-assignment.tex (Lines 52-66):**
```latex
\begin{table}[h]
  \centering
  \begin{tabular}{|c|c|}
    \hline
    $x$ & $f(x) = x^2$ \\
    \hline
    0 & 0 \\
    1 & 1 \\
    \hline
  \end{tabular}
  \caption{Values of $f(x) = x^2$}
  \label{tab:squares}
\end{table}
```

**Key Points:**
- `[h]` means "try to place **h**ere"
- Without `[h]`, LaTeX may move the table to top/bottom of page
- `\centering` centers the table
- `\caption` provides the table title
- `\label` allows referencing the table

### 5. Cross-Referencing [09:59]

**Video Concept:** Using `\label` and `\ref` for automatic numbering

**Code in homework-assignment.tex (Lines 48, 65-67):**
```latex
% Label an equation:
&= 2x \label{eq:final}

% Reference it later:
We can reference equation \ref{eq:final} for the final result.

% Label a table:
\label{tab:squares}

% Reference it:
We can reference Table~\ref{tab:squares} using the \ref command.
```

**Key Points:**
- `\label{name}` marks an equation, table, or figure
- `\ref{name}` inserts the number automatically
- If you add/remove items, all numbers update automatically
- Use `~` (non-breaking space) between "Table" and the reference

### 6. Including Images [11:15]

**Video Concept:** Using `\includegraphics` within a `figure` environment

**Code in homework-assignment.tex (Lines 79-84):**
```latex
\begin{figure}[h]
  \centering
  \fbox{\rule{0pt}{1.2in}\rule{1.8in}{0pt}}
  \caption{Graph of the parabola $y = x^2$ (placeholder figure).}
  \label{fig:parabola}
\end{figure}
```

**To use a real image:**
```latex
\begin{figure}[h]
  \centering
  \includegraphics[width=0.5\textwidth]{parabola.png}
  \caption{Graph of the parabola $y = x^2$.}
  \label{fig:parabola}
\end{figure}
```

**Key Points:**
- `[h]` parameter controls positioning (same as tables)
- `width=0.5\textwidth` makes the image 50% of page width
- `\caption` provides the figure title with automatic numbering
- Replace the placeholder with `\includegraphics` for real images

### 7. Preamble and Formatting [02:05]

**Video Concept:** Using the preamble to set document-wide settings

**Code in homework-assignment.tex (Lines 9-18):**
```latex
\documentclass[11pt]{article}
\usepackage[a4paper,margin=1in]{geometry}
\usepackage{amsmath,amssymb}
\usepackage{graphicx}
\usepackage{enumitem}

\title{Homework \#1}
\author{Your Name \\ Course \& Section \\ Date}
\date{}
```

**Key Points:**
- `[11pt]` sets font size
- `geometry` package controls page margins
- `amsmath` package enables advanced math features
- `enumitem` allows customizing list labels
- Modify title, author, etc. in the preamble

## Additional Resources

- **Original Video:** "How to write your homework using LaTeX" - https://www.youtube.com/watch?v=cI0gGcYOkiI
- **Overleaf Documentation:** https://www.overleaf.com/learn
- **LaTeX Math Symbols:** https://www.overleaf.com/learn/latex/List_of_Greek_letters_and_math_symbols

## Tips from the Video [15:28]

1. **Use Overleaf's Visual Editor** for simple text entry, then click elements to see the code
2. **Use the History feature** (or git) to track changes and revert mistakes
3. **Use the Table Wizard** in Overleaf to generate table code
4. **Start with a template** and modify it for your needs
5. **Practice regularly** - LaTeX becomes easier with use
