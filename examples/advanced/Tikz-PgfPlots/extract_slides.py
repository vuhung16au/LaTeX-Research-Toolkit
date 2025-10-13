#!/usr/bin/env python3
"""
Script to extract individual slides from tikz-pgfplots.tex
"""

import re
import os

def extract_slides():
    # Read the main file
    with open('tikz-pgfplots.tex', 'r') as f:
        content = f.read()
    
    # Find all frame blocks
    frame_pattern = r'\\begin\{frame\}.*?\\end\{frame\}'
    frames = re.findall(frame_pattern, content, re.DOTALL)
    
    # Create slides directory if it doesn't exist
    os.makedirs('slides', exist_ok=True)
    
    # Extract each frame to a separate file
    for i, frame in enumerate(frames, 1):
        slide_num = f"{i:02d}"
        filename = f"slides/slide{slide_num}.tex"
        
        with open(filename, 'w') as f:
            f.write(frame)
        
        print(f"Created {filename}")
    
    print(f"Extracted {len(frames)} slides")

if __name__ == "__main__":
    extract_slides()
