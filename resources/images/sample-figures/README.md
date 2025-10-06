# Sample Figures Directory

This directory contains sample figures for LaTeX documents.

## Figure Types
- **Charts and Graphs**: Statistical plots, bar charts, line graphs
- **Diagrams**: Flowcharts, network diagrams, process diagrams
- **Images**: Photos, illustrations, screenshots
- **Mathematical Plots**: Function graphs, mathematical visualizations

## File Formats
- **PDF**: Vector graphics, best for LaTeX
- **PNG**: Raster images, good for photos
- **JPG**: Compressed images, smaller file sizes
- **EPS**: Encapsulated PostScript, legacy format

## Usage Examples
```latex
% Basic figure inclusion
\includegraphics[width=0.8\textwidth]{sample-figure.pdf}

% Figure with caption
\begin{figure}[h]
\centering
\includegraphics[width=0.6\textwidth]{chart.pdf}
\caption{Sample chart showing data trends}
\label{fig:sample}
\end{figure}
```

## Best Practices
1. Use vector formats (PDF, EPS) for diagrams and charts
2. Use raster formats (PNG, JPG) for photos
3. Keep file sizes reasonable
4. Use descriptive filenames
5. Include alt text for accessibility

## Creating Figures
- Use tools like TikZ, PGFPlots for mathematical plots
- Use external tools like Inkscape, Adobe Illustrator for diagrams
- Use Python matplotlib, R ggplot2 for statistical plots
- Use LaTeX beamer for presentation figures
