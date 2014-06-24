class motd {
  file {'motd file':
    ensure => file,
    path => "/etc/motd",
    owner => root,
    group => root,
    mode => 0644,
    content => "Proyecto: Servidor central de Administración de servicios y automatización con Puppet
Empresa: 	IESLEONARDODAVINCI
Encargado: 	Mariyan Nikolaev
nodo: $fqdn
prcesadores: $processorcount, procesador: $processor0
OS: $operatingsystem , Version: $operatingsystemrelease kernel: $kernelrelease
Puppet: $puppetversion , Ruby: $rubyversion
",

  }

}
