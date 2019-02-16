node default {
  file {'/root/README':
    ensure  => file,
    content => 'hello',
    }
  notify {'this is a test':
    }
}
