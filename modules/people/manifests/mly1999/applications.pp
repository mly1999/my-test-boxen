class people::mly1999::applications {

    ### Puppet modules from https://github.com/boxen ###

    include chrome
    include firefox
    include dropbox
    include vlc
    include skype
    include transmission
    include sublime_text
    include iterm2::dev
    include sourcetree
    include teamviewer
    include caffeine
    include appcleaner
    include xtrafinder

    class { 'vmware_fusion': 
      version => '6.0.2-1398658', 
    }

    class { 'java':
      update_version => '67',
    }

    class { 'eclipse::jee':
      version => 'SR2',
    }

    include postgresql

    ### Homebrew packages ###

    $homebrew_packages = [ 
        'wget', 
        'tmux', 
        'tree' 
    ]

    package { $homebrew_packages: }

}
