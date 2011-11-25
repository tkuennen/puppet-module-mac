class mac::keyboard($layout="us") {
  file { "/etc/default/keyboard":
    content => template("mac/keyboard.erb"),
    notify  => "realize-keyboard",
  }

  exec { "realize-keyboard":
    command => "udevadm trigger --subsystem-match=input --action=change",
    refreshonly => true,
  }
}
