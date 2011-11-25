class mac::keyboard($layout="us") {
  package { "keyboard-configuration":
    ensure => installed,
  }

  file { "/etc/default/keyboard":
    content => template("mac/keyboard.erb"),
    notify  => "realize-keyboard",
    require => Package["keyboard-configuration"],
  }

  exec { "realize-keyboard":
    command => "setupcon && udevadm trigger --subsystem-match=input --action=change",
    refreshonly => true,
  }
}
