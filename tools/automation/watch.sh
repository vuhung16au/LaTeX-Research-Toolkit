#!/bin/bash
# LaTeX auto-compilation script
# Watches for changes and automatically compiles

echo "Starting LaTeX auto-compilation..."
echo "Watching for changes in .tex files..."

# Check if inotify-tools is installed
if ! command -v inotifywait &> /dev/null; then
    echo "Error: inotify-tools not installed"
    echo "Install with: sudo apt-get install inotify-tools"
    exit 1
fi

# Watch for changes and compile
inotifywait -m -e modify,create,delete,move --format '%w%f %e' *.tex | while read file event; do
    echo "File $file changed ($event)"
    echo "Compiling..."
    
    # Run compilation script
    ./tools/build-scripts/compile.sh
    
    if [ $? -eq 0 ]; then
        echo "Compilation successful!"
    else
        echo "Compilation failed!"
    fi
    
    echo "Watching for changes..."
done
