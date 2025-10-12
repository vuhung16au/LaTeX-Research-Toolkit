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
- ✅ Chapter 3: Probability and Information Theory (complete)
- ✅ Chapter 4: Numerical Computation (complete)
- ✅ Chapter 5: Classical Machine Learning Algorithms (complete)
- ✅ Chapter 6: Deep Feedforward Networks (complete)
- ✅ Chapter 7: Regularization for Deep Learning (complete)
- ✅ Chapter 8: Optimization for Training Deep Models (complete)
- ✅ Chapter 9: Convolutional Networks (complete)
- ✅ Chapter 10: Sequence Modeling (complete)
- ✅ Chapter 11: Practical Methodology (complete)
- ✅ Chapter 12: Applications (complete)
- ✅ Chapter 13: Linear Factor Models (complete)
- ✅ Chapter 14: Autoencoders (complete)
- ✅ Chapter 15: Representation Learning (complete)
- ✅ Chapter 16: Structured Probabilistic Models (complete)
- ✅ Chapter 17: Monte Carlo Methods (complete)
- ✅ Chapter 18: Confronting the Partition Function (complete)
- ✅ Chapter 19: Approximate Inference (complete)
- ✅ Chapter 20: Deep Generative Models (complete)
- ✅ Front matter (Acknowledgements, Notation)
- ✅ Book infrastructure (main.tex, Makefile, bibliography)
- ✅ Extended bibliography with modern references

**Book Statistics:**
- 📖 186 pages
- 📝 20 chapters covering fundamentals to advanced topics
- 🎓 Comprehensive coverage from basics to research frontiers

## File Structure

```
Deep-Learning-101/
├── main.tex                    # Main book file
├── Makefile                    # Build automation
├── references.bib              # Bibliography (expanded with modern references)
├── README.md                   # This file
├── SUMMARY.txt                 # Book summary
├── .gitignore                  # Build artifact exclusion
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
    ├── chap03.tex             # Chapter 3: Probability and Information Theory
    ├── chap04.tex             # Chapter 4: Numerical Computation
    ├── chap05.tex             # Chapter 5: Classical Machine Learning
    ├── chap06.tex             # Chapter 6: Deep Feedforward Networks
    ├── chap07.tex             # Chapter 7: Regularization
    ├── chap08.tex             # Chapter 8: Optimization
    ├── chap09.tex             # Chapter 9: Convolutional Networks
    ├── chap10.tex             # Chapter 10: Sequence Modeling
    ├── chap11.tex             # Chapter 11: Practical Methodology
    ├── chap12.tex             # Chapter 12: Applications
    ├── chap13.tex             # Chapter 13: Linear Factor Models
    ├── chap14.tex             # Chapter 14: Autoencoders
    ├── chap15.tex             # Chapter 15: Representation Learning
    ├── chap16.tex             # Chapter 16: Structured Probabilistic Models
    ├── chap17.tex             # Chapter 17: Monte Carlo Methods
    ├── chap18.tex             # Chapter 18: Confronting the Partition Function
    ├── chap19.tex             # Chapter 19: Approximate Inference
    └── chap20.tex             # Chapter 20: Deep Generative Models
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
