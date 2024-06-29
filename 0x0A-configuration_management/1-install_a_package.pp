# This file install a specific version of the Flask (2.1.0) with pip3

package { 'Flask':
  ensure => '2.1.0',
  provider => 'pip3',
}

package { 'werkzeug':
  ensure => '2.0.2',
  provider => 'pip3',
}
