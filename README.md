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

Run all examples:

```bash
chmod +x examples.sh
./examples.sh
```

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
