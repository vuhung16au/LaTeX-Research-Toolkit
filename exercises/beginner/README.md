# Beginner LaTeX Exercises

This directory contains beginner-level LaTeX exercises designed to help you learn fundamental LaTeX concepts.

## Homework Assignment Template

The `homework-assignment.tex` file is a comprehensive beginner example demonstrating how to write homework using LaTeX. This template is based on the tutorial video "How to write your homework using LaTeX" and covers essential techniques every student should know.

### Key LaTeX Techniques Demonstrated

1. **Math Mode Basics** - The Riemann Integral
   - Display equations using `\[ ... \]`
   - Mathematical symbols: `\int` (integral), `\sum` (summation), `\lim` (limit)
   - Subscripts with `_` and superscripts with `^`
   
2. **Equation Alignment** - Multi-step Derivations
   - The `align` environment for aligned equations
   - Using `&` (ampersand) before the equals sign to align vertically
   - Creating beautiful, easy-to-read mathematical derivations

3. **Problem Lists** - Numbered Homework Problems
   - The `enumerate` environment for automatic numbering
   - Custom labels: "Problem 1:", "Problem 2:", etc.
   - Nested lists with automatic sub-part lettering (a, b, c)

4. **Tables** - Organizing Data
   - The `table` environment for creating tables
   - The `[h]` positioning parameter to place tables "here" (not floating)
   - Using `\centering`, `\caption`, and `\label`

5. **Cross-Referencing** - Automatic Numbering
   - Using `\label{name}` to mark equations, tables, and figures
   - Using `\ref{name}` to reference them automatically
   - LaTeX handles all numbering changes automatically

6. **Including Figures** - Adding Graphics
   - The `figure` environment with `[h]` positioning
   - Using `\includegraphics` to insert images
   - Adding captions and labels for cross-referencing

### How to Use This Template

1. **Compile the example:**
   ```bash
   make pdf
   ```
   Or compile a single file:
   ```bash
   pdflatex homework-assignment.tex
   ```

2. **Customize for your homework:**
   - Update the title, author, course information in the preamble
   - Change "Problem" to "Question" by modifying the `\setlist` command
   - Add or remove problems as needed
   - Replace the placeholder figure with your own image

3. **Learn from the comments:**
   - The file includes detailed comments explaining each technique
   - Read the comments to understand what each command does

### Tips from the Video

- **Visual vs. Code Editor**: You can use Overleaf's visual editor for simple text, then click on elements to see the underlying LaTeX code
- **Preamble**: Use the preamble to set document-wide settings like margins and custom list formats
- **Version Control**: Use Overleaf's History feature (or git) to track changes and revert if needed

### Additional Practice

Try these exercises to practice what you've learned:
- Modify the Riemann integral to use different bounds or functions
- Add more steps to the derivative derivation
- Create your own table with different data
- Add a real image file to replace the placeholder

## Other Exercises

- `exercise-1.tex` - Basic LaTeX document structure
- `exercise-2.tex` - More practice with equations and lists
- `exercise-3.tex` - Cross-references and labels (`\label`, `\ref`, `\pageref`)
- `exercise-4.tex` - Figures and tables basics (including subfigures)
- `exercise-5.tex` - Bibliography with natbib (`\cite`, `\citet`, `\citep`)
- `exercise-6.tex` - Math alignment and numbering (`align`, matrices, cases)
- `exercise-7.tex` - Page layout and headers/footers (`geometry`, `fancyhdr`)
- `exercise-8.tex` - Custom commands and environments (`\newcommand`, custom environments)
- `exercise-9.tex` - Footnotes, quotes, and hyperlinks (`\footnote`, `\enquote`, `\href`)
- `exercise-10.tex` - Better tables with booktabs (`\toprule`, `\midrule`, `\bottomrule`, `siunitx`)

## Need Help?

- Check the main repository [README.md](../../README.md) for more resources
- Visit [docs/getting-started/](../../docs/getting-started/) for installation and basics
- Explore [examples/basic/](../../examples/basic/) for more examples
