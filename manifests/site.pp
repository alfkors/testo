node default {
  file {'/root/README':
    ensure  => file,
    content => 'Life if good!',
    owner   => 'root',
  }
  file {'/root/README':
    owner => 'root',
  }
}