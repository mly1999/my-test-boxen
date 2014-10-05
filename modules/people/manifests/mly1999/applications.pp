class people::mly1999::applications {

    notify { '... class people::mly1999::applications declared': }

    ### Puppet modules from https://github.com/boxen ###

    include chrome
    include firefox
    include dropbox
    include vlc
    include skype
    include transmission
    include sublime_text

#    include java

    # Alternative way to include provided by module
    class { 'vmware_fusion': version => '6.0.2-1398658' }


    ### Homebrew packages ###
    $homebrew_packages = [ 
        'wget', 
        'tmux', 
        'tree' 
    ]
    package { $homebrew_packages: }


    ### Packages ###
    # reference examples
#    package { 'iStat Menus':
#        source   => 'http://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus4.22.zip',
#        provider => compressed_app
#    }


}
