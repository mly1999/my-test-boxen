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
      update_version => '71',
    }

#    class { 'eclipse::jee':
#      version => 'SR2',
#    }

    ### Homebrew packages ###

    $homebrew_packages = [ 
        'wget', 
        'tmux', 
        'tree' 
    ]

    package { $homebrew_packages: }

    package { 'Postgres':
        provider => 'compressed_app',
        source => 'https://github.com/PostgresApp/PostgresApp/releases/download/9.3.5.1/Postgres-9.3.5.1.zip',
    }

}
