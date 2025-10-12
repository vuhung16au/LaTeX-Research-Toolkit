# GitHub Copilot Instructions for Deep Learning 101

## Project Overview
This is a comprehensive LaTeX book on Deep Learning with advanced features including glossary, index, and difficulty levels. The book is structured as a complete educational resource with 20 chapters covering fundamentals to advanced research topics.

## Key Features to Maintain

### 1. Glossary and Index System
- **Glossary**: Technical terms are defined in `chapters/glossary.tex`
- **Usage**: Use `\gls{term}` for first occurrence of glossary terms
- **Index**: Use `\index{term}` or `\index{term!subterm}` for hierarchical indexing
- **Build Process**: Glossary and index are automatically processed during compilation

### 2. Difficulty Levels
- **Command**: Always use `\difficulty{level}` for sections
- **Levels**: 
  - `beginner` - Basic concepts, intuitive explanations
  - `intermediate` - Technical details, some background assumed  
  - `advanced` - Cutting-edge research, complex mathematics
- **Visual**: Color-coded indicators (green/orange/red)

### 3. LaTeX Structure
- **Main File**: `main.tex` contains document structure and packages
- **Chapters**: Each chapter in `chapters/chapXX.tex` includes sections
- **Sections**: Individual sections in `chapters/chapXX-secYY.tex`
- **Build**: Use `make clean && make pdf` for compilation

## Coding Guidelines

### LaTeX Best Practices
1. **Package Usage**: Use established packages (amsmath, hyperref, glossaries, makeidx)
2. **Cross-references**: Use `\label{}` and `\ref{}` for internal references
3. **Math**: Use proper mathematical notation with `\vect{}`, `\mat{}`, `\norm{}`
4. **Theorems**: Use defined environments (theorem, definition, example, etc.)

### Content Structure
```latex
\section{Section Title}
\label{sec:section-name}
\difficulty{beginner|intermediate|advanced}

% Content with glossary entries
\gls{neural-network} and \gls{backpropagation} are key concepts.

% Index entries
\index{deep learning!concepts}
\index{machine learning!neural networks}
```

### Glossary Entries
- Add new terms to `chapters/glossary.tex`
- Use clear, accessible definitions
- Match difficulty level of content
- Include mathematical notation when appropriate

### Index Entries
- Use hierarchical structure: `\index{main!subcategory}`
- Include both technical terms and conceptual topics
- Add entries throughout content, not just at section ends

## File Organization

### Core Files
- `main.tex` - Main document with packages and structure
- `Makefile` - Build automation with 6-pass compilation
- `references.bib` - Bibliography database
- `chapters/glossary.tex` - Glossary definitions

### Chapter Structure
- `chapters/chapXX.tex` - Chapter files that include sections
- `chapters/chapXX-secYY.tex` - Individual section files
- `chapters/acknowledgements.tex` - Front matter
- `chapters/notation.tex` - Mathematical notation guide

## Build Process

### Compilation Steps
1. Initial LaTeX compilation
2. Bibliography processing (biber)
3. Glossary processing (makeglossaries)
4. Index processing (makeindex)
5. Reference resolution
6. Final compilation

### Dependencies
- pdflatex
- biber (bibliography)
- makeglossaries (glossary)
- makeindex (index)

## Content Guidelines

### Writing Style
- Use clear, accessible language appropriate for difficulty level
- Provide intuitive explanations before mathematical details
- Include practical examples and applications
- Maintain consistent notation throughout

### Mathematical Content
- Provide step-by-step derivations for complex concepts
- Use appropriate mathematical notation
- Include visual aids when helpful
- Ensure mathematical accuracy

### Code Examples
- Include practical, runnable code examples
- Use clear, well-commented code
- Provide expected outputs and explanations
- Match difficulty level of surrounding content

## Common Tasks

### Adding New Content
1. Create section file in appropriate chapter directory
2. Add difficulty level indicator
3. Include glossary entries for technical terms
4. Add relevant index entries
5. Update chapter file to include new section
6. Test compilation with `make clean && make pdf`

### Updating Glossary
1. Add new terms to `chapters/glossary.tex`
2. Use `\gls{term}` in content for first occurrence
3. Ensure definitions match content difficulty level
4. Test compilation to verify glossary processing

### Adding Index Entries
1. Use `\index{term}` throughout content
2. Use hierarchical structure for related concepts
3. Include both technical and conceptual topics
4. Test compilation to verify index generation

## Quality Assurance

### Before Committing
- Ensure `make clean && make pdf` completes successfully
- Verify all glossary entries are properly defined
- Check that index entries are meaningful and hierarchical
- Confirm difficulty levels are appropriate for content
- Test that all cross-references work correctly

### Content Review
- Technical accuracy of mathematical content
- Appropriateness of difficulty level indicators
- Clarity and accessibility of explanations
- Consistency with book style and notation
- Proper integration of glossary and index entries

## Troubleshooting

### Common Issues
- **Glossary not appearing**: Check `\loadglsentries{chapters/glossary}` in main.tex
- **Index not generating**: Verify `\makeindex` and `\printindex` commands
- **Build failures**: Check all required packages are installed
- **Cross-reference errors**: Ensure all labels are unique and properly referenced

### Build Verification
```bash
make clean
make pdf
# Should complete without errors and generate main.pdf
```

## Contributing Guidelines

### For Contributors
- Follow difficulty level guidelines in `CONTRIBUTING.md`
- Use appropriate `\difficulty{}` indicators
- Add glossary entries for technical terms
- Include relevant index entries
- Test compilation before submitting

### For Reviewers
- Verify technical accuracy
- Check difficulty level appropriateness
- Ensure proper glossary and index usage
- Test build process
- Validate cross-references

This instruction set ensures consistent, high-quality contributions to the Deep Learning 101 book while maintaining the advanced features of glossary, index, and difficulty levels.
