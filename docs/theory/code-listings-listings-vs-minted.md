# Code Listings: listings vs minted

## Overview
Both `listings` and `minted` packages allow you to include source code in LaTeX documents. The main difference is that `minted` uses external syntax highlighting (Pygments), while `listings` is pure LaTeX.

## listings Package

### Basic Setup
```latex
\documentclass{article}
\usepackage{listings}
\usepackage{xcolor}

\begin{document}
\begin{lstlisting}[language=Python]
def hello():
    print("Hello, World!")
\end{lstlisting}
\end{document}
```

### Inline Code
```latex
The function \lstinline{print()} outputs text.
The variable \lstinline[language=Python]{x = 42} is an integer.
```

### Code from External File
```latex
\lstinputlisting[language=Python]{example.py}
\lstinputlisting[language=Python,firstline=5,lastline=15]{example.py}
```

### Styling listings
```latex
\lstset{
  language=Python,
  basicstyle=\ttfamily\small,
  keywordstyle=\color{blue}\bfseries,
  commentstyle=\color{gray}\itshape,
  stringstyle=\color{red},
  numbers=left,
  numberstyle=\tiny\color{gray},
  stepnumber=1,
  numbersep=10pt,
  backgroundcolor=\color{white},
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  frame=single,
  tabsize=4,
  captionpos=b,
  breaklines=true,
  breakatwhitespace=false
}
```

### Supported Languages
```latex
% Major languages
language=C
language=C++
language=Java
language=Python
language=JavaScript
language=SQL
language=HTML
language=XML
language=bash
language=TeX
```

### Captions and Labels
```latex
\begin{lstlisting}[language=Python,caption={Hello World},label={lst:hello}]
def hello():
    print("Hello, World!")
\end{lstlisting}

See Listing~\ref{lst:hello} for an example.
```

### Custom Styles
```latex
\lstdefinestyle{mystyle}{
  backgroundcolor=\color{lightgray},
  commentstyle=\color{green},
  keywordstyle=\color{magenta},
  numberstyle=\tiny\color{gray},
  stringstyle=\color{purple},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,
  breaklines=true,
  keepspaces=true,
  numbers=left,
  numbersep=5pt,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  tabsize=2
}

\lstset{style=mystyle}
```

## minted Package

### Basic Setup
```latex
\documentclass{article}
\usepackage{minted}

\begin{document}
\begin{minted}{python}
def hello():
    print("Hello, World!")
\end{minted}
\end{document}
```

### Compilation
```bash
pdflatex -shell-escape document.tex
```

### Inline Code
```latex
The function \mintinline{python}{print()} outputs text.
Use \mintinline{python}{x = 42} to assign a variable.
```

### Code from External File
```latex
\inputminted{python}{example.py}
\inputminted[firstline=5,lastline=15]{python}{example.py}
```

### Styling minted
```latex
\begin{minted}[
  frame=lines,
  framesep=2mm,
  baselinestretch=1.2,
  bgcolor=lightgray,
  fontsize=\footnotesize,
  linenos
]{python}
def hello():
    print("Hello, World!")
\end{minted}
```

### Global Settings
```latex
\setminted{
  frame=lines,
  framesep=2mm,
  baselinestretch=1.2,
  fontsize=\footnotesize,
  linenos
}

\setminted[python]{
  bgcolor=lightgray,
  style=colorful
}
```

### Color Schemes
```latex
% Available styles (via Pygments)
\begin{minted}[style=colorful]{python}
# colorful style
\end{minted}

\begin{minted}[style=monokai]{python}
# monokai style
\end{minted}

\begin{minted}[style=vim]{python}
# vim style
\end{minted}
```

### Captions and Labels
```latex
\begin{listing}[H]
\begin{minted}{python}
def hello():
    print("Hello, World!")
\end{minted}
\caption{Hello World in Python}
\label{lst:hello}
\end{listing}
```

### Line Highlighting
```latex
% Highlight specific lines
\begin{minted}[highlightlines={2,4-6}]{python}
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)
\end{minted}
```

### Line Numbers
```latex
% Basic line numbers
\begin{minted}[linenos]{python}
code here
\end{minted}

% Start from specific number
\begin{minted}[linenos,firstnumber=10]{python}
code here
\end{minted}

% Line number step
\begin{minted}[linenos,stepnumber=5]{python}
code here
\end{minted}
```

## Comparison

| Feature | listings | minted |
|---------|----------|--------|
| **Installation** | Built-in | Requires Pygments |
| **Syntax Highlighting** | Basic | Advanced (200+ languages) |
| **Compilation** | Standard | Needs `-shell-escape` |
| **Speed** | Fast | Slower (external process) |
| **Customization** | Manual | Automatic via Pygments |
| **Security** | Safe | Requires shell access |
| **Themes** | Manual setup | Built-in themes |
| **Unicode** | Limited | Full support |

## When to Use listings
- Simple syntax highlighting needs
- No external dependencies allowed
- Security restrictions prevent `-shell-escape`
- Fast compilation is critical
- Working offline without Pygments

## When to Use minted
- Need high-quality syntax highlighting
- Support for many languages
- Want professional color schemes
- Unicode characters in code
- Highlighting accuracy is important

## Complete Example: listings
```latex
\documentclass{article}
\usepackage{listings}
\usepackage{xcolor}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
  backgroundcolor=\color{backcolour},
  commentstyle=\color{codegreen},
  keywordstyle=\color{magenta},
  numberstyle=\tiny\color{codegray},
  stringstyle=\color{codepurple},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,
  breaklines=true,
  captionpos=b,
  keepspaces=true,
  numbers=left,
  numbersep=5pt,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  tabsize=2
}

\lstset{style=mystyle}

\begin{document}

\begin{lstlisting}[language=Python,caption={Factorial Function}]
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)
\end{lstlisting}

\end{document}
```

## Complete Example: minted
```latex
\documentclass{article}
\usepackage{minted}
\usepackage{xcolor}

\definecolor{bg}{rgb}{0.95,0.95,0.92}

\setminted{
  bgcolor=bg,
  fontsize=\footnotesize,
  linenos=true,
  frame=lines,
  framesep=2mm
}

\begin{document}

\begin{listing}[H]
\begin{minted}{python}
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)
\end{minted}
\caption{Factorial Function}
\label{lst:factorial}
\end{listing}

\end{document}
```

## Best Practices
1. **Choose based on needs** - listings for simple, minted for complex
2. **Configure once** - Set global styles in preamble
3. **Use captions** - Always caption code listings
4. **Label for reference** - Use `\label` to reference listings
5. **Break long lines** - Enable line breaking for readability
6. **Consistent formatting** - Use same style throughout document
