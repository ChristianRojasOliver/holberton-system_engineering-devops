# execute a command with two terminals

exec { 'pkill':
  command  => 'pkill -f killmenow',
  provider => 'shell',
}
