# Version Control for LaTeX

## Git Setup for LaTeX
```bash
# Initialize repository
git init

# Create .gitignore for LaTeX
cat > .gitignore << EOF
# LaTeX auxiliary files
*.aux
*.log
*.out
*.toc
*.bbl
*.blg
*.fdb_latexmk
*.fls
*.synctex.gz
*.nav
*.snm
*.vrb

# Temporary files
*~
.DS_Store
Thumbs.db

# Build directories
build/
output/
EOF
```

## Git Workflow
```bash
# Daily workflow
git add .
git commit -m "Add new section on methodology"
git push origin main

# Before major changes
git checkout -b feature/new-chapter
# Make changes
git add .
git commit -m "Add new chapter"
git checkout main
git merge feature/new-chapter
```

## LaTeX-specific Git Hooks
```bash
# Pre-commit hook to compile document
#!/bin/bash
# .git/hooks/pre-commit
pdflatex main.tex
if [ $? -ne 0 ]; then
    echo "LaTeX compilation failed"
    exit 1
fi
```

## Collaborative Features
```bash
# Use Git LFS for large files
git lfs track "*.pdf"
git lfs track "*.png"
git lfs track "*.jpg"

# Branch naming convention
git checkout -b feature/author-name-section-name
git checkout -b fix/equation-formatting
git checkout -b update/bibliography
```

## Backup Strategies
```bash
# Multiple remotes
git remote add origin https://github.com/user/repo.git
git remote add backup https://gitlab.com/user/repo.git

# Push to multiple remotes
git push origin main
git push backup main
```

## LaTeX Project Structure
```
project/
├── .git/
├── .gitignore
├── main.tex
├── sections/
├── figures/
├── bibliography/
└── README.md
```

## Best Practices
1. **Commit often** - Small, frequent commits
2. **Use descriptive messages** - "Add methodology section" not "Update"
3. **Test before commit** - Ensure document compiles
4. **Use branches** - Separate features and fixes
5. **Backup regularly** - Multiple remote repositories
