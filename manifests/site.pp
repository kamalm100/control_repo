node default {
  include role::mytestrole}

node /^db/ {
  include role::db_server}
