class roundcube::config {
  
  File['roundcube.conf file'] -> File['db.inc.php file'] -> File['main.inc.php file'] -> File['roundcube_loaddata.sql file']
 
  file {'roundcube.conf file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/roundcube/${roundcube::roundcube_http_os}",
    path => "${roundcube::roundcube_http_conf}",
  } 

  file {'db.inc.php file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/roundcube/db.inc.php",
    path => "${roundcube::roundcube_path}/db.inc.php",
  } 

  file {'main.inc.php file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/roundcube/main.inc.php",
    path => "${roundcube::roundcube_path}/main.inc.php",
  } 

  file {'roundcube_loaddata.sql file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///modules/roundcube/roundcube_loaddata.sql",
    path => "${roundcube::roundcube_path}/roundcube_loaddata.sql",
  } 
}
