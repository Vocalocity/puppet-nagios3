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
  $cfg_dir                       = $nagios3::params::cfg_dir,
  $cfg_file                      = $nagios3::params::cfg_file,
  $check_external_commands       = $nagios3::params::check_external_commands,
  $check_for_orphaned_hosts      = $nagios3::params::check_for_orphaned_hosts,
  $check_for_orphaned_services   = $nagios3::params::check_for_orphaned_services,
  $check_for_updates             = $nagios3::params::check_for_updates,
  $check_host_freshness          = $nagios3::params::check_host_freshness,
  $check_result_path             = $nagios3::params::check_result_path,
  $check_result_reaper_frequency = $nagios3::params::check_result_reaper_frequency,
  $check_service_freshness       = $nagios3::params::check_service_freshness,
  $command_check_interval        = $nagios3::params::command_check_interval,
  $command_file                  = $nagios3::params::command_file,
  $daemon_dumps_core             = $nagios3::params::daemon_dumps_core,
  $date_format                   = $nagios3::params::date_format,
  $debug_file                    = $nagios3::params::debug_file,
  $debug_level                   = $nagios3::params::debug_level,
  $debug_verbosity               = $nagios3::params::debug_verbosity,
  $enable_embedded_perl                        = $nagios3::params::enable_embedded_perl,
  $enable_environment_macros                   = $nagios3::params::enable_environment_macros,
  $enable_event_handlers                       = $nagios3::params::enable_event_handlers,
  $enable_flap_detection                       = $nagios3::params::enable_flap_detection,
  $enable_notifications                        = $nagios3::params::enable_notifications,
  $enable_predictive_host_dependency_checks    = $nagios3::params::enable_predictive_host_dependency_checks,
  $enable_predictive_service_dependency_checks = $nagios3::params::enable_predictive_service_dependency_checks,
  $event_broker_options                        = $nagios3::params::event_broker_options,
  $event_handler_timeout                       = $nagios3::params::event_handler_timeout,
  $execute_host_checks                         = $nagios3::params::execute_host_checks,
  $execute_service_checks                      = $nagios3::params::execute_service_checks,
  $external_command_buffer_slots               = $nagios3::params::external_command_buffer_slots,





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

  # nagios.cfg parameter validation
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
  validate_array($cfg_dir)
  validate_array($cfg_file)
  validate_integer($check_external_commands)
  validate_integer($check_for_orphaned_hosts)
  validate_integer($check_for_orphaned_services)
  validate_integer($check_for_updates)
  validate_integer($check_host_freshness)
  validate_string($check_result_path)
  validate_integer($check_result_reaper_frequency)
  validate_integer($check_service_freshness)
  validate_string($command_check_interval)
  validate_string($command_file)

  validate_integer($daemon_dumps_core)
  validate_string($date_format)
  validate_string($debug_file)
  validate_integer($debug_level)
  validate_integer($debug_verbosity)

  validate_integer($enable_embedded_perl)
  validate_integer($enable_environment_macros)
  validate_integer($enable_event_handlers)
  validate_integer($enable_flap_detection)
  validate_integer($enable_notifications)
  validate_integer($enable_predictive_host_dependency_checks)
  validate_integer($enable_predictive_service_dependency_checks)
  validate_string($event_broker_options)
  validate_integer($event_handler_timeout)
  validate_integer($execute_host_checks)
  validate_integer($execute_service_checks)
  validate_integer($external_command_buffer_slots)


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
      File[$nagios3::params::config_dir]
    ],
  }

}