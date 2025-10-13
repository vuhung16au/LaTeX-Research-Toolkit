# GitHub Copilot Instructions for Deep Learning 101

## Project Overview
You are assisting with "Deep Learning 101" - a comprehensive LaTeX textbook on deep learning with 20 chapters, 96 sections, and advanced features including glossary, index, and visual aids.

## Code Context
- **Language**: LaTeX with TikZ/PGFPlots for visualizations
- **Structure**: Modular files (chapters/chapXX-secYY.tex)
- **Build**: Makefile with A4/A5 paper support
- **Features**: Bibliography, glossary, index, cross-references

## Writing Guidelines

### Content Requirements:
- **Learning Objectives** at chapter start
- **Intuition sections** before mathematical content
- **Visual aids** using TikZ/PGFPlots
- **Summary and Takeaways** sections
- **Exercises**: 16 problems (6 easy, 5 medium, 5 hard) with hints

### LaTeX Best Practices:
- Use `\input{}` for section inclusion
- Consistent labeling: `\label{chap:name}`, `\label{sec:name}`
- Professional tables with booktabs
- Proper theorem environments
- Cross-references with `\cref{}`

### Style Guidelines:
- Clear, accessible language
- Progressive difficulty (intuition → math)
- Australian context for examples
- Inclusive, diverse examples
- Academic but approachable tone

## Technical Standards
- All LaTeX must compile without errors
- Maintain glossary and index consistency
- Support both A4 and A5 paper sizes
- Use established notation from notation.tex
- Include proper citations and references

## Quality Checklist
- [ ] LaTeX compiles successfully
- [ ] Visual elements render correctly
- [ ] Cross-references work properly
- [ ] Mathematical notation is consistent
- [ ] Content follows style guide
- [ ] Examples are inclusive and diverse
