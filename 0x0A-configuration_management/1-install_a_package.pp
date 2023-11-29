#!usr/bin/pup
# 1-install_a_package.pp

# Ensure python3-pip is installed
package { 'python3-pip':
  ensure => installed,
}

# Install Flask and a compatible version of Werkzeug using pip
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

package { 'Werkzeug':
  ensure   => '2.1.1', # or another version that is compatible with Flask 2.1.0
  provider => 'pip3',
  require  => Package['python3-pip'],
}
