# This creates a manifest that kills a process killmenow

exec { 'killmenow':
  command => 'pkill killmenow',
  path    => ['/bin', '/usr/bin', '/usr/local/bin'],
  onlyif  => 'pgrep killmenow',
}
