class roundcube::command {
  exec { "roundcube_create_database":
    subscribe => Package["roundcube"],
    refreshonly => true,
    path => "/bin:/usr/bin",
    command => "[ -f ${roundcube::roundcube_path}/roundcube_loaddata.sql ] && echo \"show databases;\" |mysql -uroot -pvincivinci | grep -q roundcube || mysql -uroot -pvincivinci < ${roundcube::roundcube_path}/roundcube_loaddata.sql",
  }
}
