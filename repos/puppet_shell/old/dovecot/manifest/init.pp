class dovecot (
  $dovecot_package = hiera('dovecot_package'),
  $dovecot_service = hiera('dovecot_service'),
) {
  Class['dovecot::install'] ~> Class['dovecot::service'] -> Class['dovecot::config']
  
  include dovecot::install
  include dovecot::service
  include dovecot::config
}
