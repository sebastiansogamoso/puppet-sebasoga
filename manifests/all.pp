# Include everything for sebasoga.

class sebasoga::all {
  notice("Setting up sebasoga")

  include sebasoga::desktop
  include sebasoga::development
  include sebasoga::dotfiles
  include sebasoga::osx_preferences

  notice("sebasoga setup complete")
}
