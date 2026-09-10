.users
| sort_by(.id)
| map({
    id,
    username: .name,
    status: (if .active then "active" else "inactive" end),
    permissions: (
      if .role == "admin"
      then ["read", "write"]
      else ["read"]
      end
    )
  })
