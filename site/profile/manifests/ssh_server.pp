class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDovZqblFL0tykNuB3KdgmcaSdtBv4x20jgOLHgp0Usnkm/pinrA3PpRXqNuYDxO37Q+Kw3TrP+1F+cli4SmI5vBXkUuubEsBTaH1KfrmwvwBcPnnJCZWsxK9V0OuHE3N3z/hhBshYhn4kCG211h1UvdTA/fsEGEu4rwGkji3M9EIMejcTeE39a3YkpO66rC+NlQRrbL+UQOx13YsmFENrAmDutKXZBxQbiR0gT31Y6IcC3+kvrPS98u1mP4I/Q1JyqyzgcAgiB/XSaFiuotdpfsY590OuP9US8MH5mbJHtLdFhLa4EDjx1HA0ksEw5VK1n6PDPM0HQIhe+cFd0x7N/',
        }  
}
