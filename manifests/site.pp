node default {
  include role::MyTestRole}

node /^db/ {
  include role::db_server}
