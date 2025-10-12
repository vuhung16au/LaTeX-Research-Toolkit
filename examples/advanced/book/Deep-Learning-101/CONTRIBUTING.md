# Contributing to Deep Learning 101

Thank you for your interest in contributing to Deep Learning 101! This document outlines the guidelines for contributing to this educational resource.

## Difficulty Level Guidelines

When contributing content to this book, please indicate the appropriate difficulty level using the `\difficulty{}` command:

### Difficulty Levels

- **Beginner** (`\difficulty{beginner}`): Content suitable for readers with little to no background in machine learning or deep learning. Includes basic concepts, intuitive explanations, and foundational mathematics.

- **Intermediate** (`\difficulty{intermediate}`): Content for readers with some background in machine learning or mathematics. Assumes familiarity with basic concepts and includes more technical details.

- **Advanced** (`\difficulty{advanced}`): Content for readers with strong mathematical and machine learning backgrounds. Includes cutting-edge research, complex mathematical derivations, and specialized topics.

### Usage Examples

```latex
\section{Introduction to Neural Networks}
\difficulty{beginner}
% Content for beginners...

\section{Backpropagation Algorithm}
\difficulty{intermediate}
% Content for intermediate readers...

\section{Advanced Optimization Techniques}
\difficulty{advanced}
% Content for advanced readers...
```

## Content Guidelines

### Writing Style
- Use clear, accessible language appropriate for the target difficulty level
- Provide intuitive explanations before diving into mathematical details
- Include practical examples and applications
- Use consistent notation throughout the book

### Mathematical Content
- Provide step-by-step derivations for complex mathematical concepts
- Include intuitive explanations alongside mathematical formulations
- Use appropriate mathematical notation as defined in the notation chapter
- Provide visual aids (diagrams, plots) when helpful

### Code and Examples
- Include practical code examples where appropriate
- Use clear, well-commented code
- Provide complete, runnable examples
- Include expected outputs and explanations

## Glossary and Index Guidelines

### Glossary Entries
- Define technical terms using `\gls{term}` for first use
- Ensure definitions are clear and appropriate for the difficulty level
- Add new terms to `chapters/glossary.tex`

### Index Entries
- Add relevant index entries using `\index{term}` or `\index{term!subterm}`
- Use hierarchical indexing for related concepts
- Include both technical terms and conceptual topics

## Chapter Structure

Each chapter should follow this general structure:

1. **Learning Objectives** (for beginner/intermediate chapters)
2. **Introduction** with difficulty level indicator
3. **Main Content** with appropriate difficulty markers
4. **Examples and Applications**
5. **Summary** (for beginner/intermediate chapters)
6. **Exercises** (where appropriate)

## Review Process

1. All contributions will be reviewed for:
   - Technical accuracy
   - Appropriate difficulty level
   - Clarity and accessibility
   - Consistency with book style
   - Proper use of glossary and index entries

2. Mathematical content will be verified for correctness
3. Code examples will be tested for functionality
4. Difficulty levels will be validated for appropriateness

## Getting Started

1. Fork the repository
2. Create a feature branch for your contribution
3. Make your changes following these guidelines
4. Test that the book compiles correctly with `make clean && make pdf`
5. Submit a pull request with a clear description of your changes

## AI Assistant Instructions

This project includes specific instruction policies for AI assistants:

### GitHub Copilot
- See `.github/copilot-instructions.md` for detailed Copilot-specific guidelines
- Includes LaTeX best practices, build process understanding, and content development patterns

### Google Gemini
- See `.github/instructions/gemini.instructions.md` for comprehensive Gemini guidelines
- Covers advanced features, build architecture, and quality assurance protocols

These instruction files ensure AI assistants understand the project's advanced features including glossary, index, and difficulty level systems.

## Questions?

If you have questions about contributing or need clarification on any guidelines, please open an issue or contact the maintainers.

Thank you for helping make Deep Learning 101 a comprehensive and accessible resource for learners at all levels!
