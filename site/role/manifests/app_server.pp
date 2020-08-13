class role::app_server {
  include profile::base
  include profile::web
  include profile::app
  include profile::ssh_server
}
