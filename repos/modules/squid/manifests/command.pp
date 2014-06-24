class squid::command {
  exec { "squid_create_database":
    subscribe => Package["squid"],
    refreshonly => true,
    path => "/bin:/usr/bin",
    command => "[ -f ${squid::squid_path}/squid_loaddata.sql ] && echo \"show databases;\" |mysql -uroot -pvincivinci | grep -q squid || mysql -uroot -pvincivinci < ${squid::squid_path}/squid_loaddata.sql",
  }
}
