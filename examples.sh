#!/usr/bin/env bash

set -euo pipefail

if ! command -v jq >/dev/null 2>&1; then
  echo "jq is required. Install jq 1.7+ and try again." >&2
  exit 1
fi

run_recipe() {
  local title="$1"
  local recipe="$2"
  local data="$3"

  printf '\n== %s ==\n' "$title"
  jq -f "$recipe" "$data"
}

run_recipe "Active users" "recipes/01-active-users.jq" "data/users.json"
run_recipe "User summary" "recipes/02-user-summary.jq" "data/users.json"
run_recipe "Completed order total" "recipes/03-completed-order-total.jq" "data/orders.json"
run_recipe "Orders by customer" "recipes/04-orders-by-customer.jq" "data/orders.json"
run_recipe "Error logs" "recipes/05-error-logs.jq" "data/logs.json"
run_recipe "API-style projection" "recipes/06-api-style-projection.jq" "data/users.json"
