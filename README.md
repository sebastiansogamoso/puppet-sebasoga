# Personal Puppet module for Boxen

A personal Puppet module is a great way to keep Boxen clean from many pesonal
manifests. This means that adding a personal configuration is done by adding the
module in the `Puppetfile`.

```
github "sebasoga", "1.0.0", :repo => "sebasoga/puppet-sebasoga"
```


## Usage

This pasticular module is contained in a class named `sebasoga` and also 
contains files for installing `desktop` applications, `development` tools,
personal `dotfiles` and to set `osx_preferences`.

It also contains a file for `all`. This enables installing everything in boxen 
by adding `include sebasoga::all` only modifying the module version in the 
`Puppetfile`.

```
class sebasoga::all
class sebasoga::desktop
class sebasoga::development
class sebasoga::dotfiles
class sebasoga::osx_preferences
```


## Tags

Remember to tag the version so that it can later be uses in the `Puppetfile`.

```
git tag -a 1.0.0
git push --tags
```

## Get your own

Get the puppet-template from https://github.com/boxen/puppet-template and start
making your own Puppet module.


## Required Puppet Modules

* `boxen`
