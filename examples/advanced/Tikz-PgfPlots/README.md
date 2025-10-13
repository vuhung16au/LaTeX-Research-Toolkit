# TikZ and PGFPlots Showcase

This folder demonstrates comprehensive examples of TikZ and PGFPlots capabilities in LaTeX, featuring 50 slides covering various graphics and visualization techniques.

## Contents

### Main Files
- `tikz-pgfplots.tex` - Main LaTeX presentation with 50 slides
- `README.md` - This documentation file
- `Makefile` - Build automation

## Features Demonstrated

### 1. Basic Drawing
- Simple lines, grid, and points
- Basic shapes (rectangles, circles, arcs)
- Coordinate systems and grids

### 2. 2D Shapes and Arcs
- Rectangles with different styles and fills
- Circles and ellipses
- Arcs and curves with various decorations

### 3. Triangles
- Labeled triangles with vertices
- Triangles with angle marks
- Right triangles with measurements

### 4. Venn Diagrams
- Two-set and three-set Venn diagrams
- Overlapping circles with labels
- Set operations visualization

### 5. Probability Trees
- Simple and complex probability trees
- Two-stage decision trees
- Probability labels and branching

### 6. Basic Plotting
- Simple function plots
- Multiple function plots with legends
- Area under curves

### 7. Advanced Plotting
- Exponential and logarithmic functions
- Parametric curves
- Scatter plots with data points

### 8. Shading Between Curves
- Area between two curves
- Multiple shaded regions
- Integration regions

### 9. External Data Plotting
- CSV data import and visualization
- Real statistical results
- Trend analysis

### 10. Flowcharts and Decision Trees
- Simple and complex flowcharts
- Decision trees with loops
- Process flow visualization

### 11. Annotated Geometry Figures
- Labeled polygons and circles
- Angle arcs and measurements
- Geometric constructions

### 12. 3D Plots
- Surface plots
- 3D parametric curves
- Contour plots

### 13. Animation
- Animated function plots
- Motion graphics (static examples)

### 14. Advanced Axis Styling
- Logarithmic scales
- Custom tick marks
- Grid control

### 15. Mathematical Diagrams
- State machines
- Commutative diagrams
- Markov chains

### 16. TikZ Libraries Integration
- Matrix of nodes
- Decorative paths
- 3D graphics

### 17. Forest Package
- Tree structures
- Hierarchical data

### 18. istgame Package
- Game theory diagrams
- Decision trees

### 19. Advanced Examples
- Neural network diagrams
- Heatmap visualizations
- Polar plots
- Error bars
- Box plots

## Building the Presentation

### Prerequisites
- LaTeX distribution (TeX Live, MiKTeX, etc.)
- Required packages:
  - tikz
  - pgfplots
  - pgfplotstable
  - forest
  - istgame
  - animate
  - amsmath
  - amsfonts
  - amssymb

### Build Commands
```bash
# Generate PDF
make pdf

# Clean generated files
make clean

# Clean and rebuild
make clean && make pdf
```

### Manual Build
```bash
# Compile the presentation
pdflatex tikz-pgfplots.tex
pdflatex tikz-pgfplots.tex  # Run twice for proper references
```

## Slide Structure

The presentation contains 50 slides organized into the following sections:

1. **Basic Drawing** (3 slides)
2. **2D Shapes and Arcs** (3 slides)
3. **Triangles** (3 slides)
4. **Venn Diagrams** (2 slides)
5. **Probability Trees** (2 slides)
6. **Basic Plotting** (3 slides)
7. **Advanced Plotting** (3 slides)
8. **Shading Between Curves** (2 slides)
9. **External Data Plotting** (1 slide)
10. **Flowcharts** (2 slides)
11. **Geometry Figures** (2 slides)
12. **3D Plots** (2 slides)
13. **Animation** (1 slide)
14. **Advanced Axis Styling** (2 slides)
15. **Mathematical Diagrams** (2 slides)
16. **TikZ Libraries** (3 slides)
17. **Forest Package** (1 slide)
18. **istgame Package** (1 slide)
19. **Advanced Examples** (8 slides)
20. **Summary** (1 slide)

## Code Examples

Each slide includes:
- Visual demonstration of the feature
- LaTeX code snippets (in small text)
- Brief explanations

## Learning Objectives

After studying this presentation, you will be able to:

1. Create basic TikZ drawings and shapes
2. Plot functions and data with PGFPlots
3. Design flowcharts and decision trees
4. Create mathematical diagrams
5. Visualize 3D data and surfaces
6. Animate graphics (conceptually)
7. Style plots and axes professionally
8. Use advanced TikZ libraries
9. Create publication-ready graphics

## Troubleshooting

### Common Issues
1. **Missing packages**: Install required LaTeX packages
2. **Compilation errors**: Ensure all dependencies are installed
3. **Font issues**: Use standard LaTeX fonts or install required font packages

### Package Installation
```bash
# For TeX Live
tlmgr install tikz pgfplots pgfplotstable forest istgame animate

# For MiKTeX
miktex packages install tikz pgfplots pgfplotstable forest istgame animate
```

## Contributing

To add new examples:
1. Create a new slide following the existing format
2. Include both visual and code examples
3. Update this README if adding new sections
4. Test compilation with `make pdf`

## License

This showcase is part of the LaTeX Research Toolkit and follows the same licensing terms.
