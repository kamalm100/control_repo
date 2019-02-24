class profile::base {
  user {'admin':
    ensure => present
  }
  
  file {'/root/server.info':
     ensure  => present,
     content => $fqdn,
  }
  
  include profile::ssh_server
}
