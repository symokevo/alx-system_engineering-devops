# Edits the max open files limit for nginx.

exec {'Limit nginx':
  command => "/bin/sed -i '$ c ULIMIT=\"-n 20000\"' /etc/default/nginx",
  before  => Exec['restart']
}

exec {'restart':
  command => '/sbin/sysctl -p && service nginx restart'
}
