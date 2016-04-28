class sebasoga::desktop {
  notice("Setting up sebasoga's desktop apps")

  package {
    [
      'caffeine',
      'cloak',
      'cloud',
      'firefox',
      'laullon-gitx',
      'google-chrome',
      'imageoptim',
      'iterm2',
      'mailplane',
      'pgadmin3',
      'rescuetime',
      'screenhero',
      'atom',
      'spotify',
    ]:
    provider => 'brewcask',
    install_options => ["--appdir=/Applications"]
  }
}
