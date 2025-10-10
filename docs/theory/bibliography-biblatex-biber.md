# Bibliography with BibLaTeX and Biber

## Introduction to BibLaTeX
BibLaTeX is a modern bibliography system that offers more flexibility and features than traditional BibTeX. It uses Biber as its backend processor, providing better Unicode support and more powerful sorting options.

## Basic Setup
```latex
\documentclass{article}
\usepackage[backend=biber,style=numeric]{biblatex}
\addbibresource{references.bib}

\begin{document}
This is a citation \cite{author2023}.

\printbibliography
\end{document}
```

## Compilation Process
```bash
pdflatex document.tex
biber document
pdflatex document.tex
pdflatex document.tex
```

## Citation Styles
```latex
% Numeric styles
\usepackage[backend=biber,style=numeric]{biblatex}
\usepackage[backend=biber,style=numeric-comp]{biblatex}
\usepackage[backend=biber,style=numeric-verb]{biblatex}

% Author-year styles
\usepackage[backend=biber,style=authoryear]{biblatex}
\usepackage[backend=biber,style=authoryear-comp]{biblatex}
\usepackage[backend=biber,style=authoryear-ibid]{biblatex}

% Other styles
\usepackage[backend=biber,style=alphabetic]{biblatex}
\usepackage[backend=biber,style=apa]{biblatex}
\usepackage[backend=biber,style=ieee]{biblatex}
```

## Citation Commands
```latex
% Basic citations
\cite{key}                    % Standard citation
\cite[prenote][postnote]{key} % With pre/postnote

% Text citations
\textcite{key}                % Author (Year) inline
\parencite{key}               % (Author Year) in parentheses
\footcite{key}                % Citation in footnote

% Author and year
\citeauthor{key}              % Author name only
\citeyear{key}                % Year only
\citetitle{key}               % Title only

% Multiple citations
\cite{key1,key2,key3}
\cites{key1}{key2}{key3}      % With individual pre/postnotes
```

## Bibliography Options
```latex
\usepackage[
  backend=biber,
  style=numeric,
  sorting=nyt,           % Sort by name, year, title
  maxbibnames=10,        % Max authors before et al.
  maxcitenames=2,        % Max authors in citations
  giveninits=true,       % Use initials for first names
  doi=true,              % Include DOI
  url=false,             % Don't include URL
  isbn=false             % Don't include ISBN
]{biblatex}
```

## Sorting Options
```latex
sorting=nyt    % Name, year, title
sorting=nty    % Name, title, year
sorting=ynt    % Year, name, title
sorting=none   % Order of appearance
sorting=debug  % Entry key order
```

## Custom Bibliography Headings
```latex
% Change bibliography title
\printbibliography[title={References}]

% Bibliography without title
\printbibliography[heading=none]

% Custom heading
\printbibliography[heading=bibintoc,title={Bibliography}]
```

## Filtering Bibliography
```latex
% By entry type
\printbibliography[type=article,title={Journal Articles}]
\printbibliography[type=book,title={Books}]

% By keyword
\printbibliography[keyword=primary,title={Primary Sources}]

% By category
\DeclareBibliographyCategory{important}
\addtocategory{important}{key1,key2}
\printbibliography[category=important,title={Important Works}]
```

## Multiple Bibliographies
```latex
\begin{refsection}
Content with its own citations \cite{key1}.
\printbibliography[heading=subbibliography]
\end{refsection}

\begin{refsection}
Another section with different citations \cite{key2}.
\printbibliography[heading=subbibliography]
\end{refsection}
```

## Customizing Entry Format
```latex
% Suppress specific fields
\AtEveryBibitem{
  \clearfield{month}
  \clearfield{note}
}

% Modify field format
\DeclareFieldFormat[article]{title}{#1}  % Remove quotes from titles
\DeclareFieldFormat{doi}{%
  \mkbibacro{DOI}\addcolon\space
  \href{https://doi.org/#1}{\nolinkurl{#1}}}
```

## Bibliography File (references.bib)
```bibtex
@article{author2023,
  author = {Smith, John and Doe, Jane},
  title = {A Great Paper},
  journal = {Journal of Science},
  year = {2023},
  volume = {42},
  number = {3},
  pages = {123--145},
  doi = {10.1234/example.doi},
  keywords = {primary}
}

@book{smith2022,
  author = {Smith, John},
  title = {The Book Title},
  publisher = {Publisher Name},
  year = {2022},
  address = {City, Country},
  isbn = {978-0-123456-78-9}
}
```

## Advanced Features
```latex
% Back references (show citation pages)
\usepackage[backend=biber,backref=true]{biblatex}

% Related entries
\usepackage[backend=biber,related=true]{biblatex}

% Localization
\usepackage[backend=biber,language=french]{biblatex}

% Custom delimiter between citations
\renewcommand{\multicitedelim}{\addsemicolon\space}
```

## Comparison with BibTeX
| Feature | BibTeX | BibLaTeX/Biber |
|---------|--------|----------------|
| Unicode | Limited | Full support |
| Sorting | Basic | Advanced |
| Customization | Limited | Extensive |
| Citation styles | Fixed | Flexible |
| Localization | Limited | Comprehensive |

## Common Issues
```latex
% If biber fails, clear cache:
% biber --cache

% Force full regeneration:
% rm document.bbl document.bcf
% biber document
% pdflatex document.tex
```
