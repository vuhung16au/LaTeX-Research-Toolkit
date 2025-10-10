# Theorems and Proofs in LaTeX

## Basic Setup
```latex
\documentclass{article}
\usepackage{amsmath,amsthm,amssymb}

\begin{document}
\begin{theorem}
This is a theorem.
\end{theorem}

\begin{proof}
This is the proof.
\end{proof}
\end{document}
```

## Defining Theorem Environments
```latex
% In preamble
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{proposition}{Proposition}
\newtheorem{corollary}{Corollary}
\newtheorem{definition}{Definition}
\newtheorem{example}{Example}
\newtheorem{remark}{Remark}
```

## Numbered Theorems
```latex
% Independent numbering
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}

% Results in: Theorem 1, Theorem 2, Lemma 1, Lemma 2

% Shared numbering
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}[theorem]{Lemma}

% Results in: Theorem 1, Lemma 2, Theorem 3
```

## Section-Level Numbering
```latex
% Number within sections
\newtheorem{theorem}{Theorem}[section]

% Results in: Theorem 1.1, Theorem 1.2, Theorem 2.1
```

## Theorem Styles
```latex
% Plain style (default - italicized text)
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}

% Definition style (upright text)
\theoremstyle{definition}
\newtheorem{definition}{Definition}
\newtheorem{example}{Example}

% Remark style (smaller, upright text)
\theoremstyle{remark}
\newtheorem{remark}{Remark}
\newtheorem{note}{Note}
```

## Using Theorems
```latex
\begin{theorem}
Let $f$ be a continuous function on $[a,b]$. Then $f$ is integrable.
\end{theorem}

\begin{theorem}[Pythagorean Theorem]
In a right triangle with sides $a$, $b$ and hypotenuse $c$:
\[
a^2 + b^2 = c^2
\]
\end{theorem}

\begin{theorem}[Fermat's Last Theorem, 1995]
No three positive integers $a$, $b$, and $c$ satisfy $a^n + b^n = c^n$ for any integer $n > 2$.
\end{theorem}
```

## Proofs
```latex
% Basic proof
\begin{proof}
Let $x$ be an arbitrary element. Then...
Therefore, the theorem holds.
\end{proof}

% Proof with custom ending
\begin{proof}
The proof follows from the definition.
\qedhere
\end{proof}

% Proof of named theorem
\begin{proof}[Proof of Theorem 1]
We proceed by induction...
\end{proof}
```

## Custom QED Symbol
```latex
% Change QED symbol
\renewcommand{\qedsymbol}{$\blacksquare$}
\renewcommand{\qedsymbol}{Q.E.D.}
\renewcommand{\qedsymbol}{$\square$}
```

## Referencing Theorems
```latex
\begin{theorem}
\label{thm:main}
This is the main theorem.
\end{theorem}

Later in the document:
As shown in Theorem~\ref{thm:main}, we have...
```

## Complete Example
```latex
\documentclass{article}
\usepackage{amsmath,amsthm,amssymb}

% Theorem-like environments
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}

% Definition-like environments
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}

% Remark-like environments
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}

\begin{document}

\section{Introduction}

\begin{definition}
A \emph{prime number} is a natural number greater than 1 that has no positive divisors other than 1 and itself.
\end{definition}

\begin{lemma}
\label{lem:helper}
Every integer greater than 1 is divisible by a prime number.
\end{lemma}

\begin{proof}
We proceed by strong induction on $n$...
\end{proof}

\begin{theorem}[Fundamental Theorem of Arithmetic]
\label{thm:fundamental}
Every integer greater than 1 can be represented uniquely as a product of prime numbers, up to the order of the factors.
\end{theorem}

\begin{proof}
The proof follows from Lemma~\ref{lem:helper}...
\end{proof}

\begin{corollary}
There are infinitely many prime numbers.
\end{corollary}

\begin{remark}
This result was known to Euclid around 300 BCE.
\end{remark}

\end{document}
```

## Advanced Customization
```latex
% Custom theorem style
\newtheoremstyle{mystyle}
  {3pt}                % Space above
  {3pt}                % Space below
  {\itshape}           % Body font
  {}                   % Indent amount
  {\bfseries}          % Theorem head font
  {.}                  % Punctuation after theorem head
  {.5em}               % Space after theorem head
  {}                   % Theorem head spec

\theoremstyle{mystyle}
\newtheorem{mytheorem}{My Theorem}
```

## Unnumbered Theorems
```latex
% Define unnumbered version
\newtheorem*{theorem*}{Theorem}

\begin{theorem*}
This theorem has no number.
\end{theorem*}
```

## Theorem Boxes (with tcolorbox)
```latex
\usepackage{tcolorbox}
\tcbuselibrary{theorems}

\newtcbtheorem{mytheo}{Theorem}%
{colback=blue!5,colframe=blue!35!black,fonttitle=\bfseries}{th}

\begin{mytheo}{Pythagorean Theorem}{pythag}
In a right triangle: $a^2 + b^2 = c^2$.
\end{mytheo}
```

## Proof Techniques
```latex
% Direct proof
\begin{proof}
Assume $P$. Then by definition... Therefore $Q$.
\end{proof}

% Proof by contradiction
\begin{proof}[Proof by Contradiction]
Assume, for the sake of contradiction, that... This contradicts... Therefore, our assumption must be false.
\end{proof}

% Proof by induction
\begin{proof}
We proceed by induction on $n$.

\textbf{Base case:} For $n=1$, we have...

\textbf{Inductive step:} Assume the statement holds for $n=k$. We show it holds for $n=k+1$...

Therefore, by induction, the statement holds for all $n \geq 1$.
\end{proof}

% Proof by cases
\begin{proof}
We consider two cases:

\textbf{Case 1:} If $x > 0$, then...

\textbf{Case 2:} If $x \leq 0$, then...

In both cases, the result holds.
\end{proof}
```

## Special Symbols
```latex
% Mathematical symbols commonly used in proofs
\forall    % For all
\exists    % There exists
\nexists   % There does not exist
\implies   % Implies
\iff       % If and only if
\therefore % Therefore
\because   % Because
\qed       % Q.E.D.
```

## Assumptions and Claims
```latex
% Using description for assumptions
\begin{description}
\item[Assumption 1:] $f$ is continuous
\item[Assumption 2:] $g$ is differentiable
\end{description}

% Inline claims in proofs
\begin{proof}
\textbf{Claim:} $x^2 \geq 0$ for all real $x$.

\emph{Proof of claim:} If $x \geq 0$, then... If $x < 0$, then...

Using this claim, we conclude...
\end{proof}
```

## Best Practices
1. **State theorems clearly** - Use precise mathematical language
2. **Provide context** - Include theorem names and attributions
3. **Label important results** - Use `\label` for cross-references
4. **Structure proofs logically** - Use clear steps and justifications
5. **End proofs explicitly** - Use `\qed` or `\qedhere`
6. **Use consistent numbering** - Share counters for related environments
