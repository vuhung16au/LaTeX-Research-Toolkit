# Deep Learning 101 - Copilot Instructions

You are an AI assistant helping with the development of "Deep Learning 101: A Comprehensive Guide to Neural Networks and Machine Learning" - an advanced LaTeX textbook on deep learning.

## Project Context

This is a comprehensive deep learning textbook with:
- **20 chapters** organized into 3 parts (Basic Math & ML Foundation, Practical Deep Networks, Deep Learning Research)
- **96 sections** across all chapters
- **Modular LaTeX structure** with separate files for each section
- **Advanced features**: Glossary, Index, Bibliography, Cross-references
- **Multiple paper sizes**: A4 and A5 support
- **Visual aids**: TikZ/PGFPlots diagrams, tables, examples

## Writing Style & Language

- **Clear and accessible language**: Make complex concepts understandable
- **Academic tone**: Professional but not overly formal
- **Progressive difficulty**: Start with intuition, then build to mathematical rigor
- **Australian context**: Use Australia/Sydney for examples when location-specific
- **Inclusive language**: Use diverse examples and avoid bias

## Content Structure Requirements

### Each Chapter Must Include:
1. **Learning Objectives** - Clear goals at chapter start
2. **Intuition Sections** - Explain concepts before diving into math
3. **Visual Aids** - TikZ/PGFPlots diagrams, tables, examples
4. **Summary Section** - Key concepts recap
5. **Exercises Section** - Maximum 16 problems:
   - 6 Easy problems
   - 5 Medium problems  
   - 5 Hard problems
   - Hints for each problem
6. **Takeaways Section** - Main concepts and formulas summary

### Each Section Must Include:
- **Intuitive explanations** before mathematical content
- **Visual examples** using LaTeX (TikZ, PGFPlots, tables)
- **Real-world applications** where relevant
- **Progressive complexity** from basic to advanced

## LaTeX Guidelines

### File Structure:
- Main chapter files: `chapters/chapXX.tex`
- Section files: `chapters/chapXX-secYY.tex`
- Use `\input{}` to include sections
- Maintain consistent labeling: `\label{chap:name}`, `\label{sec:name}`

### Visual Elements:
- **Diagrams**: Use TikZ/PGFPlots for mathematical visualizations
- **Tables**: Use booktabs package for professional tables
- **Figures**: Include captions and labels for cross-referencing
- **Math**: Use amsmath, amsthm for mathematical content

### Content Organization:
- Use `\section{}`, `\subsection{}`, `\subsubsection{}` consistently
- Include `\begin{theorem}`, `\begin{definition}`, `\begin{example}` environments
- Add `\begin{problem}` for exercises
- Use `\cref{}` for cross-references

## Technical Requirements

### Build Process:
- Support both A4 and A5 paper sizes
- Use `make pdf-a4`, `make pdf-a5`, `make all` commands
- Ensure all LaTeX compiles without errors
- Maintain glossary and index consistency

### Quality Standards:
- **Mathematical accuracy**: All formulas must be correct
- **Consistent notation**: Use defined symbols from notation.tex
- **Cross-references**: Link related concepts across chapters
- **Bibliography**: Proper citations using biblatex
- **Accessibility**: Clear structure for screen readers

## Content Guidelines

### Difficulty Progression:
- **Beginner**: Basic concepts, intuitive explanations
- **Intermediate**: Mathematical foundations, practical applications
- **Advanced**: Research topics, cutting-edge techniques

### Examples and Applications:
- Use Australia/Sydney context for location-specific examples
- Include diverse, inclusive examples
- Connect theory to real-world applications
- Show practical implementation considerations

### Problem Design:
- **Easy**: Basic concept application, single-step problems
- **Medium**: Multi-step reasoning, application of concepts
- **Hard**: Research-level problems, complex derivations
- **Hints**: Provide guidance without giving away solutions

## Maintenance Tasks

When updating content:
1. **Update glossary** for new technical terms
2. **Update index** for new concepts and topics
3. **Verify cross-references** are working
4. **Test compilation** with `make clean && make pdf`
5. **Check visual elements** render correctly
6. **Validate mathematical notation** consistency

## Collaboration Guidelines

- **Modular approach**: Edit individual section files
- **Consistent style**: Follow established patterns
- **Version control**: Use clear commit messages
- **Documentation**: Update STRUCTURE.md when adding content
- **Testing**: Always test compilation after changes

## Quality Assurance

Before submitting changes:
- [ ] LaTeX compiles without errors
- [ ] All cross-references work
- [ ] Glossary and index updated
- [ ] Visual elements render correctly
- [ ] Mathematical notation is consistent
- [ ] Content follows established style guide
- [ ] Examples are inclusive and diverse
- [ ] Problems have appropriate difficulty levels
