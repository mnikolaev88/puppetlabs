class dovecot::command {
  exec { "dovecot509":
    path => "/bin:/usr/bin",
    command => "[ -d ${dovecot::dovecot_keypath} ] && openssl req -new -newkey rsa:1024 -days 365 -nodes -x509 -subj \"/C=ES/ST=Madrid/L=Carabanchel/O=LEONARDODAVINCI/OU=ASIR/CN=${dovecot::dovecot_key}\" -keyout ${dovecot::dovecot_keypath}/${dovecot::dovecot_key}.key -out ${dovecot::dovecot_keypath}/${dovecot::dovecot_key}.crt",
    onlyif => "[ ! -s ${dovecot::dovecot_keypath}/${dovecot::dovecot_key}.key -o ! -s ${dovecot::dovecot_keypath}/${dovecot::dovecot_key}.crt ]",
  }
}
