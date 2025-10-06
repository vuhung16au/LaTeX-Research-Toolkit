# LaTeX Document Structure

## Document Classes
```latex
\documentclass{article}     % Articles, papers
\documentclass{report}      % Longer documents, theses
\documentclass{book}        % Books
\documentclass{letter}      % Letters
\documentclass{beamer}      % Presentations
```

## Essential Packages
```latex
\usepackage[utf8]{inputenc}    % UTF-8 encoding
\usepackage{amsmath}           % Advanced math
\usepackage{amsfonts}         % Math fonts
\usepackage{graphicx}         % Graphics
\usepackage{hyperref}         % Hyperlinks
\usepackage{geometry}         % Page layout
```

## Document Structure
```latex
\documentclass{article}
% Preamble: packages, commands, definitions

\begin{document}
% Document content
\title{...}
\author{...}
\date{...}
\maketitle

\section{...}
\subsection{...}
\subsubsection{...}

\bibliography{references}
\end{document}
```

## Page Layout
```latex
\usepackage[letterpaper, margin=1in]{geometry}
\usepackage{setspace}
\onehalfspacing  % 1.5 line spacing
```

## Headers and Footers
```latex
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\rhead{Your Name}
\lhead{Document Title}
\cfoot{\thepage}
```
