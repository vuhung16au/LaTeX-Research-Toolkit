# Gemini Instructions for Deep Learning 101

## Project Context
You are working on "Deep Learning 101" - a comprehensive LaTeX textbook covering deep learning from fundamentals to advanced research topics.

## Book Structure
- **20 chapters** in 3 parts: Basic Math & ML Foundation, Practical Deep Networks, Deep Learning Research
- **96 sections** with modular LaTeX files
- **Advanced features**: Glossary, index, bibliography, visual aids
- **Multiple formats**: A4 and A5 paper support

## Content Development Guidelines

### Chapter Structure (Required for each chapter):
1. **Learning Objectives** - Clear goals at start
2. **Intuition Sections** - Explain concepts before math
3. **Visual Aids** - TikZ/PGFPlots diagrams and examples
4. **Summary Section** - Key concepts recap
5. **Exercises** - 16 problems (6 easy, 5 medium, 5 hard) with hints
6. **Takeaways** - Main concepts and formulas

### Writing Style:
- **Clear and accessible** language for complex topics
- **Progressive difficulty** from intuition to mathematical rigor
- **Australian context** for location-specific examples
- **Inclusive examples** with diverse perspectives
- **Academic tone** that remains approachable

### LaTeX Requirements:
- **Modular structure**: Separate files for sections
- **Consistent labeling**: `\label{chap:name}`, `\label{sec:name}`
- **Visual elements**: TikZ/PGFPlots for diagrams
- **Professional tables**: Use booktabs package
- **Cross-references**: Use `\cref{}` for linking
- **Theorem environments**: Proper mathematical formatting

## Technical Standards
- All content must compile without LaTeX errors
- Maintain consistency in glossary and index
- Support both A4 and A5 paper sizes
- Use established notation and symbols
- Include proper citations and references

## Quality Assurance
Before finalizing any content:
- Verify LaTeX compilation
- Check visual elements render correctly
- Ensure cross-references work
- Update glossary and index
- Validate mathematical accuracy
- Confirm inclusive and diverse examples

