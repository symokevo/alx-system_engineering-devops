# Debbugging Apache returning 500 error.

service { 'apache2':
  ensure => running
}

exec { 'sed phpp|php':
  command => '/bin/sed -i "s|phpp|php|" /var/www/html/wp-settings.php >> /dev/null',
  notify  => Service['apache2']
}
