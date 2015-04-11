# == Class: devxexec
#
# Full description of class devxexec here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'devxexec':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class devxexec (
  $install_path = 'C:\devxexec',
  $username     = 'Administrator',
  $password     = 'defaultpwd',
) {
    $path = "${install_path}\\devxexec.exe"
    file { $install_path :
      ensure             => directory,
      recurse            => true,
      source_permissions => ignore,
    }
    ->
    file { $path :
      ensure             => present,
      source             => 'puppet:///modules/devxexec/devxexec.exe',
      source_permissions => ignore,
    }
}
