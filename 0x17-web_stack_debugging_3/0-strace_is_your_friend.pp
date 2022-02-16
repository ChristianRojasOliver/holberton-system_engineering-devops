# while I was debbuging I found that on file wp-settings.php one of the typo was incorrect
# I test it so it can find the file and then rename it with the command sed
# Finally i give the path for all the sbin and bin files so the system can reboot
exec { 'fix typo':
  onlyif  => 'test -e /var/www/html/wp-settings.php',
  command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
