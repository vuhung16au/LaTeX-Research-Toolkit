# Resume Templates

This directory contains professional resume and CV templates for various purposes, all featuring "Vu Hung Nguyen" as the example name.

## Available Templates

### 1. resume-classic.tex
**Wilson Resume/CV Template**
- Based on the Wilson Resume template from LaTeXTemplates.com
- Full-featured CV with comprehensive sections
- Includes: Personal profile, education, employment history, technical skills, interests, and referees
- Best for: Academic positions, detailed CVs, comprehensive career histories
- Requires: `structure.tex` (included)

### 2. resume-modern.tex
**Stylish CV Template**
- Modern design with gray highlighting and tabular layout
- Clean, professional appearance
- Includes: Objective, work experience, education, skills, projects, and certifications
- Best for: Professional positions, modern companies, creative roles
- Works with: pdflatex

### 3. resume-pro.tex
**Medium Length Professional CV**
- Clean, ATS-friendly format
- Professional structure with clear sections
- Includes: Education, experience, technical skills, notable projects, certifications, and publications
- Best for: Industry positions, software engineering roles, professional applications
- Requires: `resume.cls` (included)

### 4. resume-developer.tex
**Developer CV with Visual Elements**
- Eye-catching design with skill bars and bubble charts
- Modern layout with icons and visual elements
- Includes: Visual skill representation, experience timeline, education, languages, hobbies
- Best for: Developer positions, tech startups, creative tech companies
- Requires: `developercv.cls` (included)

### 5. resume-single-page-dev.tex
**Single Page Developer Resume**
- Optimized for Applicant Tracking Systems (ATS)
- Compact, one-page format
- Clean, minimalist design
- Includes: Education, experience, projects, technical skills, certifications
- Best for: Job applications, quick reviews, online submissions, ATS systems
- Works with: pdflatex

## Building the Templates

### Build all resume PDFs:
```bash
make pdf
```

### Build a specific resume:
```bash
pdflatex resume-classic.tex
pdflatex resume-modern.tex
pdflatex resume-pro.tex
pdflatex resume-developer.tex
pdflatex resume-single-page-dev.tex
```

### Clean build artifacts:
```bash
make clean
```

## Customization

To customize any template for your own use:

1. Replace "Vu Hung Nguyen" with your name
2. Update contact information (email, phone, address)
3. Modify education history with your degrees
4. Update work experience with your positions
5. Adjust technical skills to match your expertise
6. Add or remove sections as needed

## Supporting Files

- `structure.tex` - Formatting and layout definitions for resume-classic.tex
- `resume.cls` - Custom LaTeX class for resume-pro.tex
- `developercv.cls` - Custom LaTeX class for resume-developer.tex

## References

These templates are based on popular resume templates from:
- https://www.latextemplates.com/cat/curricula-vitae
- https://en.wikibooks.org/wiki/LaTeX/Curriculum_Vitae
- https://www.overleaf.com/gallery/tagged/cv

## License

These templates maintain their original licenses:
- Wilson Resume/CV: CC BY-NC-SA 3.0
- Stylish CV: CC BY-NC-SA 3.0
- Medium Length Professional CV: Original license
- Developer CV: MIT License
- Single Page Developer Resume: Public Domain
