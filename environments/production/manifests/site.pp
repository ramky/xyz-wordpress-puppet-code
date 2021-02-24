node 'ip-172-31-71-184.ec2.internal' {
  class { '::mysql::server':
    root_password    => 'strongpassword',
    override_options => {
      'mysqld' => { 'max_connections' => '1024' }
    }
  }
  include mysql_server
}

#  include apache2
node default {
  notify { 'This node did not match any of the listed definitions.': }
}
