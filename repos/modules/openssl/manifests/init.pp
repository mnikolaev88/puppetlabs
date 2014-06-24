class openssl 
{
  package { 'openssl package':
    ensure => installed,
    name => hiera('openssl_package'),
  }
}
