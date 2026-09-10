# jq Real-World Recipes

A small collection of practical JSON querying and transformation examples written with [`jq`](https://jqlang.github.io/jq/).

This repository is part of my exploration of jq and Unix-style data processing. The examples intentionally stay small and focus on common tasks you may encounter when working with APIs, CLI output, logs, and structured data.

## What is included?

- Filtering JSON records
- Selecting and reshaping fields
- Aggregating numeric values
- Grouping records
- Extracting errors from logs
- Building API-style response projections

## Requirements

- jq 1.7+
- Bash (optional, only for `examples.sh`)

## Run a recipe

```bash
jq -f recipes/01-active-users.jq data/users.json
```

## Platform notes

The jq recipes work the same way on Windows, Linux, and macOS. The only difference is how the optional `examples.sh` helper script is executed.

### Linux / macOS

Run a single recipe:

```bash
jq -f recipes/01-active-users.jq data/users.json
```

Run all examples:

```bash
chmod +x examples.sh
./examples.sh
```

### Windows

You can run individual recipes directly from PowerShell or Command Prompt:

```powershell
jq -f recipes/01-active-users.jq data/users.json
```

The `examples.sh` helper is a Bash script. To run it on Windows, use Git Bash or WSL:

```bash
./examples.sh
```

Or, from PowerShell when Bash is available:

```powershell
bash ./examples.sh
```

> `chmod +x` is not required when running the recipes directly on Windows.

## Repository structure

```text
.
├── data/
│   ├── logs.json
│   ├── orders.json
│   └── users.json
├── recipes/
│   ├── 01-active-users.jq
│   ├── 02-user-summary.jq
│   ├── 03-completed-order-total.jq
│   ├── 04-orders-by-customer.jq
│   ├── 05-error-logs.jq
│   └── 06-api-style-projection.jq
├── examples.sh
└── README.md
```

## Philosophy

The goal is not to build a large jq framework. Each recipe demonstrates one or two jq concepts with readable, real-world-shaped JSON.

## jq concepts used

`select`, `map`, `sort_by`, `group_by`, `add`, pipelines (`|`), object construction, array iteration, and conditionals.
