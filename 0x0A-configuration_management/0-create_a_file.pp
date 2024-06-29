# Create a file with content, owner, group, and mode

file { '/tmp/school':
  content => 'I love Puppet',
  mode    => '0774',
  owner   => 'www-data',
  group   => 'www-data',
}
