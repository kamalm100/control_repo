class profile::base {
  user {'admin':
    ensure => present
  }
  
  file {'/root/server.info':
     ensure  => present,
     content => "welcome to ${fqdn}\n",
  }
  
  include profile::ssh_server
}
