class people::mly1999::config (
  $my_homedir   = $people::mly1999::params::my_homedir,
  $my_sourcedir = $people::mly1999::params::my_sourcedir,
  $my_username  = $people::mly1999::params::my_username
) {

  

  include osx::dock::autohide
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control
  include osx::software_update
  include osx::disable_app_quarantine
  include osx::global::disable_autocorrect
  include osx::global::expand_save_dialog
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection
  include osx::finder::show_all_filename_extensions
  inlcude osx::dock::disable_dashboard

  class { 'osx::dock::position':
    position => 'bottom',
  }

  class { 'osx::dock::hot_corners':
    top_left => "Desktop",
    bottom_left => "Put Display to Sleep"
  }

  boxen::osx_defaults {
    "Set aqua color variant to graphite":
      ensure => present,
      key    => 'AppleAquaColorVariant',
      domain => 'NSGlobalDomain',
      user   => $::boxen_user,
      type   => 'int',
      value  => 6;
  }
}

