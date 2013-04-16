# Installs emacs-mac, which has some nice mac integration
class emacs_mac {
  include 'homebrew'

  exec { 'tap-railwaycat-emacsmacport':
    command => 'brew tap railwaycat/emacsmacport',
    creates => "${homebrew::config::tapsdir}/railwaycat-emacsmacport",
    before  => Package['emacs-mac']
  }

  package {
    'emacs-mac':
      ensure => 'emacs-24.3-mac-4.1'
  }
}
