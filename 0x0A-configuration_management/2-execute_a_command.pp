# this Puppet  create a manifest that kills a process named killmenow using the exec resource and the pkill command.

exec { 'killmenow':
  command => 'pkill killmenow',
  provider => 'shell',
}
