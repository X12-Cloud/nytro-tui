#!/bin/bash
set -e

# Get the absolute path of the script's directory
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Default values
clean_build=false
ARGS=()

# Parse command-line arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -cb|--clean-build) clean_build=true ;;
	*) ARGS+=("$1") ;;
    esac
    shift
done

cd "$SCRIPT_DIR/"

echo "--- Performing a build of Nytrogen TUI---"
if [ "$clean_build" = true ]; then
    rm -rf build/
    cmake -B build
fi

cmake --build build -j$(nproc)
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

echo "--- Build complete ---"
