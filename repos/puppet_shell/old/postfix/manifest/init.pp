class postfix (
  $postfix_package = hiera('postfix_package'),
  $postfix_service = hiera('postfix_service'),
) {
  Class['postfix::install'] ~> Class['postfix::service'] -> Class['postfix::config']
  
  include postfix::install
  include postfix::service
  include postfix::config
}
