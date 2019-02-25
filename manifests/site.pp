node default {
  include role::minecraft_server
}

node /^web/ { 
  include role::app_server
  include role::MyTestRole
}
node /^db/ {
  include role::db_server
}
