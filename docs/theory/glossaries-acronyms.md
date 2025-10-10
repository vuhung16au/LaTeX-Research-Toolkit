# Glossaries and Acronyms in LaTeX

## Basic Glossary Setup
```latex
\documentclass{article}
\usepackage[acronym]{glossaries}

\makeglossaries

% Define glossary entries
\newglossaryentry{latex}{
  name=LaTeX,
  description={A document preparation system}
}

\newacronym{pdf}{PDF}{Portable Document Format}

\begin{document}
First use: \gls{pdf}
Second use: \gls{pdf}

Full form: \acrfull{pdf}

\printglossaries
\end{document}
```

## Compilation Process
```bash
pdflatex document.tex
makeglossaries document
pdflatex document.tex
pdflatex document.tex
```

## Package Options
```latex
% Basic options
\usepackage[acronym]{glossaries}        % Separate acronym list
\usepackage[toc]{glossaries}            % Add to table of contents
\usepackage[numberedsection]{glossaries} % Numbered section

% Multiple glossaries
\usepackage[acronym,symbols]{glossaries}
```

## Defining Glossary Entries
```latex
% Basic entry
\newglossaryentry{computer}{
  name=computer,
  description={An electronic device for processing data}
}

% Entry with plural
\newglossaryentry{matrix}{
  name=matrix,
  plural=matrices,
  description={A rectangular array of numbers}
}

% Entry with symbol
\newglossaryentry{pi}{
  name={\ensuremath{\pi}},
  description={The ratio of a circle's circumference to its diameter},
  sort=pi
}
```

## Defining Acronyms
```latex
% Basic acronym
\newacronym{xml}{XML}{Extensible Markup Language}

% Acronym with description
\newacronym{cpu}{CPU}{Central Processing Unit}

% Acronym with custom plural
\newacronym[longplural={Graphical Processing Units}]{gpu}{GPU}{Graphical Processing Unit}
```

## Using Glossary Entries
```latex
% Basic usage
\gls{latex}           % latex (first use: LaTeX)
\Gls{latex}           % LaTeX (capitalized)
\glspl{matrix}        % matrices (plural)
\Glspl{matrix}        % Matrices (capitalized plural)

% Reference without linking
\glsentryname{latex}  % Just the name
\glsentrydesc{latex}  % Just the description
```

## Using Acronyms
```latex
% Basic usage
\gls{pdf}             % First: Portable Document Format (PDF)
                      % Later: PDF
\Gls{pdf}             % Capitalized version
\glspl{pdf}           % Plural: PDFs

% Force specific forms
\acrshort{pdf}        % PDF (always short)
\acrlong{pdf}         % Portable Document Format (always long)
\acrfull{pdf}         % Portable Document Format (PDF)
```

## Printing Glossaries
```latex
% Print all glossaries
\printglossaries

% Print specific glossary
\printglossary                    % Main glossary
\printglossary[type=\acronymtype] % Acronyms only
\printglossary[type=symbols]      % Symbols only

% Custom title
\printglossary[title={List of Terms}]
```

## Glossary Styles
```latex
% Set style
\setglossarystyle{list}      % Simple list
\setglossarystyle{altlist}   % Alternate list
\setglossarystyle{tree}      % Hierarchical tree
\setglossarystyle{index}     % Index style
\setglossarystyle{long}      % Long table
```

## Advanced Options
```latex
% Don't expand on first use
\glsunset{pdf}
\gls{pdf}  % Will show short form

% Force expansion on next use
\glsreset{pdf}
\gls{pdf}  % Will show full form

% Reset all entries
\glsresetall
```

## Separate Lists
```latex
\documentclass{article}
\usepackage[acronym,symbols]{glossaries}

\makeglossaries

% Regular glossary entry
\newglossaryentry{computer}{...}

% Acronym
\newacronym{cpu}{CPU}{Central Processing Unit}

% Symbol
\newglossaryentry{alpha}{
  name={\ensuremath{\alpha}},
  description={Significance level},
  type=symbols
}

\begin{document}
Content here...

\printglossary[type=main,title={Glossary}]
\printglossary[type=\acronymtype,title={List of Acronyms}]
\printglossary[type=symbols,title={List of Symbols}]
\end{document}
```

## Hyperlinks
```latex
% Enable hyperlinks (requires hyperref)
\usepackage{hyperref}
\usepackage{glossaries}

% Disable hyperlinks for specific entry
\newglossaryentry{example}{
  name=example,
  description={An example entry},
  nonumberlist  % Don't show page numbers
}
```

## Sorting
```latex
% Sorting options
\usepackage[sort=standard]{glossaries}  % Default sorting
\usepackage[sort=def]{glossaries}       % Order of definition
\usepackage[sort=use]{glossaries}       % Order of first use

% Custom sort key
\newglossaryentry{api}{
  name={API},
  description={Application Programming Interface},
  sort={application programming interface}
}
```

## External File for Entries
```latex
% Main document
\documentclass{article}
\usepackage[acronym]{glossaries}
\makeglossaries

% Load entries from external file
\loadglsentries{glossary-entries}

\begin{document}
Content...
\printglossaries
\end{document}
```

```latex
% glossary-entries.tex
\newglossaryentry{latex}{...}
\newacronym{pdf}{PDF}{Portable Document Format}
```

## Customizing Appearance
```latex
% Change acronym format
\setacronymstyle{long-short}  % Long (Short)
\setacronymstyle{short-long}  % Short (Long)
\setacronymstyle{long-short-desc}  % With description

% Custom formatting
\renewcommand{\acronymfont}[1]{\textsc{#1}}  % Small caps
```

## Cross-References
```latex
% Reference another glossary entry
\newglossaryentry{software}{
  name=software,
  description={Programs running on a \gls{computer}}
}
```

## Common Issues
```latex
% If makeglossaries fails, compile manually:
% makeindex -s document.ist -o document.gls document.glo
% makeindex -s document.ist -o document.acr document.acn

% Check for errors in:
% document.glg (main glossary log)
% document.alg (acronym log)
```

## Best Practices
1. Define all entries in preamble or external file
2. Use consistent naming conventions
3. Provide clear, concise descriptions
4. Use plural forms when needed
5. Reset acronyms at chapter boundaries (in long documents)
