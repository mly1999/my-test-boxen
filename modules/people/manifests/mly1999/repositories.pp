class people::mly1999::repositories (
  $my_sourcedir = $people::mly1999::params::my_sourcedir,
  $my_homedir   = $people::mly1999::params::my_homedir,
  $my_username  = $people::mly1999::params::my_username
) {

  # Git configs and repositories

  git::config::global {
    'user.name':
      value => 'mly';

    'user.email':
      value => 'mly1999@live.com';

    'github.user':
      value => 'mly1999';

    'bitbucket.user':
      value => 'mbucket1999';

    'color.ui':
      value => 'true';

    'diff.tool':
      value => 'opendiff';

    'merge.tool':
      value => 'opendiff';
  }

}
