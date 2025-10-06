#!/bin/bash
# LaTeX cleanup script
# Removes auxiliary files created during compilation

echo "Cleaning LaTeX auxiliary files..."

# Remove common auxiliary files
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.fdb_latexmk *.fls *.synctex.gz
rm -f *.nav *.snm *.vrb *.idx *.ind *.ilg *.lot *.lof
rm -f *.backup *.bak *~

# Remove build directory if it exists
if [ -d "build" ]; then
    echo "Removing build directory..."
    rm -rf build
fi

echo "Cleanup complete!"
