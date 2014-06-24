class apache (
 	$apache_service = hiera('apache_service'),
)
{
  Package['apache package'] -> File['apacheindex file'] ~> Service['apache service']

  package { 'apache package':
    ensure => installed,
    name => hiera('apache_package'),
  }

  file {'apacheindex file':
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    content => template('apache/index.html.erb'),
    path => hiera('apache_index'),
  }

  service {'apache service':
    ensure => running,
    name => ${'apache::apache_service'},
  }
}
