class people::mly1999::repositories (
  $my_sourcedir = $people::mly1999::params::my_sourcedir,
  $my_homedir   = $people::mly1999::params::my_homedir,
  $my_username  = $people::mly1999::params::my_username
) {

  ###############################
  # Git config and repositories #
  ###############################

  git::config::global{ 'user.name':
    value => 'mly',
  }

  git::config::global { 'alias.lg':
    value => "log --pretty=format:'%C(yellow)%h%C(reset) %s %C(cyan)%cr%C(reset) %C(blue)%an%C(reset) %C(green)%d%C(reset)' --graph --date-order",  }

  git::config::global{ 'user.email':
    value => 'mly1999@live.com',
  }

  git::config::global{ 'color.ui':
    value => 'auto',
  }


#  git::config::global { 'alias.review':
#    value => 'log -p --reverse -M -C -C --patience --no-prefix',
#  }

#  git::config::global { 'alias.ll':
#    value => 'log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat',
#  }

#  git::config::global { 'alias.dlc':
#    value => 'diff --cached HEAD^',
# }


}
