[
  .orders[]
  | select(.status == "completed")
]
| group_by(.customer)
| map({
    customer: .[0].customer,
    orders: length,
    total: (map(.total) | add)
  })
