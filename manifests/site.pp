node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  notify {'Processing Complete':}
  
  file {'/root/README':
    owner => root,
  }
}
