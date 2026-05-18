# Nytro TUI
- Debugging tool for nytrogen (and probably any other low level language).

## Features
- **AST Reader:** Reading AST and calculating amount of nodes (each line is a node).
- **Output Reader:** Showing the programs output.

## Upcoming features
- **Nytrogen parser and semantic analyser integration:** For reporting syntax and semantic errors.
- **Build system** Building programs directly using the lua configuration already present in nytrogen.
- **Mini text editor** For quick editing.
- **Specialised error view** for debugging.

## Archeticture
- Currently only a monolith in `src/main.cpp`.

## License
This project is licensed under the GPL-3.0 License - see the [LICENSE](LICENSE) file for details.
