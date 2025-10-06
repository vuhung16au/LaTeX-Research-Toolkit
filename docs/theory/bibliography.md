# Bibliography in LaTeX

## Basic Bibliography
```latex
\documentclass{article}
\usepackage{natbib}

\begin{document}
This is a citation \cite{author2023}.

\bibliographystyle{plain}
\bibliography{references}
\end{document}
```

## Bibliography File (references.bib)
```bibtex
@article{author2023,
  title={A Great Paper},
  author={Smith, John and Doe, Jane},
  journal={Journal of Science},
  volume={42},
  pages={123--145},
  year={2023},
  publisher={Academic Press}
}

@book{smith2022,
  title={The Book Title},
  author={Smith, John},
  year={2022},
  publisher={Publisher Name},
  address={City, Country}
}
```

## Citation Styles
```latex
% Different citation commands
\cite{author2023}           % (Author, 2023)
\citep{author2023}          % (Author, 2023)
\citet{author2023}          % Author (2023)
\citeauthor{author2023}     % Author
\citeyear{author2023}       % 2023
```

## Bibliography Styles
```latex
\bibliographystyle{plain}     % (Author, Year)
\bibliographystyle{abbrv}    % Abbreviated
\bibliographystyle{alpha}    % [Aut23]
\bibliographystyle{unsrt}    % Unsorted
```

## Multiple References
```latex
\cite{author2023,smith2022}
\cite{author2023,smith2022,another2021}
```

## Custom Bibliography
```latex
\begin{thebibliography}{9}
\bibitem{author2023}
Smith, J. and Doe, J. (2023).
\newblock A Great Paper.
\newblock \emph{Journal of Science}, 42:123--145.
\end{thebibliography}
```

## BibTeX Entry Types
```bibtex
@article{}     % Journal article
@book{}        % Book
@inproceedings{} % Conference paper
@misc{}        % Miscellaneous
@phdthesis{}   % PhD thesis
@mastersthesis{} % Master's thesis
@techreport{}  % Technical report
@manual{}      % Manual
```
