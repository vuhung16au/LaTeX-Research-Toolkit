# Advanced Typography & Fonts in LaTeX

This comprehensive guide covers advanced typography, font management, and text formatting in LaTeX.

## Table of Contents

1. [Font Selection and Management](#font-selection-and-management)
2. [Unicode and Special Characters](#unicode-and-special-characters)
3. [Font Encoding](#font-encoding)
4. [Custom Fonts and Font Packages](#custom-fonts-and-font-packages)
5. [Mathematical Fonts](#mathematical-fonts)
6. [Font Size Scaling and Line Spacing](#font-size-scaling-and-line-spacing)
7. [Kerning and Ligatures](#kerning-and-ligatures)
8. [Best Practices](#best-practices)
9. [Examples](#examples)

## Font Selection and Management

### Basic Font Commands

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

\begin{document}
% Font family commands
\textrm{Roman text} \quad \textsf{Sans serif text} \quad \texttt{Typewriter text}

% Font shape commands
\textbf{Bold text} \quad \textit{Italic text} \quad \textsl{Slanted text} \quad \textsc{Small caps}

% Font size commands
{\tiny Tiny text} \quad {\scriptsize Script size} \quad {\footnotesize Footnote size}
{\small Small text} \quad {\normalsize Normal size} \quad {\large Large text}
{\Large Larger text} \quad {\LARGE LARGE text} \quad {\huge Huge text} \quad {\Huge HUGE text}
\end{document}
```

### Font Family Selection

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

% Set default font family
\renewcommand{\rmdefault}{ptm} % Times
\renewcommand{\sfdefault}{phv} % Helvetica
\renewcommand{\ttdefault}{pcr}  % Courier

\begin{document}
This is the default roman font (Times).

\textsf{This is sans serif (Helvetica).}

\texttt{This is typewriter (Courier).}
\end{document}
```

### Modern Font Management with fontspec

```latex
\documentclass{article}
\usepackage{fontspec} % For XeLaTeX/LuaLaTeX

% Set main fonts
\setmainfont{Liberation Serif}
\setsansfont{Liberation Sans}
\setmonofont{Liberation Mono}

\begin{document}
This is the main font (Liberation Serif).

\textsf{This is sans serif (Liberation Sans).}

\texttt{This is monospace (Liberation Mono).}
\end{document}
```

### Font Features and Options

```latex
\documentclass{article}
\usepackage{fontspec}

% Font with specific features
\setmainfont{Liberation Serif}[
    BoldFont=Liberation Serif Bold,
    ItalicFont=Liberation Serif Italic,
    BoldItalicFont=Liberation Serif Bold Italic,
    Numbers=OldStyle,
    Ligatures=TeX
]

\begin{document}
This text uses Liberation Serif with old-style numbers and TeX ligatures.

Numbers: 1234567890 (old-style)

Ligatures: fi, fl, ff, ffi, ffl
\end{document}
```

## Unicode and Special Characters

### Basic Unicode Support

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

\begin{document}
% Accented characters
á, é, í, ó, ú, ñ, ü, ç
À, É, Í, Ó, Ú, Ñ, Ü, Ç

% Special symbols
©, ®, ™, §, ¶, †, ‡, •, ◦, ▪, ▫

% Currency symbols
€, £, ¥, ₹, ₽, ¢, $

% Mathematical symbols
∑, ∫, ∞, ±, ≤, ≥, ≠, ≈, ≡, ∝, ∈, ∉, ⊂, ⊃, ∪, ∩

% Greek letters
α, β, γ, δ, ε, ζ, η, θ, λ, μ, π, σ, τ, φ, χ, ψ, ω
Α, Β, Γ, Δ, Ε, Ζ, Η, Θ, Λ, Μ, Π, Σ, Τ, Φ, Χ, Ψ, Ω
\end{document}
```

### Advanced Unicode with XeLaTeX/LuaLaTeX

```latex
\documentclass{article}
\usepackage{fontspec}
\usepackage{unicode-math}

% Set Unicode math font
\setmathfont{Latin Modern Math}

\begin{document}
% Direct Unicode input
Mathematical expressions: ∑ᵢ₌₁ⁿ xᵢ, ∫₀^∞ e^(-x²) dx

Subscripts and superscripts: H₂O, CO₂, x² + y² = z²

Special mathematical symbols: ∂f/∂x, ∇·F, ∮ F·dr
\end{document}
```

### Special Character Packages

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{textcomp} % For text symbols
\usepackage{gensymb}  % For degree, etc.
\usepackage{wasysym}  % For additional symbols

\begin{document}
% Text symbols
\textcopyright, \textregistered, \texttrademark
\textdegree, \textcelsius, \textperthousand
\textmu, \textohm, \textmho

% Additional symbols
\sun, \moon, \earth, \mercury, \venus, \mars, \jupiter, \saturn, \uranus, \neptune, \pluto
\male, \female, \phone, \email, \fax
\end{document}
```

## Font Encoding

### T1 Encoding (Recommended)

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{lmodern} % Latin Modern fonts with T1 encoding

\begin{document}
% T1 encoding supports more characters
"Smart quotes" and 'apostrophes'
Dashes: – (en-dash) and — (em-dash)
Ellipsis: …

% Better hyphenation with T1
hyphenation, typography, mathematics
\end{document}
```

### OT1 vs T1 Encoding

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}

% OT1 encoding (default)
\usepackage[OT1]{fontenc}
\begin{document}
OT1: "quotes" and 'apostrophes' (basic support)
\end{document}

% T1 encoding (recommended)
\usepackage[T1]{fontenc}
\begin{document}
T1: "quotes" and 'apostrophes' (full support)
\end{document}
```

### Multiple Encodings

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1,T2A]{fontenc} % Latin and Cyrillic
\usepackage[russian,english]{babel}

\begin{document}
\selectlanguage{english}
English text with T1 encoding.

\selectlanguage{russian}
Русский текст с кодировкой T2A.
\end{document}
```

## Custom Fonts and Font Packages

### Popular Font Packages

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

% Times-like fonts
\usepackage{times}        % Times
\usepackage{mathptmx}     % Times with math
\usepackage{newtxtext}    % New TX Text
\usepackage{newtxmath}    % New TX Math

% Sans serif fonts
\usepackage{helvet}        % Helvetica
\usepackage{mathpazo}      % Palatino
\usepackage{libertine}      % Libertine
\usepackage{libertinus}     % Libertinus

\begin{document}
This document uses Times-like fonts with proper math support.
\end{document}
```

### Custom Font Installation

```latex
\documentclass{article}
\usepackage{fontspec} % For XeLaTeX/LuaLaTeX

% Use system fonts
\setmainfont{Georgia}
\setsansfont{Arial}
\setmonofont{Consolas}

% Or use font files directly
\setmainfont{MyCustomFont}[
    Path = /path/to/fonts/,
    Extension = .ttf,
    UprightFont = MyCustomFont-Regular,
    BoldFont = MyCustomFont-Bold,
    ItalicFont = MyCustomFont-Italic,
    BoldItalicFont = MyCustomFont-BoldItalic
]

\begin{document}
This uses a custom font installed on the system.
\end{document}
```

### Font Package Combinations

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

% Professional font combination
\usepackage{libertine}      % Libertine for text
\usepackage{libertinus}     % Libertinus for math
\usepackage{inconsolata}    % Inconsolata for monospace

\begin{document}
This document uses Libertine for text, Libertinus for math, and Inconsolata for code.

Mathematical expression: $E = mc^2$

Code example: \texttt{int main() \{ return 0; \}}
\end{document}
```

## Mathematical Fonts

### Computer Modern Alternatives

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

% Math font packages
\usepackage{mathptmx}      % Times math
\usepackage{mathpazo}      % Palatino math
\usepackage{libertinus}    % Libertinus math
\usepackage{newtxmath}     % New TX math
\usepackage{stix}          % STIX math
\usepackage{stix2}         % STIX Two math

\begin{document}
Mathematical expressions with different fonts:

$E = mc^2$ (energy-mass equivalence)

$\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}$ (Gaussian integral)

$\sum_{n=1}^{\infty} \frac{1}{n^2} = \frac{\pi^2}{6}$ (Basel problem)
\end{document}
```

### Unicode Math Fonts

```latex
\documentclass{article}
\usepackage{fontspec}
\usepackage{unicode-math}

% Unicode math fonts
\setmathfont{Latin Modern Math}        % Default
\setmathfont{XITS Math}                % XITS
\setmathfont{STIX Two Math}            % STIX Two
\setmathfont{Cambria Math}             % Cambria
\setmathfont{TeX Gyre Termes Math}     % TeX Gyre

\begin{document}
Unicode math expressions:

$\sum_{i=1}^{n} x_i = x_1 + x_2 + \cdots + x_n$

$\int_0^{\infty} e^{-x} dx = 1$

$\lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n = e$
\end{document}
```

### Math Font Features

```latex
\documentclass{article}
\usepackage{fontspec}
\usepackage{unicode-math}

\setmathfont{Latin Modern Math}[
    math-style=ISO,        % ISO style
    bold-style=ISO,       % Bold style
    sans-style=upright,    % Sans serif style
    script-style=upright,  % Script style
    frak-style=upright     % Fraktur style
]

\begin{document}
Math with specific styles:

$\mathbf{A} = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ (bold matrix)

$\mathcal{L} = \frac{1}{2}m\dot{x}^2 - V(x)$ (calligraphic Lagrangian)

$\mathfrak{g} = \text{Lie algebra}$ (fraktur)
\end{document}
```

## Font Size Scaling and Line Spacing

### Font Size Scaling

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

\begin{document}
% Absolute font sizes
{\tiny Tiny text (5pt)}
{\scriptsize Script size (7pt)}
{\footnotesize Footnote size (8pt)}
{\small Small text (9pt)}
{\normalsize Normal size (10pt)}
{\large Large text (12pt)}
{\Large Larger text (14pt)}
{\LARGE LARGE text (17pt)}
{\huge Huge text (20pt)}
{\Huge HUGE text (25pt)}

% Relative scaling
\scalebox{1.5}{Scaled 150\%}
\scalebox{0.8}{Scaled 80\%}
\end{document}
```

### Line Spacing Control

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{setspace}

\begin{document}
% Single spacing (default)
\singlespacing
This is single-spaced text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

% One and a half spacing
\onehalfspacing
This is one and a half spaced text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

% Double spacing
\doublespacing
This is double-spaced text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

% Custom spacing
\setstretch{1.3}
This is custom 1.3x spaced text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
\end{document}
```

### Advanced Spacing Control

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{setspace}

\begin{document}
% Paragraph spacing
\setlength{\parskip}{1em}
This paragraph has 1em spacing after it.

This paragraph also has 1em spacing after it.

% Line spacing within paragraphs
\linespread{1.5}
This paragraph has 1.5x line spacing. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.

% Reset to normal
\linespread{1.0}
This paragraph has normal line spacing. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.
\end{document}
```

## Kerning and Ligatures

### Automatic Ligatures

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{microtype} % Enhanced typography

\begin{document}
% Common ligatures
fi, fl, ff, ffi, ffl

% Discretionary ligatures
st, ct, sp, ss

% Mathematical ligatures
!=, <=, >=, ==, ->, <-

% Custom ligatures
\newcommand{\ligature}[1]{\textls*{#1}}
\ligature{fi} \ligature{fl} \ligature{ff}
\end{document}
```

### Manual Kerning

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{microtype}

\begin{document}
% Manual kerning adjustments
A\kern-0.1em V (AV with negative kerning)
T\kern-0.2em o (To with negative kerning)
W\kern-0.1em a (Wa with negative kerning)

% Using microtype for automatic kerning
\microtypesetup{kerning=true, spacing=true, tracking=true}

This text has automatic kerning, spacing, and tracking adjustments.
\end{document}
```

### Advanced Typography with microtype

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{microtype}

\microtypesetup{
    kerning=true,           % Enable kerning
    spacing=true,           % Enable spacing
    tracking=true,          % Enable tracking
    protrusion=true,        % Enable protrusion
    expansion=true,         % Enable expansion
    stretch=20,             % Stretch limit
    shrink=20,              % Shrink limit
    step=2,                 % Step size
    factor=1000             % Factor
}

\begin{document}
This text benefits from microtype's advanced typography features:
- Automatic kerning adjustments
- Improved spacing
- Character protrusion
- Font expansion for better justification
\end{document}
```

## Best Practices

### 1. Font Selection Guidelines

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

% Professional document fonts
\usepackage{libertine}      % Good for academic papers
\usepackage{libertinus}     % Libertinus for math
\usepackage{inconsolata}     % For code

% Business document fonts
\usepackage{helvet}          % Helvetica for modern look
\usepackage{mathpazo}       % Palatino for math

% Technical document fonts
\usepackage{newtxtext}      % New TX for text
\usepackage{newtxmath}      % New TX for math
\usepackage{inconsolata}    % For code
\end{document}
```

### 2. Encoding Best Practices

```latex
\documentclass{article}
% Always use UTF-8 input
\usepackage[utf8]{inputenc}

% Use T1 encoding for better character support
\usepackage[T1]{fontenc}

% Use Latin Modern fonts with T1
\usepackage{lmodern}
\end{document}
```

### 3. Math Font Consistency

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

% Match text and math fonts
\usepackage{libertine}      % Text font
\usepackage{libertinus}     % Math font (matches libertine)

\begin{document}
Text and math should have consistent appearance:
$E = mc^2$ (energy-mass equivalence)
\end{document}
```

### 4. Typography Enhancement

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{microtype}      % Enhanced typography
\usepackage{setspace}       % Line spacing control

\begin{document}
% Enhanced typography with microtype
\microtypesetup{kerning=true, spacing=true, tracking=true}

% Appropriate line spacing
\onehalfspacing

This document has enhanced typography with proper kerning, spacing, and line height.
\end{document}
```

## Examples

### Professional Academic Paper

```latex
\documentclass[12pt]{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{libertine}
\usepackage{libertinus}
\usepackage{microtype}
\usepackage{setspace}

\onehalfspacing
\microtypesetup{kerning=true, spacing=true}

\title{Advanced Typography in LaTeX}
\author{Author Name}
\date{\today}

\begin{document}
\maketitle

\section{Introduction}
This document demonstrates professional typography using Libertine fonts with enhanced microtype features.

\section{Mathematical Typesetting}
The mathematical expressions use Libertinus math font:
\begin{equation}
E = mc^2
\end{equation}

\begin{equation}
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
\end{equation}

\section{Code Examples}
Code is typeset in monospace font:
\begin{verbatim}
int main() {
    return 0;
}
\end{verbatim}
\end{document}
```

### Modern Business Document

```latex
\documentclass[11pt]{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{helvet}
\usepackage{mathpazo}
\usepackage{microtype}
\usepackage{setspace}

\onehalfspacing
\microtypesetup{kerning=true, spacing=true}

\title{Business Report}
\author{Company Name}
\date{\today}

\begin{document}
\maketitle

\section{Executive Summary}
This report uses Helvetica for a modern, professional appearance.

\section{Financial Analysis}
Mathematical expressions use Palatino math:
\begin{equation}
\text{ROI} = \frac{\text{Net Profit}}{\text{Investment}} \times 100\%
\end{equation}

\section{Conclusion}
The document maintains consistent typography throughout.
\end{document}
```

### Technical Documentation

```latex
\documentclass[10pt]{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{newtxtext}
\usepackage{newtxmath}
\usepackage{inconsolata}
\usepackage{microtype}
\usepackage{setspace}

\onehalfspacing
\microtypesetup{kerning=true, spacing=true}

\title{Technical Documentation}
\author{Technical Team}
\date{\today}

\begin{document}
\maketitle

\section{System Architecture}
This technical document uses New TX fonts for optimal readability.

\section{Mathematical Models}
Complex mathematical expressions:
\begin{equation}
\frac{\partial f}{\partial x} = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}
\end{equation}

\section{Code Implementation}
\begin{verbatim}
def calculate_derivative(f, x, h=1e-6):
    return (f(x+h) - f(x)) / h
\end{verbatim}
\end{document}
```

## Troubleshooting

### Common Font Issues

1. **Font not found**: Ensure font is installed
2. **Encoding errors**: Use correct input encoding
3. **Math font mismatch**: Match text and math fonts
4. **Poor quality**: Use vector fonts, not bitmap

### Solutions

```latex
% For font issues
\usepackage{fontspec} % For XeLaTeX/LuaLaTeX
\setmainfont{Your Font Name}

% For encoding issues
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

% For math font issues
\usepackage{libertinus} % Matches libertine
\usepackage{newtxmath}  % Matches newtxtext

% For quality issues
\usepackage{microtype}
\microtypesetup{kerning=true, spacing=true}
```

## Conclusion

LaTeX provides excellent typography capabilities through:

- **Font management** with fontspec and traditional packages
- **Unicode support** for international characters
- **Mathematical fonts** with proper math typesetting
- **Advanced typography** with microtype
- **Professional appearance** with appropriate font choices

Choose fonts that match your document's purpose and use microtype for enhanced typography.
