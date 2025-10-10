# Multilingual Typesetting in LaTeX

## Introduction
LaTeX supports multilingual documents through packages like `babel` and `polyglossia`. These handle language-specific typography, hyphenation, and special characters.

## babel Package

### Basic Setup
```latex
\documentclass{article}
\usepackage[english]{babel}

\begin{document}
This is an English document.
\end{document}
```

### Multiple Languages
```latex
\documentclass{article}
\usepackage[french,spanish,english]{babel}
% Last language (english) is the main language

\begin{document}
This is in English.

\begin{otherlanguage}{french}
Ceci est en français.
\end{otherlanguage}

\begin{otherlanguage}{spanish}
Esto está en español.
\end{otherlanguage}
\end{document}
```

### Switching Languages
```latex
% Block switching
\begin{otherlanguage}{german}
Dies ist ein deutscher Text.
\end{otherlanguage}

% Inline switching
\selectlanguage{french}
Texte français ici.
\selectlanguage{english}
Back to English.

% Short inline
Some English text \foreignlanguage{italian}{testo italiano} more English.
```

### Language-Specific Commands
```latex
% Get language-specific text
\documentclass{article}
\usepackage[french,english]{babel}

\begin{document}
% In English: "Table of Contents"
\tableofcontents

\selectlanguage{french}
% In French: "Table des matières"
\tableofcontents
\end{document}
```

### Common Languages
```latex
\usepackage[english]{babel}     % English
\usepackage[german]{babel}      % German
\usepackage[french]{babel}      % French
\usepackage[spanish]{babel}     % Spanish
\usepackage[italian]{babel}     % Italian
\usepackage[portuguese]{babel}  % Portuguese
\usepackage[russian]{babel}     % Russian
\usepackage[arabic]{babel}      % Arabic
\usepackage[japanese]{babel}    % Japanese
\usepackage[chinese]{babel}     % Chinese
```

### Special Characters
```latex
% German
\"a \"o \"u \"A \"O \"U  % ä ö ü Ä Ö Ü
\ss or ß                   % ß (eszett)

% French
\'e \`e \^e \"e \c{c}      % é è ê ë ç
\oe \OE                     % œ Œ

% Spanish
\'a \'e \'i \'o \'u        % á é í ó ú
\~n                         % ñ
?` !`                       % ¿ ¡
```

### Hyphenation
```latex
% Allow hyphenation for specific words
\hyphenation{Java-Script post-Script}

% Suggest hyphenation points
su\-per\-cal\-i\-frag\-i\-lis\-tic

% Prevent hyphenation
\mbox{unhyphenatable}
```

### Date Formatting
```latex
\documentclass{article}
\usepackage[french,english]{babel}

\begin{document}
\selectlanguage{english}
\today  % December 25, 2023

\selectlanguage{french}
\today  % 25 décembre 2023
\end{document}
```

## polyglossia Package (XeLaTeX/LuaLaTeX)

### Basic Setup
```latex
\documentclass{article}
\usepackage{polyglossia}
\setdefaultlanguage{english}

\begin{document}
This is an English document.
\end{document}
```

### Multiple Languages
```latex
\documentclass{article}
\usepackage{polyglossia}
\setdefaultlanguage{english}
\setotherlanguage{french}
\setotherlanguage{arabic}

\begin{document}
English text here.

\begin{french}
Texte français.
\end{french}

\begin{arabic}
نص عربي
\end{arabic}
\end{document}
```

### Language Options
```latex
% Set language with options
\setdefaultlanguage[variant=british]{english}
\setotherlanguage[variant=swiss]{german}

% Date format options
\setdefaultlanguage[calendar=gregorian]{arabic}
```

### Font Configuration
```latex
\documentclass{article}
\usepackage{polyglossia}
\usepackage{fontspec}

\setdefaultlanguage{english}
\setotherlanguage{arabic}

% Set fonts for specific scripts
\newfontfamily\arabicfont[Script=Arabic]{Arial}

\begin{document}
English text.

\begin{arabic}
نص عربي بخط مخصص
\end{arabic}
\end{document}
```

### Right-to-Left Languages
```latex
\documentclass{article}
\usepackage{polyglossia}
\setdefaultlanguage{english}
\setotherlanguage{hebrew}

\begin{document}
Left-to-right English text.

\begin{hebrew}
טקסט בעברית מימין לשמאל
\end{hebrew}

Back to left-to-right.
\end{document}
```

## UTF-8 Input (Modern LaTeX)

### With pdfLaTeX
```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[french]{babel}

\begin{document}
Français avec accents: é è ê ë à ù ç
\end{document}
```

### With XeLaTeX/LuaLaTeX
```latex
\documentclass{article}
\usepackage{fontspec}
\usepackage{polyglossia}
\setdefaultlanguage{english}

\begin{document}
Direct Unicode input: é è ê ë à ù ç
Greek: α β γ δ
Cyrillic: А Б В Г
\end{document}
```

## Practical Examples

### Bilingual Document
```latex
\documentclass{article}
\usepackage[french,english]{babel}

\title{A Bilingual Document}
\author{Author Name}
\date{\today}

\begin{document}
\maketitle

\section{Introduction}
This section is in English.

\begin{otherlanguage}{french}
\section{Introduction}
Cette section est en français.
\end{otherlanguage}

\section{Conclusion}
Back to English for the conclusion.

\end{document}
```

### Academic Paper with Multiple Languages
```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[greek,latin,french,english]{babel}
\usepackage{csquotes}

\begin{document}

\section{Classical Quotations}

In Latin: \foreignlanguage{latin}{Veni, vidi, vici.}

In Greek: \foreignlanguage{greek}{γνῶθι σεαυτόν}

In French: \enquote{Je pense, donc je suis.}

\end{document}
```

### Multilingual Bibliography
```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[french,english]{babel}
\usepackage[backend=biber,style=numeric]{biblatex}
\addbibresource{references.bib}

\begin{document}

English citation: \cite{english-ref}

French citation: \cite{french-ref}

\printbibliography
\end{document}
```

## CJK Languages (Chinese, Japanese, Korean)

### Chinese
```latex
\documentclass{article}
\usepackage{xeCJK}
\setCJKmainfont{SimSun}  % Or another Chinese font

\begin{document}
中文文档示例
\end{document}
```

### Japanese
```latex
\documentclass{article}
\usepackage{xeCJK}
\setCJKmainfont{IPAMincho}

\begin{document}
日本語の文書
\end{document}
```

### Korean
```latex
\documentclass{article}
\usepackage{xeCJK}
\setCJKmainfont{Batang}

\begin{document}
한국어 문서
\end{document}
```

## Quotation Marks
```latex
\usepackage{csquotes}

% Automatic language-aware quotes
\enquote{quoted text}

% In French: «quoted text»
% In English: "quoted text"
% In German: „quoted text"
```

## Language-Specific Features

### German
```latex
\usepackage[ngerman]{babel}

% Automatic hyphenation rules
% Proper quotation marks
\glqq Quote\grqq{}  % „Quote"
```

### French
```latex
\usepackage[french]{babel}

% Automatic spacing before punctuation
% Proper guillemets
% Automatic capitalization
```

### Russian
```latex
\usepackage[T2A]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[russian]{babel}

\begin{document}
Русский текст
\end{document}
```

## Best Practices
1. **Choose the right package** - babel for pdfLaTeX, polyglossia for XeLaTeX/LuaLaTeX
2. **Use UTF-8 encoding** - Modern standard for international text
3. **Install proper fonts** - Ensure fonts support all required scripts
4. **Test hyphenation** - Verify language-specific hyphenation works
5. **Use csquotes** - For language-appropriate quotation marks
6. **Configure bibliography** - Ensure bibliography respects language settings
7. **Main language last** - In babel, list main language last
8. **Use fontspec** - For advanced font features with Unicode engines

## Compilation Commands
```bash
# For pdfLaTeX with babel
pdflatex document.tex

# For XeLaTeX with polyglossia
xelatex document.tex

# For LuaLaTeX with polyglossia
lualatex document.tex
```
