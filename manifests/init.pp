# == Class: nagios3
#
# Puppet module for the installation and configuration of a Nagios 3
# server.
#
# This modules takes advanage of PuppetDB to allow Nagios targets to
# push their configuration to the Nagios server.
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
#  class { 'nagios3':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class nagios3 (

  # Install the packages?
  $install      = $nagios3::params::install,
  $running      = true,
  $atboot       = true,

  # Requirements options
  $install_epel = $nagios3::params::install_epel,

  # Configuration file handing options
  $purge_configs = false,


  # Nagios installation options
  $packages           = $nagios3::params::packages,

  # Nagios's configuration directorys
  $config_dir         = $nagios3::params::config_dir,


  $config_dir_d       = $nagios3::params::config_dir_d,
  $config_objects_dir = $nagios3::params::config_objects_dir,
  $config_private_dir = $nagios3::params::config_private_dir,

  $cgi_config         = $nagios3::params::cgi_config,
  $nagios_config      = $nagios3::params::nagios_config,
  $passwd_config      = $nagios3::params::passwd_config,

  # see nagios_user
  #$user_name         = $nagios3::params::user_name,

  $user_home          = $nagios3::params::user_home,
  $user_shell         = $nagios3::params::user_shell,

  # see nagios_group
  #$group_name        = $nagios3::params::group_name,

  # nagios.cfg settings
  $accept_passive_host_checks    = $nagios3::params::accept_passive_host_checks,
  $accept_passive_service_checks = $nagios3::params::accept_passive_service_checks,
  $additional_freshness_latency  = $nagios3::params::additional_freshness_latency,
  $admin_email                   = $nagios3::params::admin_email,
  $admin_pager                   = $nagios3::params::admin_pager,
  $auto_reschedule_checks        = $nagios3::params::auto_reschedule_checks,
  $auto_rescheduling_interval    = $nagios3::params::auto_rescheduling_interval,
  $auto_rescheduling_window      = $nagios3::params::auto_rescheduling_window,
  $bare_update_check             = $nagios3::params::bare_update_check,
  $cached_host_check_horizon     = $nagios3::params::cached_host_check_horizon,
  $cached_service_check_horizon  = $nagios3::params::cached_service_check_horizon,
) inherits nagios3::params {

  # Parameter validation
  validate_bool($install)
  validate_bool($running)
  validate_bool($atboot)
  validate_bool($install_epel)
  validate_bool($purge_configs)
  validate_array($packages)
  validate_string($config_dir)
  validate_string($config_dir_d)
  validate_string($config_objects_dir)
  validate_string($config_private_dir)
  validate_string($cgi_config)
  validate_string($nagios_config)
  validate_string($passwd_config)
  validate_string($user_home)
  validate_string($user_shell)


  validate_integer($accept_passive_host_checks)
  validate_integer($accept_passive_service_checks)
  validate_integer($additional_freshness_latency)
  validate_string($admin_email)
  validate_string($admin_pager)
  validate_integer($auto_reschedule_checks)
  validate_integer($auto_rescheduling_interval)
  validate_integer($auto_rescheduling_window)
  validate_integer($bare_update_check)
  validate_integer($cached_host_check_horizon)
  validate_integer($cached_service_check_horizon)

  if ($install_epel == true) {
    class { '::epel':
      epel_enabled => true
    }
  }

  $package_ensure = $install ? {
    true    => 'present',
    default => 'absent'
  }

  $service_running = $running ? {
    true    => 'running',
    default => 'stopped'
  }

  $service_atboot = $atboot ? {
    true    => true,
    default => false
  }

  # Package handling
  package { $nagios3::params::packages:
    ensure => $install,
  }

  # Configuration directory handling
  file { $config_dir:
    ensure  => directory,
    owner   => $nagios3::params::config_dir_owner,
    group   => $nagios3::params::config_dir_group,
    mode    => $nagios3::params::config_dir_mode,
    #purge   => $nagios3::purge,
    force   => true,
    recurse => true,
    require => Package[$nagios3::params::packages],
  }

  # Configuration file handling
  file { $nagios3::params::nagios_config:
    ensure  => file,
    owner   => $nagios3::params::nagios_config_owner,
    group   => $nagios3::params::nagios_config_group,
    mode    => $nagios3::params::nagios_config_mode,
    content => template("nagios3/${nagios3::params::nagios_config_template}"),
    require => [
      Package[$nagios3::params::packages],
      File[$nagios::params::config_dir]
    ],
  }

}
