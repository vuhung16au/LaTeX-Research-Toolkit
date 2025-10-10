# Advanced Math with mathtools

## Introduction
The `mathtools` package extends and fixes `amsmath`, providing additional tools for mathematical typesetting. It automatically loads `amsmath`, so you only need to load `mathtools`.

## Basic Setup
```latex
\documentclass{article}
\usepackage{mathtools}  % Loads amsmath automatically

\begin{document}
Math content here...
\end{document}
```

## Enhanced Equation Numbering

### Numbered Equations Only When Referenced
```latex
% Use \eqref or \ref to reference
\begin{equation}
\label{eq:important}
E = mc^2
\end{equation}

% Only show number if referenced
\begin{equation}
\label{eq:unused}
a^2 + b^2 = c^2
\end{equation}

Reference: See equation~\eqref{eq:important}.
```

### Tag Control
```latex
% Custom tag
\begin{equation}
\tag{$\star$}
E = mc^2
\end{equation}

% Tag with text
\begin{equation}
\tag{Main Theorem}
\sum_{i=1}^{n} i = \frac{n(n+1)}{2}
\end{equation}
```

## Delimiters

### Automatic Sizing with \DeclarePairedDelimiter
```latex
% Define paired delimiters
\DeclarePairedDelimiter{\abs}{\lvert}{\rvert}
\DeclarePairedDelimiter{\norm}{\lVert}{\rVert}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\DeclarePairedDelimiter{\floor}{\lfloor}{\rfloor}

\begin{document}
% Manual size
$\abs{x}$
$\abs[\big]{x}$
$\abs[\Big]{x}$

% Automatic size
$\abs*{\frac{x}{y}}$

% Norms
$\norm{v}$
$\norm*{\frac{a}{b}}$

% Ceiling and floor
$\ceil{x}$
$\floor{y}$
\end{document}
```

### Common Paired Delimiters
```latex
\DeclarePairedDelimiter{\abs}{\lvert}{\rvert}           % |x|
\DeclarePairedDelimiter{\norm}{\lVert}{\rVert}          % ||x||
\DeclarePairedDelimiter{\set}{\{}{\}}                   % {x}
\DeclarePairedDelimiter{\angles}{\langle}{\rangle}      % ⟨x⟩
\DeclarePairedDelimiter{\paren}{(}{)}                   % (x)
\DeclarePairedDelimiter{\bracket}{[}{]}                 % [x]
```

## Matrix Enhancements

### Matrix with Custom Delimiters
```latex
% Standard matrices
\begin{pmatrix}   % (parentheses)
a & b \\ c & d
\end{pmatrix}

\begin{bmatrix}   % [brackets]
a & b \\ c & d
\end{bmatrix}

\begin{vmatrix}   % |determinant|
a & b \\ c & d
\end{vmatrix}

% Small matrices (inline)
$\begin{psmallmatrix}
a & b \\ c & d
\end{psmallmatrix}$
```

### Matrix with Special Features
```latex
% Matrix with specific column alignment
\begin{matrix*}[r]  % Right-aligned
-1 & 2 \\
300 & -400
\end{matrix*}

% Cases with alignment
\begin{dcases}
x & \text{if } x > 0 \\
0 & \text{if } x = 0 \\
-x & \text{if } x < 0
\end{dcases}
```

## Multi-line Equations

### Split with Better Spacing
```latex
\begin{equation}
\begin{split}
f(x) &= (x+1)^2 \\
     &= x^2 + 2x + 1 \\
     &= x^2 + 2x + 1
\end{split}
\end{equation}
```

### Multiline with Manual Breaks
```latex
\begin{multline}
f(x) = a_0 + a_1 x + a_2 x^2 + a_3 x^3 \\
+ a_4 x^4 + a_5 x^5 + a_6 x^6
\end{multline}
```

### Intertext for Commentary
```latex
\begin{align}
x &= a + b \\
\intertext{By substituting $y = c + d$, we get:}
x &= c + d + b
\end{align}
```

### Short Intertext
```latex
\begin{align}
x &= a + b \\
\shortintertext{and}
y &= c + d
\end{align}
```

## Enhanced Fractions

### Various Fraction Styles
```latex
% Standard fractions
\frac{a}{b}        % Normal size
\dfrac{a}{b}       % Display style (larger)
\tfrac{a}{b}       % Text style (smaller)

% Continued fractions
\cfrac{1}{
  1 + \cfrac{1}{
    2 + \cfrac{1}{3}
  }
}
```

### Binomial Coefficients
```latex
\binom{n}{k}       % Binomial coefficient
\dbinom{n}{k}      % Display style
\tbinom{n}{k}      % Text style
```

## Arrows and Extensible Symbols

### Over/Under Arrows
```latex
% Arrows
\xrightarrow{text above}
\xleftarrow{text above}
\xrightarrow[text below]{text above}

% Examples
\xrightarrow{n \to \infty}
\xrightarrow[\text{below}]{\text{above}}

% Long arrows
\xlongrightarrow{very long text}
```

### Under/Over Braces with mathtools
```latex
\underbracket{x + y + z}
\overbracket{a + b + c}

% Combined
\underbracket[0.5pt][2pt]{x + y}_{\text{sum}}
```

## Better Equation References

### Multiple References
```latex
\begin{align}
x &= a \label{eq:x} \\
y &= b \label{eq:y} \\
z &= c \label{eq:z}
\end{align}

% Reference multiple equations
See equations \eqref{eq:x}, \eqref{eq:y}, and \eqref{eq:z}.

% With cleveref package
See \cref{eq:x,eq:y,eq:z}.
```

### Show Keys
```latex
% For drafts - show labels
\mathtoolsset{showonlyrefs=true}
\mathtoolsset{showmanualtags=true}
```

## Cramped Styles

### Fix Spacing in Exponents
```latex
% Normal (might have poor spacing)
$e^{x^2}$

% Cramped (better spacing)
$e^{\cramped{x^2}}$

% In fractions
\frac{1}{\cramped{x^2 + y^2}}
```

## Math Operators

### Define Custom Operators
```latex
% Declare math operator
\DeclareMathOperator{\Tr}{Tr}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\span}{span}
\DeclareMathOperator*{\argmax}{arg\,max}  % * for limits

% Use in equations
$\Tr(A)$
$\rank(M)$
$\argmax_{x \in X} f(x)$
```

### Common Operators
```latex
\DeclareMathOperator{\sign}{sign}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\erf}{erf}
\DeclareMathOperator{\sgn}{sgn}
```

## Cases Environment Enhancements

### Standard Cases
```latex
f(x) = \begin{cases}
x^2 & \text{if } x \geq 0 \\
-x^2 & \text{if } x < 0
\end{cases}
```

### Display Cases (dcases)
```latex
% Larger fractions and operators
f(x) = \begin{dcases}
\frac{x^2}{2} & \text{if } x \geq 0 \\
-\frac{x^2}{2} & \text{if } x < 0
\end{dcases}
```

### Cases with Custom Alignment
```latex
% Right-aligned conditions
f(x) = \begin{rcases}
x + y \\
x - y
\end{rcases} \text{different values}
```

## Subequations

### Grouped Equation Numbers
```latex
\begin{subequations}
\label{eq:system}
\begin{align}
x + y &= 1 \label{eq:system-a} \\
x - y &= 0 \label{eq:system-b}
\end{align}
\end{subequations}

% References: (1a) and (1b)
See \eqref{eq:system-a} and \eqref{eq:system-b}.
See system \eqref{eq:system} overall.
```

## Centering and Alignment

### Centered Math with Specific Width
```latex
\begin{equation}
\mathmakebox[\linewidth][c]{
  \text{Very long equation centered in line width}
}
\end{equation}
```

### Split at Specific Width
```latex
\begin{multlined}[b][\linewidth]
f(x) = a_0 + a_1 x + a_2 x^2 \\
+ a_3 x^3 + a_4 x^4
\end{multlined}
```

## Complete Example
```latex
\documentclass{article}
\usepackage{mathtools}

% Define custom delimiters
\DeclarePairedDelimiter{\abs}{\lvert}{\rvert}
\DeclarePairedDelimiter{\norm}{\lVert}{\rVert}

% Define custom operators
\DeclareMathOperator{\Tr}{Tr}
\DeclareMathOperator*{\argmin}{arg\,min}

\begin{document}

\section{Mathematical Examples}

\subsection{Absolute Values and Norms}
The absolute value $\abs{x}$ and norm $\norm{v}$ scale automatically:
\[
\abs*{\frac{x}{y}} \quad \norm*{\frac{a}{b}}
\]

\subsection{System of Equations}
\begin{subequations}
\label{eq:system}
\begin{align}
x + y &= 5 \label{eq:sum} \\
x - y &= 1 \label{eq:diff}
\end{align}
\end{subequations}

From \eqref{eq:sum} and \eqref{eq:diff}, we solve system \eqref{eq:system}.

\subsection{Piecewise Functions}
\[
f(x) = \begin{dcases}
\frac{x^2}{2} & \text{if } x \geq 0 \\
-\frac{x^2}{2} & \text{if } x < 0
\end{dcases}
\]

\subsection{Matrix Operations}
The trace is defined as:
\[
\Tr(A) = \sum_{i=1}^{n} a_{ii}
\]

\end{document}
```

## Best Practices
1. **Use mathtools instead of amsmath** - It includes amsmath plus enhancements
2. **Define paired delimiters** - Use `\DeclarePairedDelimiter` for consistency
3. **Use starred versions** - Use `\abs*{}` for automatic sizing
4. **Custom operators** - Define domain-specific operators with `\DeclareMathOperator`
5. **Subequations for systems** - Group related equations with `subequations`
6. **Use dcases for display** - Better for fractions in piecewise functions
