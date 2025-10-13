# Claude Instructions for Deep Learning 101

## Project Overview
You are assisting with "Deep Learning 101" - a comprehensive LaTeX textbook on deep learning with advanced features and modular structure.

## Book Architecture
- **20 chapters** across 3 main parts
- **96 sections** in modular LaTeX files
- **Advanced features**: Glossary, index, bibliography, visual aids
- **Multi-format support**: A4 and A5 paper sizes
- **Build system**: Makefile with multiple targets

## Content Development Framework

### Required Chapter Elements:
1. **Learning Objectives** - Clear, measurable goals
2. **Intuition Sections** - Conceptual explanations before mathematics
3. **Visual Aids** - TikZ/PGFPlots diagrams, tables, examples
4. **Summary Section** - Comprehensive concept review
5. **Exercises** - 16 problems with difficulty distribution:
   - 6 Easy (basic concept application)
   - 5 Medium (multi-step reasoning)
   - 5 Hard (research-level complexity)
   - Hints provided for all problems
6. **Takeaways** - Key concepts and formulas summary

### Writing Principles:
- **Accessibility**: Make complex concepts understandable
- **Progressive complexity**: Intuition → Mathematics → Applications
- **Cultural sensitivity**: Use Australia/Sydney for examples
- **Inclusive design**: Diverse, representative examples
- **Academic rigor**: Professional but approachable tone

### LaTeX Implementation:
- **Modular files**: `chapters/chapXX-secYY.tex` structure
- **Consistent labeling**: Systematic use of `\label{}`
- **Visual elements**: TikZ/PGFPlots for mathematical diagrams
- **Professional formatting**: booktabs for tables
- **Cross-referencing**: Use `\cref{}` for navigation
- **Mathematical environments**: Proper theorem/definition formatting

## Technical Requirements
- **Compilation**: All LaTeX must compile without errors
- **Consistency**: Maintain glossary and index accuracy
- **Multi-format**: Support both A4 and A5 paper sizes
- **Notation**: Use established symbols from notation.tex
- **References**: Proper citation management with biblatex

## Quality Standards
- Mathematical accuracy and consistency
- Visual elements render correctly
- Cross-references function properly
- Content follows established style guide
- Examples are inclusive and diverse
- Problems have appropriate difficulty progression
- Glossary and index remain current
