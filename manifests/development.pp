class sebasoga::development {
  notice("Setting up sebasoga's development tools")

  package {
    [ 'tmux', 
      'terminal-notifier',
      'the_silver_searcher',
      'ctags-exuberant'
    ]:
    ensure => present
  }
}
