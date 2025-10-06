#!/bin/bash
# LaTeX compilation script
# Usage: ./compile.sh [filename]

# Set default filename if not provided
if [ $# -eq 0 ]; then
    FILENAME="main"
else
    FILENAME="$1"
fi

# Remove extension if provided
FILENAME="${FILENAME%.*}"

echo "Compiling LaTeX document: $FILENAME.tex"

# Check if file exists
if [ ! -f "$FILENAME.tex" ]; then
    echo "Error: $FILENAME.tex not found"
    exit 1
fi

# Create build directory
mkdir -p build

# Compile LaTeX document
echo "Running pdflatex..."
pdflatex -output-directory=build "$FILENAME.tex"

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "First compilation successful"
    
    # Run bibtex if bibliography exists
    if [ -f "references.bib" ] || [ -f "build/references.bib" ]; then
        echo "Running bibtex..."
        bibtex "build/$FILENAME"
        
        # Run pdflatex again for bibliography
        echo "Running pdflatex again for bibliography..."
        pdflatex -output-directory=build "$FILENAME.tex"
    fi
    
    # Final compilation
    echo "Running final pdflatex..."
    pdflatex -output-directory=build "$FILENAME.tex"
    
    # Check if PDF was created
    if [ -f "build/$FILENAME.pdf" ]; then
        echo "Compilation successful! PDF created: build/$FILENAME.pdf"
        
        # Copy PDF to main directory
        cp "build/$FILENAME.pdf" .
        echo "PDF copied to main directory: $FILENAME.pdf"
    else
        echo "Error: PDF not created"
        exit 1
    fi
else
    echo "Error: LaTeX compilation failed"
    exit 1
fi

echo "Compilation complete!"
