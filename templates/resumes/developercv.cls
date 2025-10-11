%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Developer CV
% LaTeX Class
% Version 1.0 (28/1/19)
%
% This class originates from:
% http://www.LaTeXTemplates.com
%
% Authors:
% Jan Vorisek (jan@vorisek.me)
% Based on a template by Jan Küster (info@jankuester.com)
% Modified for LaTeX Templates by Vel (vel@LaTeXTemplates.com)
%
% License:
% The MIT License (see included LICENSE file)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{developercv}[2019/01/28 Developer CV class v1.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{extarticle} % Load the base class

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\setlength{\parindent}{0mm} % Suppress paragraph indentation

\usepackage[hidelinks]{hyperref} % Required for links but hide pdf borders
\usepackage{moresize} % Provides more font size commands (\HUGE and \ssmall)
\usepackage{fontawesome} % Required for FontAwesome icons
\usepackage{xcolor} % Required for color specification

% Page margins
\usepackage[left=1cm,top=1cm,right=1cm,bottom=1cm,nohead,nofoot]{geometry}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\color{darkgray} % Set default text color

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc} % Output font encoding for international characters

% Use sans-serif font
\renewcommand{\familydefault}{\sfdefault}

%----------------------------------------------------------------------------------------
%	COMMANDS AND CUSTOM FORMATTING
%----------------------------------------------------------------------------------------

% Command to output section title headings
\newcommand{\cvsect}[1]{%
	\vspace{\baselineskip} % Whitespace before the section title
	\colorbox{black}{\textcolor{white}{\MakeUppercase{\textbf{#1}}}}\\
}

% Command to output an icon in a black square with text
\newcommand{\icon}[3]{%
	\makebox(#2, #2){\textcolor{darkgray}{\csname fa#1\endcsname}}%
	\hspace{0.2cm}%
	\parbox{2cm}{#3}%
}

% Command to output a bar chart
\newenvironment{barchart}[1]{%
	\newcommand{\barwidth}{0.35}
	\newcommand{\barsep}{0.2cm}
	\newcount\ind
	\def\maxind{#1}
	\begin{tikzpicture}
		\foreach \x/\y in {#1} {
			\ind=\x
			\edef\x{\number\ind}
		}
}{%
	\end{tikzpicture}
}

\usepackage{tikz}
\usetikzlibrary{shapes.geometric, positioning}

\newcommand{\baritem}[2]{%
	\hspace{\barsep}\parbox[b][1.2cm][c]{3cm}{#1}\hspace{0.2cm}
	\begin{tikzpicture}
		\filldraw[fill=lightgray, draw=none] (0,0) rectangle (5,0.25);
		\filldraw[fill=darkgray, draw=none] (0,0) rectangle (#2/20,0.25);
	\end{tikzpicture}%
	\par\vspace{0.5em}
}

% Command to output a bubble diagram
\newcommand{\bubbles}[1]{%
	\begin{tikzpicture}
		\foreach \x/\y in {#1} {
			\node[circle, draw=darkgray, fill=lightgray, minimum size=\x*5pt, inner sep=0pt] at (\x*1.2cm,0) {\small\y};
		}
	\end{tikzpicture}
}

% Entry list environment
\newenvironment{entrylist}{%
	\begin{tabular}{@{\extracolsep{\fill}}ll}
}{%
	\end{tabular}
}

\newcommand{\entry}[4]{%
	\parbox[t]{0.175\textwidth}{%
		#1%
	}%
	&\parbox[t]{0.825\textwidth}{%
		\textbf{#2}%
		\hfill%
		{\footnotesize \textbf{\textcolor{black}{#3}}}\\%
		#4\vspace{\parsep}%
	}\\}

% Command for the slash separator
\newcommand{\slashsep}{\ \textcolor{lightgray}{/}\ }

%----------------------------------------------------------------------------------------
