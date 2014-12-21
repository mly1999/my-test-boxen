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

    ### Postgresql App and Workbench ###
    package { 'Postgres':
        provider => 'compressed_app',
        source => 'https://github.com/PostgresApp/PostgresApp/releases/download/9.4.0.0/Postgres-9.4.0.0.zip',
    }
    package { 'pgadmin3':
        provider => 'appdmg_eula',
        source => 'http://ftp.postgresql.org/pub/pgadmin3/release/v1.18.1/osx/pgadmin3-1.18.1.dmg',
    }


#    package { 'JavaForOSX2014-001':
#        provider => 'pkgdmg',
#        source => 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2014-001.dmg',
#    }

# DOWNLOAD FAILS
#    package { 'GPGTools':
#        provider => 'pkgdmg',
#        source   => 'https://releases.gpgtools.org/GPG%20Suite%20-%202013.10.22.dmg',
#    }
}
