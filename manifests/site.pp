node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  include profile::ssh_server

  notify {'Processing Complete':}
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}

node minecraft.home.com {
  include role::minecraft_server
]
