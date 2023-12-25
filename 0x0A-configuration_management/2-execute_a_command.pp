# Executes a bash script.
#!/usr/bin/bash
exec { 'kill':
  command => 'pkill -f killmenow',
  path    => ['/usr/bin', '/usr/sbin']
}
