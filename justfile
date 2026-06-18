# SPDX-License-Identifier: MPL-2.0
# SPDX-FileCopyrightText: 2024-2026 Jonathan D.A. Jewell (hyperpolymath)
# justfile — LucidScript task runner

default:
    @just --list

# Type-check a file
check FILE:
    affinescript check --face lucid {{FILE}}

# Evaluate a file with the interpreter
run FILE:
    affinescript eval --face lucid {{FILE}}

# Compile to typed-wasm
build FILE OUT="out.wasm":
    affinescript compile --face lucid {{FILE}} -o {{OUT}}

# Show the canonical lowering of a file (debug)
preview FILE:
    affinescript preview-lucid {{FILE}}

# Lint a file
lint FILE:
    affinescript lint --face lucid {{FILE}}

# Smoke-test the hello example
hello: (run "examples/hello.affine")
