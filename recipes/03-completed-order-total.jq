[
  .orders[]
  | select(.status == "completed")
  | .total
]
| add
