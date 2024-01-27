# Change the OS configuration so that it is possible to login with the holberton user and open a file without any error message.

exec {'edit hard limit':
  command => "/bin/sed -i '/holberton hard/c holberton hard nofile 10000' /etc/security/limits.conf",
  before  => Exec['restart system']
}

exec {'edit soft limit':
  command => "/bin/sed -i '/holberton soft/c holberton soft nofile 10000' /etc/security/limits.conf",
  before  => Exec['restart system']
}

exec {'restart system':
  command => '/sbin/sysctl -p'
}
