class plantilla (
  $plantilla_package = hiera('plantilla_package'),
  $plantilla_service = hiera('plantilla_service'),
  $plantilla_path = hiera('plantilla_path'),
  $plantilla_conf = hiera('plantilla_conf'),
) {
  Class['plantilla::install'] -> Class['plantilla::config'] ~> Class['plantilla::service'] -> Class['plantilla::command']
  
  include plantilla::install
  include plantilla::config
  include plantilla::service
  include plantilla::command
}
