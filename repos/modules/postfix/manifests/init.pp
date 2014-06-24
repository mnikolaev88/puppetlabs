class postfix (
  $postfix_package = hiera('postfix_package'),
  $postfix_service = hiera('postfix_service'),
  $postfix_path = hiera('postfix_path'),
  $postfix_key = hiera('postfix_key'),
  $postfix_keypath = hiera('postfix_keypath'),
) {
  Class['postfix::install'] -> Class['postfix::config'] ~> Class['postfix::command'] ~> Class['postfix::service']
  
  include postfix::install
  include postfix::config
  include postfix::command
  include postfix::service
  #include openssl
}


