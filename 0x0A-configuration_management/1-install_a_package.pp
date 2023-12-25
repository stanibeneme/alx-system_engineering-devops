# install flask from pip3
class { 'python':
  version => 'system',
}

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask',
  path    => ['/usr/bin'],
  unless  => '/usr/bin/pip3 show Flask',
  require => [Package['python3-pip'], Class['python']],
}
