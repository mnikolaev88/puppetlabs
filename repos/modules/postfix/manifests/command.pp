class postfix::command {
  exec { "postfix509":
    path => "/bin:/usr/bin",
    command => "[ -d ${postfix::postfix_keypath} ] && openssl req -new -newkey rsa:1024 -days 365 -nodes -x509 -subj \"/C=ES/ST=Madrid/L=Carabanchel/O=LEONARDODAVINCI/OU=ASIR/CN=${postfix::postfix_key}\" -keyout ${postfix::postfix_keypath}/${postfix::postfix_key}.key -out ${postfix::postfix_keypath}/${postfix::postfix_key}.crt",
    onlyif => "[ ! -s ${postfix::postfix_keypath}/${postfix::postfix_key}.key -o ! -s ${postfix::postfix_keypath}/${postfix::postfix_key}.crt ]",
  }
}
