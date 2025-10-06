# LaTeX Research Toolkit

A comprehensive LaTeX toolkit for academic research, papers, and theses. Features essential packages, commands, templates, and examples to quickly refresh your LaTeX skills for high-quality scientific writing.

## 🚀 Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/vuhung16au/LaTeX-Research-Toolkit.git
   cd LaTeX-Research-Toolkit
   ```

2. **Choose a template**
   - Academic papers: `templates/academic-paper/`
   - Thesis: `templates/thesis/`
   - Presentations: `templates/presentation/`

3. **Start learning**
   - Beginners: Start with `docs/getting-started/`
   - Examples: Check `examples/` folder
   - Practice: Try `exercises/` folder

## 📁 Repository Structure

```
LaTeX-Research-Toolkit/
├── docs/                          # Documentation and theory
│   ├── getting-started/           # Installation and basics
│   ├── theory/                    # LaTeX theory and concepts
│   ├── best-practices/            # Academic writing guidelines
│   └── troubleshooting/          # Common issues and solutions
├── templates/                     # Ready-to-use templates
│   ├── academic-paper/            # Journal and conference papers
│   ├── thesis/                    # Master's and PhD theses
│   ├── presentation/              # Beamer presentations
│   └── letter/                    # Academic letters
├── examples/                      # Sample files and demonstrations
│   ├── basic/                     # Beginner examples
│   ├── intermediate/              # Intermediate examples
│   ├── advanced/                  # Advanced examples
│   └── research-specific/         # Research-focused examples
├── packages/                      # Custom packages and styles
├── resources/                     # Additional resources
│   ├── bibliography/              # Sample bibliography files
│   ├── images/                    # Sample figures and images
│   └── fonts/                     # Font resources
├── tools/                         # Helper scripts and tools
│   ├── build-scripts/             # Compilation scripts
│   ├── linting/                   # Code quality tools
│   └── automation/                # Automation scripts
└── exercises/                     # Practice exercises
    ├── beginner/                  # Basic exercises
    ├── intermediate/              # Intermediate exercises
    └── advanced/                  # Advanced exercises
```

## 🎯 Target Audience

- **Researchers** writing academic papers
- **Students** working on theses and dissertations
- **Academics** creating presentations and documents
- **Anyone** wanting to refresh their LaTeX skills

## 📚 Learning Path

### Beginner
1. Start with `docs/getting-started/installation.md`
2. Follow `docs/getting-started/basic-syntax.md`
3. Try `examples/basic/simple-document.tex`
4. Practice with `exercises/beginner/`

### Intermediate
1. Review `docs/theory/` for advanced concepts
2. Study `examples/intermediate/` for practical applications
3. Practice with `exercises/intermediate/`
4. Learn best practices from `docs/best-practices/`

### Advanced
1. Explore `examples/advanced/` for complex examples
2. Create custom packages in `packages/`
3. Practice with `exercises/advanced/`
4. Use automation tools in `tools/`

## 🛠️ Features

- **Comprehensive Documentation**: From basics to advanced topics
- **Ready-to-Use Templates**: Academic papers, theses, presentations
- **Progressive Examples**: From simple to complex
- **Custom Packages**: Reusable LaTeX packages
- **Automation Tools**: Build scripts and linting tools
- **Practice Exercises**: Hands-on learning opportunities
- **Best Practices**: Academic writing guidelines

## 📖 Documentation

- **Getting Started**: Installation and basic usage
- **Theory**: LaTeX concepts and advanced topics
- **Best Practices**: Academic writing guidelines




## 🧰 Build with make

You can compile examples and clean artifacts using `make` both at the repository root and within subfolders.

### Root-level

- Show help:
  ```bash
  make help
  ```
- Build all example PDFs:
  ```bash
  make pdf
  ```
- Clean build artifacts in all examples:
  ```bash
  make clean
  ```

### Subfolders

Most directories include a `Makefile` with `help`, `pdf`, and `clean` targets.

- Examples (build PDFs in all categories):
  ```bash
  cd examples
  make pdf
  # or build only one category
  cd basic && make pdf
  ```

- Templates (e.g., academic paper templates):
  ```bash
  cd templates/academic-paper
  make pdf
  ```

- Exercises (build PDFs for all levels or per level):
  ```bash
  cd exercises
  make pdf
  # or per level
  cd beginner && make pdf
  ```

To see available targets in any folder, run:
```bash
make help
```
