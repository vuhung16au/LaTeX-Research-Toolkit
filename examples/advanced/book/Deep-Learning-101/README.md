# Deep Learning 101

**Author:** Vu Hung Nguyen  
**License:** Creative Commons Attribution 4.0 International (CC BY 4.0)

## Overview

This book provides a comprehensive introduction to deep learning, covering fundamental mathematics, practical techniques, and advanced research topics.

## Book Structure

The book is organized into three main parts:

### Part I: Basic Math and Machine Learning Foundation
- Chapter 1: Introduction
- Chapter 2: Linear Algebra
- Chapter 3: Probability and Information Theory
- Chapter 4: Numerical Computation
- Chapter 5: Classical Machine Learning Algorithms

### Part II: Practical Deep Networks
- Chapter 6: Deep Feedforward Networks
- Chapter 7: Regularization for Deep Learning
- Chapter 8: Optimization for Training Deep Models
- Chapter 9: Convolutional Networks
- Chapter 10: Sequence Modeling: Recurrent and Recursive Nets
- Chapter 11: Practical Methodology
- Chapter 12: Applications

### Part III: Deep Learning Research
- Chapter 13: Linear Factor Models
- Chapter 14: Autoencoders
- Chapter 15: Representation Learning
- Chapter 16: Structured Probabilistic Models for Deep Learning
- Chapter 17: Monte Carlo Methods
- Chapter 18: Confronting the Partition Function
- Chapter 19: Approximate Inference
- Chapter 20: Deep Generative Models

## Building the Book

To compile the book to PDF:

```bash
make pdf
```

To clean build artifacts:

```bash
make clean
```

### Requirements

- LaTeX distribution (TeX Live, MiKTeX, or similar)
- pdflatex
- biber (for bibliography)

## Current Status

**Completed:**
- ✅ Full table of contents structure
- ✅ Chapter 1: Introduction (complete with 5 sections)
- ✅ Chapter 2: Linear Algebra (complete with 6 sections)
- ✅ Front matter (Acknowledgements, Notation)
- ✅ Book infrastructure (main.tex, Makefile, bibliography)

**In Progress:**
- ⏳ Chapters 3-20 (placeholder structure created, detailed content to be added)

## File Structure

```
Deep-Learning-101/
├── main.tex                    # Main book file
├── Makefile                    # Build automation
├── references.bib              # Bibliography
├── README.md                   # This file
└── chapters/                   # Chapter files
    ├── acknowledgements.tex    # Acknowledgements
    ├── notation.tex            # Notation guide
    ├── chap01.tex             # Chapter 1 (includes sections)
    ├── chap01-sec01.tex       # Chapter 1, Section 1
    ├── chap01-sec02.tex       # Chapter 1, Section 2
    ├── chap01-sec03.tex       # Chapter 1, Section 3
    ├── chap01-sec04.tex       # Chapter 1, Section 4
    ├── chap01-sec05.tex       # Chapter 1, Section 5
    ├── chap02.tex             # Chapter 2 (includes sections)
    ├── chap02-sec01.tex       # Chapter 2, Section 1
    ├── chap02-sec02.tex       # Chapter 2, Section 2
    ├── chap02-sec03.tex       # Chapter 2, Section 3
    ├── chap02-sec04.tex       # Chapter 2, Section 4
    ├── chap02-sec05.tex       # Chapter 2, Section 5
    ├── chap02-sec06.tex       # Chapter 2, Section 6
    ├── chap03.tex             # Chapter 3 (placeholder)
    ├── ...                    # Chapters 4-20 (placeholders)
    └── chap20.tex             # Chapter 20 (placeholder)
```

## License

This work is licensed under the Creative Commons Attribution 4.0 International License.  
To view a copy of this license, visit: http://creativecommons.org/licenses/by/4.0/

## Acknowledgements

This book draws inspiration from:
- "Deep Learning" by Goodfellow, Bengio, and Courville
- "Understanding Deep Learning" by Simon J.D. Prince
- The broader deep learning research community

## Contributing

Contributions, corrections, and suggestions are welcome. Please ensure any contributions align with the educational goals and style of the book.
