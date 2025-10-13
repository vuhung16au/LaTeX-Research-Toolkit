# General Instructions for Deep Learning 101

## Project Summary
"Deep Learning 101" is a comprehensive LaTeX textbook on deep learning with 20 chapters, 96 sections, and advanced features including glossary, index, and visual aids.

## Key Requirements

### Content Structure:
- **Learning Objectives** at chapter start
- **Intuition sections** before mathematical content
- **Visual aids** using TikZ/PGFPlots
- **Summary and Takeaways** sections
- **Exercises**: 16 problems (6 easy, 5 medium, 5 hard) with hints

### Writing Style:
- Clear, accessible language
- Progressive difficulty from intuition to math
- Australian context for examples
- Inclusive, diverse examples
- Academic but approachable tone

### Technical Standards:
- LaTeX compiles without errors
- Modular file structure
- Consistent labeling and cross-references
- Professional visual elements
- Updated glossary and index

### Quality Assurance:
- Test compilation with `make clean && make pdf`
- Verify visual elements render correctly
- Check cross-references work
- Ensure mathematical accuracy
- Confirm inclusive examples
- Validate difficulty progression

## Build Process
- `make pdf-a4` - Build A4 version
- `make pdf-a5` - Build A5 version  
- `make all` - Build both versions
- `make clean` - Remove build artifacts

## Maintenance
When updating content:
1. Update glossary for new terms
2. Update index for new concepts
3. Verify cross-references
4. Test compilation
5. Check visual elements
6. Validate notation consistency
