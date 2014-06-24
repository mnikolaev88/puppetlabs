class dovecot (
  $dovecot_package = hiera('dovecot_package'),
  $dovecot_service = hiera('dovecot_service'),
  $dovecot_path = hiera('dovecot_path'),
  $dovecot_key = hiera('dovecot_key'),
  $dovecot_keypath = hiera('dovecot_keypath'),
) {
  Class['dovecot::install'] -> Class['dovecot::config'] ~> Class['dovecot::command'] ~> Class['dovecot::service']
  
  include dovecot::install
  include dovecot::config
  include dovecot::command
  include dovecot::service
}
