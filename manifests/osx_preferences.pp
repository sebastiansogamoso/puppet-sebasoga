class sebasoga::osx_preferences {
  notice("Setting up sebasoga's OS-X preferences")

  boxen::osx_defaults { '1 min delay for password dialog on screensaver':
    ensure => present,
    domain => 'com.apple.screensaver',
    key    => 'askForPasswordDelay',
    value  => 60,
    user   => $::luser
  }

  include osx::global::tap_to_click
  include osx::dock::autohide
  include osx::keyboard::capslock_to_control
  include osx::no_network_dsstores
  include osx::software_update
}
