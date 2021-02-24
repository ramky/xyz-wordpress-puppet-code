node 'ip-172-31-71-184' {
  include mysql_server
}

#  include apache2
node default {
  notify { 'This node did not match any of the listed definitions.': }
}
