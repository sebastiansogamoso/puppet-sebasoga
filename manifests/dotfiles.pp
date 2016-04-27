class sebasoga::dotfiles {
  notice("Setting up sebasoga's dotfiles")

  include zsh
  include ohmyzsh
  
  $home     = "/Users/sebasoga"
  $src      = "${home}/src"
  $dotfiles = "${src}/dotfiles"

  file { $dotfiles:
    ensure => directory
  }

  repository { $dotfiles:
    source  => 'sebasoga/dotfiles',
    require => File[$dotfiles]
  }

  exec { 'sh install-dotfiles':
    cwd => $dotfiles
  }

  exec { 'git pull origin master':
    cwd => $dotfiles
  }
}
