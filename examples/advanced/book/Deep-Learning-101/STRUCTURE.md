# Deep Learning 101 - Book Structure

## Overview

This book is organized as a comprehensive deep learning textbook with 20 chapters divided into three main parts. Each chapter is now modularized into multiple sections for easier maintenance and navigation.

## Modular Architecture

All chapters follow a consistent modular structure:
- Main chapter file (e.g., `chap03.tex`) contains the chapter header and uses `\input{}` to include section files
- Section files (e.g., `chap03-sec01.tex`) contain individual sections with their own labels and content
- This structure makes it easy to:
  - Edit individual sections independently
  - Reorder sections if needed
  - Maintain and extend content
  - Collaborate on different sections simultaneously

## Chapter Breakdown

### Part I: Basic Math and Machine Learning Foundation

**Chapter 1: Introduction** (5 sections)
- Section 1: What is Deep Learning?
- Section 2: Historical Context
- Section 3: Fundamental Concepts
- Section 4: Structure of This Book
- Section 5: Prerequisites and Resources

**Chapter 2: Linear Algebra** (6 sections)
- Section 1: Scalars, Vectors, Matrices, and Tensors
- Section 2: Matrix Operations
- Section 3: Identity and Inverse Matrices
- Section 4: Linear Dependence and Span
- Section 5: Eigendecomposition
- Section 6: Singular Value Decomposition

**Chapter 3: Probability and Information Theory** (5 sections)
- Section 1: Probability Distributions
- Section 2: Conditional Probability and Bayes' Rule
- Section 3: Expectation, Variance, and Covariance
- Section 4: Common Probability Distributions
- Section 5: Information Theory Basics

**Chapter 4: Numerical Computation** (4 sections)
- Section 1: Overflow and Underflow
- Section 2: Gradient-Based Optimization
- Section 3: Constrained Optimization
- Section 4: Numerical Stability and Conditioning

**Chapter 5: Classical Machine Learning Algorithms** (6 sections)
- Section 1: Linear Regression
- Section 2: Logistic Regression
- Section 3: Support Vector Machines
- Section 4: Decision Trees and Ensemble Methods
- Section 5: k-Nearest Neighbors
- Section 6: Comparison with Deep Learning

### Part II: Practical Deep Networks

**Chapter 6: Deep Feedforward Networks** (5 sections)
- Section 1: Introduction to Feedforward Networks
- Section 2: Activation Functions
- Section 3: Output Units and Loss Functions
- Section 4: Backpropagation
- Section 5: Design Choices

**Chapter 7: Regularization for Deep Learning** (6 sections)
- Section 1: Parameter Norm Penalties
- Section 2: Dataset Augmentation
- Section 3: Early Stopping
- Section 4: Dropout
- Section 5: Batch Normalization
- Section 6: Other Regularization Techniques

**Chapter 8: Optimization for Training Deep Models** (5 sections)
- Section 1: Gradient Descent Variants
- Section 2: Momentum-Based Methods
- Section 3: Adaptive Learning Rate Methods
- Section 4: Second-Order Methods
- Section 5: Optimization Challenges

**Chapter 9: Convolutional Networks** (4 sections)
- Section 1: The Convolution Operation
- Section 2: Pooling
- Section 3: CNN Architectures
- Section 4: Applications of CNNs

**Chapter 10: Sequence Modeling: Recurrent and Recursive Nets** (6 sections)
- Section 1: Recurrent Neural Networks
- Section 2: Backpropagation Through Time
- Section 3: Long Short-Term Memory (LSTM)
- Section 4: Gated Recurrent Units (GRU)
- Section 5: Sequence-to-Sequence Models
- Section 6: Advanced Topics

**Chapter 11: Practical Methodology** (5 sections)
- Section 1: Performance Metrics
- Section 2: Baseline Models and Debugging
- Section 3: Hyperparameter Tuning
- Section 4: Data Preparation and Preprocessing
- Section 5: Production Considerations

**Chapter 12: Applications** (7 sections)
- Section 1: Computer Vision Applications
- Section 2: Natural Language Processing
- Section 3: Speech Recognition and Synthesis
- Section 4: Healthcare and Medical Imaging
- Section 5: Reinforcement Learning Applications
- Section 6: Other Applications
- Section 7: Ethical Considerations

### Part III: Deep Learning Research

**Chapter 13: Linear Factor Models** (4 sections)
- Section 1: Probabilistic PCA
- Section 2: Factor Analysis
- Section 3: Independent Component Analysis
- Section 4: Sparse Coding

**Chapter 14: Autoencoders** (4 sections)
- Section 1: Undercomplete Autoencoders
- Section 2: Regularized Autoencoders
- Section 3: Variational Autoencoders
- Section 4: Applications of Autoencoders

**Chapter 15: Representation Learning** (4 sections)
- Section 1: What Makes a Good Representation?
- Section 2: Transfer Learning and Domain Adaptation
- Section 3: Self-Supervised Learning
- Section 4: Contrastive Learning

**Chapter 16: Structured Probabilistic Models for Deep Learning** (3 sections)
- Section 1: Graphical Models
- Section 2: Inference in Graphical Models
- Section 3: Deep Learning and Structured Models

**Chapter 17: Monte Carlo Methods** (4 sections)
- Section 1: Sampling and Monte Carlo Estimators
- Section 2: Markov Chain Monte Carlo
- Section 3: Importance Sampling
- Section 4: Applications in Deep Learning

**Chapter 18: Confronting the Partition Function** (4 sections)
- Section 1: The Partition Function Problem
- Section 2: Contrastive Divergence
- Section 3: Noise-Contrastive Estimation
- Section 4: Score Matching

**Chapter 19: Approximate Inference** (4 sections)
- Section 1: Variational Inference
- Section 2: Mean Field Approximation
- Section 3: Loopy Belief Propagation
- Section 4: Expectation Propagation

**Chapter 20: Deep Generative Models** (5 sections)
- Section 1: Variational Autoencoders (VAEs)
- Section 2: Generative Adversarial Networks (GANs)
- Section 3: Normalizing Flows
- Section 4: Diffusion Models
- Section 5: Applications and Future Directions

## Statistics

- **Total Chapters:** 20
- **Total Sections:** 96
- **Average Sections per Chapter:** 4.8
- **Modular Files:** 20 chapter files + 96 section files = 116 total LaTeX files
- **Organization:** 3 parts (Basic Math & ML Foundation, Practical Deep Networks, Deep Learning Research)

## Benefits of This Structure

1. **Maintainability:** Each section is a separate file, making updates and fixes easier
2. **Collaboration:** Multiple authors can work on different sections simultaneously
3. **Reusability:** Sections can be reordered or reused in different contexts
4. **Clarity:** Clear separation of concerns and topics
5. **Extensibility:** New sections can be added without modifying large files
6. **Version Control:** Git diffs are cleaner with smaller, focused files

## Building the Book

The book uses a standard LaTeX build process:

```bash
make pdf    # Build the complete book
make clean  # Remove build artifacts
```

All section files are automatically included through `\input{}` commands in the main chapter files.
