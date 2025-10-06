# Mathematics in LaTeX

## Inline Math
```latex
The equation $E = mc^2$ is famous.
Use \( and \) for inline math: \( x^2 + y^2 = z^2 \)
```

## Display Math
```latex
\[
E = mc^2
\]

% Or use equation environment for numbering
\begin{equation}
E = mc^2
\end{equation}
```

## Common Math Symbols
```latex
% Greek letters
\alpha, \beta, \gamma, \delta, \epsilon
\Gamma, \Delta, \Theta, \Lambda, \Pi

% Operators
\pm, \mp, \times, \div, \cdot, \ast
\leq, \geq, \neq, \approx, \equiv
\in, \notin, \subset, \supset, \cup, \cap

% Arrows
\rightarrow, \leftarrow, \leftrightarrow
\Rightarrow, \Leftarrow, \Leftrightarrow
```

## Superscripts and Subscripts
```latex
$x^2$, $x^{2y}$, $x_i$, $x_{ij}$
$x^{y^z}$, $x_{y_z}$
```

## Fractions and Roots
```latex
$\frac{a}{b}$, $\dfrac{a}{b}$  % Display style
$\sqrt{x}$, $\sqrt[n]{x}$
```

## Summations and Integrals
```latex
$\sum_{i=1}^{n} x_i$
$\int_{a}^{b} f(x) dx$
$\int\limits_{a}^{b} f(x) dx$  % Limits above/below
```

## Matrices
```latex
\begin{pmatrix}
a & b \\
c & d
\end{pmatrix}

\begin{bmatrix}
1 & 2 \\
3 & 4
\end{bmatrix}
```

## Aligned Equations
```latex
\begin{align}
x &= a + b \\
y &= c + d \\
z &= e + f
\end{align}
```

## Cases
```latex
f(x) = \begin{cases}
x^2 & \text{if } x \geq 0 \\
-x^2 & \text{if } x < 0
\end{cases}
```
