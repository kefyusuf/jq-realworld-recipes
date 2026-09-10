.users
| map({
    userId: .id,
    displayName: .name,
    email,
    isAdmin: (.role == "admin")
  })
