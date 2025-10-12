# Gemini Instructions for Deep Learning 101

## Project Context
Deep Learning 101 is a comprehensive LaTeX educational book with advanced features including automated glossary, subject index, and difficulty level indicators. The project uses a sophisticated build system with multiple compilation passes.

## Core Architecture

### Document Structure
- **Main Document**: `main.tex` - Central file with packages, commands, and document structure
- **Chapter Organization**: Modular structure with `chapters/chapXX.tex` including `chapters/chapXX-secYY.tex`
- **Glossary System**: `chapters/glossary.tex` with technical term definitions
- **Build System**: `Makefile` with 6-pass compilation process

### Advanced Features
1. **Glossary Integration**: Automatic cross-referencing with `\gls{term}` command
2. **Index Generation**: Hierarchical indexing with `\index{term!subterm}` syntax
3. **Difficulty Levels**: Color-coded indicators using `\difficulty{beginner|intermediate|advanced}`
4. **Mathematical Notation**: Custom commands for vectors, matrices, norms

## LaTeX Package Dependencies

### Essential Packages
```latex
\usepackage{makeidx}           % Index generation
\usepackage{glossaries}        % Glossary system
\usepackage{amsmath,amssymb}   % Mathematics
\usepackage{hyperref}          % Cross-references
\usepackage{xcolor}            % Color support for difficulty levels
```

### Build Dependencies
- `pdflatex` - Primary LaTeX compiler
- `biber` - Bibliography processing
- `makeglossaries` - Glossary processing
- `makeindex` - Index processing

## Content Development Guidelines

### Difficulty Level Implementation
```latex
\section{Section Title}
\label{sec:section-name}
\difficulty{beginner}  % or intermediate, advanced

% Content with appropriate complexity
```

### Glossary Usage Pattern
```latex
% First occurrence of technical terms
The \gls{neural-network} uses \gls{backpropagation} for training.

% Subsequent occurrences
Neural networks can be trained using various optimization methods.
```

### Index Entry Patterns
```latex
% Hierarchical indexing
\index{deep learning!introduction}
\index{machine learning!neural networks}
\index{optimization!gradient descent}
\index{applications!computer vision}
```

## Build Process Understanding

### 6-Pass Compilation
1. **Initial Compilation**: Basic LaTeX processing
2. **Bibliography**: Biber processes references
3. **Glossary**: Makeglossaries processes glossary entries
4. **Index**: Makeindex processes index entries
5. **Reference Resolution**: Cross-references and citations
6. **Final Compilation**: Complete document generation

### Build Commands
```bash
make clean    # Remove all build artifacts
make pdf      # Complete compilation process
```

## Content Quality Standards

### Mathematical Content
- Use proper mathematical notation with custom commands
- Provide intuitive explanations before mathematical derivations
- Include step-by-step derivations for complex concepts
- Ensure mathematical accuracy and consistency

### Technical Writing
- Match content complexity to difficulty level
- Use clear, accessible language for target audience
- Include practical examples and applications
- Maintain consistent terminology throughout

### Cross-Reference Management
- Use descriptive labels: `\label{sec:neural-networks}`
- Create meaningful references: `\ref{sec:neural-networks}`
- Ensure all references resolve correctly
- Test compilation to verify reference integrity

## File Organization Patterns

### Chapter Structure
```
chapters/
├── chap01.tex              # Chapter file
├── chap01-sec01.tex        # Section files
├── chap01-sec02.tex
├── glossary.tex           # Glossary definitions
├── acknowledgements.tex   # Front matter
└── notation.tex           # Mathematical notation
```

### Content Integration
- Each chapter file includes multiple sections
- Sections contain difficulty indicators and content
- Glossary entries are defined once, used throughout
- Index entries are distributed throughout content

## Development Workflow

### Adding New Content
1. **Create Section File**: `chapters/chapXX-secYY.tex`
2. **Add Difficulty Level**: `\difficulty{appropriate-level}`
3. **Include Glossary Entries**: Use `\gls{term}` for technical terms
4. **Add Index Entries**: Use `\index{term}` throughout content
5. **Update Chapter File**: Include new section in chapter
6. **Test Compilation**: Verify `make clean && make pdf` works

### Glossary Management
1. **Define Terms**: Add to `chapters/glossary.tex`
2. **Use in Content**: First occurrence with `\gls{term}`
3. **Match Difficulty**: Ensure definitions match content level
4. **Test Integration**: Verify glossary appears in final PDF

### Index Development
1. **Add Entries**: Use `\index{term}` throughout content
2. **Hierarchical Structure**: Use `\index{main!subcategory}`
3. **Comprehensive Coverage**: Include technical and conceptual topics
4. **Test Generation**: Verify index appears in final PDF

## Quality Assurance

### Pre-Commit Checklist
- [ ] All glossary terms properly defined
- [ ] Index entries are meaningful and hierarchical
- [ ] Difficulty levels appropriate for content
- [ ] Cross-references resolve correctly
- [ ] Build process completes successfully
- [ ] Mathematical notation is consistent
- [ ] Content matches target difficulty level

### Testing Protocol
```bash
# Clean build environment
make clean

# Full compilation test
make pdf

# Verify output
ls -la main.pdf
```

## Common Patterns

### Section Template
```latex
% Chapter X, Section Y: Title
\section{Section Title}
\label{sec:section-name}
\difficulty{beginner|intermediate|advanced}

% Introduction with glossary entries
The \gls{technical-term} is a fundamental concept...

% Main content with index entries
\index{main topic!subtopic}

% Examples and applications
\subsection{Examples}
% Content with appropriate difficulty level

% Index entries for section
\index{topic!examples}
```

### Glossary Entry Template
```latex
\newglossaryentry{term-name}{
    name={Display Name},
    description={Clear, accessible definition appropriate for difficulty level.}
}
```

### Index Entry Patterns
```latex
\index{deep learning!introduction}
\index{machine learning!neural networks}
\index{optimization!gradient descent}
\index{applications!computer vision}
\index{mathematics!linear algebra}
```

## Troubleshooting Guide

### Build Issues
- **Glossary not appearing**: Check `\loadglsentries{chapters/glossary}`
- **Index not generating**: Verify `\makeindex` and `\printindex`
- **Compilation errors**: Check package dependencies
- **Cross-reference failures**: Ensure unique labels

### Content Issues
- **Difficulty mismatch**: Review content complexity vs. indicator
- **Missing glossary entries**: Add terms to glossary.tex
- **Incomplete index**: Add relevant index entries
- **Mathematical errors**: Verify notation and derivations

## Contributing Guidelines

### For Content Contributors
- Follow difficulty level guidelines strictly
- Use appropriate `\difficulty{}` indicators
- Add glossary entries for all technical terms
- Include comprehensive index entries
- Test compilation before submitting

### For Technical Reviewers
- Verify mathematical accuracy
- Check difficulty level appropriateness
- Ensure proper glossary and index usage
- Validate build process
- Test all cross-references

This instruction set provides comprehensive guidance for maintaining the advanced features of the Deep Learning 101 book while ensuring consistent, high-quality contributions.
