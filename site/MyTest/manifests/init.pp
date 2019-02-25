class MyTest {
  file {'/root/test':
    ensure => directory,
    }
  file {'/root/test/hello.txt':
    ensure => present,
    content => 'this is ${fqdn}',
    }
}
