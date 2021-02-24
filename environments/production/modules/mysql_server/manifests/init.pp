# Installs and starts mysql
class mysql_server {
  package { 'mysql-server':
    ensure => installed,
  }

  service { 'mysql::server':
    ensure  => true,
    enable  => true,
    require => Package['mysql-server'],
  }
}
