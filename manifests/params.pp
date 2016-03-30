# == Class: nagios3::params
#
# Full description of class nagios3 here.
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
class nagios3::params {

  case $::osfamily {
    'RedHat': {

      $install                = true

      # CentOS6 w/nagios from EPEL
      $install_epel           = true
      $packages               = ['nagios', 'nagios-common']

      $config_dir             = '/etc/nagios'
      $config_dir_owner       = 'root'
      $config_dir_group       = 'root'
      $config_dir_mode        = '0755'


      $config_dir_d           = "${config_dir}/conf.d"
      $config_objects_dir     = "${config_dir}/objects"
      $config_private_dir     = "${config_dir}/private"

      $cgi_config             = "${config_dir}/cgi.conf"

      $nagios_config          = "${config_dir}/nagios.cfg"
      $nagios_config_template = 'nagios.cfg.erb'
      $nagios_config_owner    = 'root'
      $nagios_config_group    = 'root'
      $nagios_config_mode     = '0664'

      $passwd_config          = "${config_dir}/passwd"

      #$user_name             = 'nagios'  # See nagios_user
      $user_home              = '/var/spool/nagios'
      $user_shell             = '/sbin/nologin'

      #$group_name            = 'nagios' # See nagios_group

      # Settings from nagios.cfg
      # Default values for nagios.cfg.  Taken from the EPEL rpm.
      $accept_passive_host_checks                  = 1
      $accept_passive_service_checks               = 1
      $additional_freshness_latency                = 15
      $admin_email                                 = 'nagios@localhost'
      $admin_pager                                 = 'pagenagios@localhost'
      $auto_reschedule_checks                      = 0
      $auto_rescheduling_interval                  = 30
      $auto_rescheduling_window                    = 180
      $bare_update_check                           = 0
      $cached_host_check_horizon                   = 15
      $cached_service_check_horizon                = 15
      $cfg_dir                                     = [ '/etc/nagios/conf.d', ]
      $cfg_file                                    = [
        '/etc/nagios/objects/commands.cfg',
        '/etc/nagios/objects/contacts.cfg',
        '/etc/nagios/objects/localhost.cfg',
        '/etc/nagios/objects/templates.cfg',
        '/etc/nagios/objects/timeperiods.cfg',
      ]
      $check_external_commands                     = 1
      $check_for_orphaned_hosts                    = 1
      $check_for_orphaned_services                 = 1
      $check_for_updates                           = 1
      $check_host_freshness                        = 0
      $check_result_path                           = '/var/log/nagios/spool/checkresults'
      $check_result_reaper_frequency               = 10
      $check_service_freshness                     = 1
      $command_check_interval                      = -1
      $command_file                                = '/var/spool/nagios/cmd/nagios.cmd'
      $daemon_dumps_core                           = 0
      $date_format                                 = 'us'
      $debug_file                                  = '/var/log/nagios/nagios.debug'
      $debug_level                                 = 0
      $debug_verbosity                             = 1
      $enable_embedded_perl                        = 1
      $enable_environment_macros                   = 1
      $enable_event_handlers                       = 1
      $enable_flap_detection                       = 1
      $enable_notifications                        = 1
      $enable_predictive_host_dependency_checks    = 1
      $enable_predictive_service_dependency_checks = 1
      $event_broker_options                        = -1
      $event_handler_timeout                       = 30
      $execute_host_checks                         = 1
      $execute_service_checks                      = 1
      $external_command_buffer_slots               = 4096
      $high_host_flap_threshold                    = 20.0
      $high_service_flap_threshold                 = 20.0
      $host_check_timeout                          = 30
      $host_freshness_check_interval               = 60
      $host_inter_check_delay_method               = 's'
      $illegal_macro_output_chars                  = '`~$&|\'"<>'
      $illegal_object_name_chars                   = '`~!$%^&*|\'"<>?,()='
      $interval_length                             = 60
      $lock_file                                   = '/var/run/nagios.pid'
      $log_archive_path                            = '/var/log/nagios/archives'
      $log_event_handlers                          = 1
      $log_external_commands                       = 1
      $log_file                                    = '/var/log/nagios/nagios.log'
      $log_host_retries                            = 1
      $log_initial_states                          = 0
      $log_notifications                           = 1
      $log_passive_checks                          = 1
      $log_rotation_method                         = 'd'
      $log_service_retries                         = 1
      $low_host_flap_threshold                     = 5.0
      $low_service_flap_threshold                  = 5.0
      $max_check_result_file_age                   = 3600
      $max_check_result_reaper_time                = 30
      $max_concurrent_checks                       = 0
      $max_debug_file_size                         = 1000000
      $max_host_check_spread                       = 30
      $max_service_check_spread                    = 30
      $nagios_group                                = 'nagios'
      $nagios_user                                 = 'nagios'
      $notification_timeout                        = 30
      $object_cache_file                           = '/var/log/nagios/objects.cache'
      $obsess_over_hosts                           = 0
      $obsess_over_services                        = 0
      $ocsp_timeout                                = 5
      $p1_file                                     = '/usr/sbin/p1.pl'
      $passive_host_checks_are_soft                = 0
      $perfdata_timeout                            = 5
      $precached_object_file                       = '/var/log/nagios/objects.precache'
      $process_performance_data                    = 0
      $resource_file                               = '/etc/nagios/private/resource.cfg'
      $retained_contact_host_attribute_mask        = 0
      $retained_contact_service_attribute_mask     = 0
      $retained_host_attribute_mask                = 0
      $retained_process_host_attribute_mask        = 0
      $retained_process_service_attribute_mask     = 0
      $retained_service_attribute_mask             = 0
      $retain_state_information                    = 1
      $retention_update_interval                   = 60
      $service_check_timeout                       = 60
      $service_check_timeout_state                 = 'c'
      $service_freshness_check_interval            = 60
      $service_inter_check_delay_method            = 's'
      $service_interleave_factor                   = 's'
      $sleep_time                                  = 0.25
      $soft_state_dependencies                     = 0
      $state_retention_file                        = '/var/log/nagios/retention.dat'
      $status_file                                 = '/var/log/nagios/status.dat'
      $status_update_interval                      = 10
      $temp_file                                   = '/var/log/nagios/nagios.tmp'
      $temp_path                                   = '/tmp'
      $translate_passive_host_checks               = 0
      $use_aggressive_host_checking                = 0
      $use_embedded_perl_implicitly                = 1
      $use_large_installation_tweaks               = 0
      $use_regexp_matching                         = 0
      $use_retained_program_state                  = 1
      $use_retained_scheduling_info                = 1
      $use_syslog                                  = 1
      $use_true_regexp_matching                    = 0
    } #RedHat
    default: {
      fail("${::module_name} is not supported on ${::osfamily}")
    }
  } #osfamily
}
