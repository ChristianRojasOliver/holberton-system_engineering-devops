# Made by Christian Rojas
exec { 'sed_and_restart':
  command => 'sed -i s/15/4096/ /etc/default/nginx; service nginx restart',
  path    => ['/bin', '/usr/bin', '/usr/sbin']
}
