[
  .[]
  | select(.level == "error")
  | {
      timestamp,
      message
    }
]
