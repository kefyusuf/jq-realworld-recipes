[
  .users[]
  | select(.active == true)
  | {
      id,
      name,
      role
    }
]
