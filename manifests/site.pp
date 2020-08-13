node default {
}

node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure  => file,
    content => "You are here: ${fqdn}\n",
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
