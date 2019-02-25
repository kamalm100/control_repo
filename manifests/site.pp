node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  
node 'minecraft.home.com' {
  include role::minecraft_server
  include profile::ssh_server

  }

node /^web/ {
  include role::app_server
  include profile::ssh_server
  }

node /^db/ {
  include role::db_server
  include profile::ssh_server
  }
