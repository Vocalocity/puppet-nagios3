# == Class: nagios3::params

class nagios3::params {

  case $::osfamily {
    'RedHat': {
      # Installation
      $config_dir                                   = '/etc/nagios'
      $cgi_config_file                              = "${config_dir}/cgi.cfg"
      $config_dir_group                             = 'root'
      $config_dir_mode                              = '0775'
      $config_dir_owner                             = 'root'
      $config_file                                  = "${config_dir}/nagios.cfg"
      $config_file_group                            = 'root'
      $config_file_mode                             = '0664'
      $config_file_owner                            = 'root'
      $package_ensure                               = 'installed'
      $package_name                                 = 'nagios'
      $passwd_config                                = "${config_dir}/passwd"
      $service_enable                               = false
      $service_ensure                               = undef
      $service_file                                 = '/etc/rc.d/init.d/nagios'

      # cgi.cfg
      $cgi_action_url_target                        = '_blank'
      $cgi_authorized_for_all_host_commands         = [ 'nagiosadmin' ]
      $cgi_authorized_for_all_hosts                 = [ 'nagiosadmin' ]
      $cgi_authorized_for_all_service_commands      = [ 'nagiosadmin' ]
      $cgi_authorized_for_all_services              = [ 'nagiosadmin' ]
      $cgi_authorized_for_configuration_information = [ 'nagiosadmin' ]
      $cgi_authorized_for_read_only                 = []
      $cgi_authorized_for_system_commands           = [ 'nagiosadmin' ]
      $cgi_authorized_for_system_information        = [ 'nagiosadmin' ]
      $cgi_color_transparency_index_b               = 255
      $cgi_color_transparency_index_g               = 255
      $cgi_color_transparency_index_r               = 255
      $cgi_default_statusmap_layout                 = 5
      $cgi_default_statuswrl_layout                 = 4
      $cgi_default_user_name                        = undef
      $cgi_enable_splunk_integration                = 0
      $cgi_escape_html_tags                         = 1
      $cgi_host_down_sound                          = undef
      $cgi_host_unreachable_sound                   = undef
      $cgi_lock_author_names                        = 1
      $cgi_main_config_file                         = '/etc/nagios/nagios.cfg'
      $cgi_normal_sound                             = undef
      $cgi_notes_url_target                         = '_blank'
      $cgi_physical_html_path                       = '/usr/share/nagios/html'
      $cgi_ping_syntax                              = '/bin/ping -n -U -c 5 $HOSTADDRESS$'
      $cgi_refresh_rate                             = 90
      $cgi_result_limit                             = 100
      $cgi_service_critical_sound                   = undef
      $cgi_service_unknown_sound                    = undef
      $cgi_service_warning_sound                    = undef
      $cgi_show_context_help                        = 0
      $cgi_splunk_url                               = 'http://127.0.0.1:8000/'
      $cgi_statusmap_background_image               = undef
      $cgi_statuswrl_include                        = undef
      $cgi_url_html_path                            = '/nagios'
      $cgi_use_authentication                       = 1
      $cgi_use_pending_states                       = 1
      $cgi_use_ssl_authentication                   = 0

      # nagios.cfg
      $accept_passive_host_checks                   = 1
      $accept_passive_service_checks                = 1
      $additional_freshness_latency                 = 15
      $admin_email                                  = 'nagios@localhost'
      $admin_pager                                  = 'pagenagios@localhost'
      $auto_reschedule_checks                       = 0
      $auto_rescheduling_interval                   = 30
      $auto_rescheduling_window                     = 180
      $bare_update_check                            = 0
      $broker_module                                = []
      $cached_host_check_horizon                    = 15
      $cached_service_check_horizon                 = 15
      $cfg_dir                                      = [ '/etc/nagios/conf.d', ]
      $cfg_file                                     = [
        '/etc/nagios/objects/commands.cfg',
        '/etc/nagios/objects/contacts.cfg',
        '/etc/nagios/objects/localhost.cfg',
        '/etc/nagios/objects/templates.cfg',
        '/etc/nagios/objects/timeperiods.cfg',
      ]
      $check_external_commands                      = 1
      $check_for_orphaned_hosts                     = 1
      $check_for_orphaned_services                  = 1
      $check_for_updates                            = 1
      $check_host_freshness                         = 0
      $check_result_path                            = '/var/log/nagios/spool/checkresults'
      $check_result_reaper_frequency                = 10
      $check_service_freshness                      = 1
      $child_processes_fork_twice                   = undef
      $command_check_interval                       = '-1'
      $command_file                                 = '/var/spool/nagios/cmd/nagios.cmd'
      $daemon_dumps_core                            = 0
      $date_format                                  = 'us'
      $debug_file                                   = '/var/log/nagios/nagios.debug'
      $debug_level                                  = 0
      $debug_verbosity                              = 1
      $enable_embedded_perl                         = 1
      $enable_environment_macros                    = 1
      $enable_event_handlers                        = 1
      $enable_flap_detection                        = 1
      $enable_notifications                         = 1
      $enable_predictive_host_dependency_checks     = 1
      $enable_predictive_service_dependency_checks  = 1
      $event_broker_options                         = '-1'
      $event_handler_timeout                        = 30
      $execute_host_checks                          = 1
      $execute_service_checks                       = 1
      $external_command_buffer_slots                = 4096
      $free_child_process_memory                    = undef
      $global_host_event_handler                    = undef
      $global_service_event_handler                 = undef
      $high_host_flap_threshold                     = 20.0
      $high_service_flap_threshold                  = 20.0
      $host_check_timeout                           = 30
      $host_freshness_check_interval                = 60
      $host_inter_check_delay_method                = 's'
      $host_perfdata_command                        = undef
      $host_perfdata_file                           = undef
      $host_perfdata_file_mode                      = undef
      $host_perfdata_file_processing_command        = undef
      $host_perfdata_file_processing_interval       = undef
      $host_perfdata_file_template                  = undef
      $host_perfdata_process_empty_results          = undef
      $illegal_macro_output_chars                   = '`~$&|\'"<>'
      $illegal_object_name_chars                    = '`~!$%^&*|\'"<>?,()='
      $interval_length                              = 60
      $lock_file                                    = '/var/run/nagios.pid'
      $log_archive_path                             = '/var/log/nagios/archives'
      $log_event_handlers                           = 1
      $log_external_commands                        = 1
      $log_file                                     = '/var/log/nagios/nagios.log'
      $log_host_retries                             = 1
      $log_initial_states                           = 0
      $log_notifications                            = 1
      $log_passive_checks                           = 1
      $log_rotation_method                          = 'd'
      $log_service_retries                          = 1
      $low_host_flap_threshold                      = 5.0
      $low_service_flap_threshold                   = 5.0
      $max_check_result_file_age                    = 3600
      $max_check_result_reaper_time                 = 30
      $max_concurrent_checks                        = 0
      $max_debug_file_size                          = 1000000
      $max_host_check_spread                        = 30
      $max_service_check_spread                     = 30
      $nagios_group                                 = 'nagios'
      $nagios_user                                  = 'nagios'
      $notification_timeout                         = 30
      $object_cache_file                            = '/var/log/nagios/objects.cache'
      $obsess_over_hosts                            = 0
      $obsess_over_services                         = 0
      $ochp_command                                 = undef
      $ocsp_command                                 = undef
      $ocsp_timeout                                 = 5
      $p1_file                                      = '/usr/sbin/p1.pl'
      $passive_host_checks_are_soft                 = 0
      $perfdata_timeout                             = 5
      $precached_object_file                        = '/var/log/nagios/objects.precache'
      $process_performance_data                     = 0
      $resource_file                                = '/etc/nagios/private/resource.cfg'
      $retained_contact_host_attribute_mask         = 0
      $retained_contact_service_attribute_mask      = 0
      $retained_host_attribute_mask                 = 0
      $retained_process_host_attribute_mask         = 0
      $retained_process_service_attribute_mask      = 0
      $retained_service_attribute_mask              = 0
      $retain_state_information                     = 1
      $retention_update_interval                    = 60
      $service_check_timeout                        = 60
      $service_check_timeout_state                  = 'c'
      $service_freshness_check_interval             = 60
      $service_inter_check_delay_method             = 's'
      $service_interleave_factor                    = 's'
      $service_perfdata_command                     = undef
      $service_perfdata_file                        = undef
      $service_perfdata_file_mode                   = undef
      $service_perfdata_file_processing_command     = undef
      $service_perfdata_file_processing_interval    = undef
      $service_perfdata_file_template               = undef
      $service_perfdata_process_empty_results       = undef
      $sleep_time                                   = 0.25
      $soft_state_dependencies                      = 0
      $state_retention_file                         = '/var/log/nagios/retention.dat'
      $status_file                                  = '/var/log/nagios/status.dat'
      $status_update_interval                       = 10
      $temp_file                                    = '/var/log/nagios/nagios.tmp'
      $temp_path                                    = '/tmp'
      $time_change_threshold                        = undef
      $translate_passive_host_checks                = 0
      $use_aggressive_host_checking                 = 0
      $use_embedded_perl_implicitly                 = 1
      $use_large_installation_tweaks                = 0
      $use_regexp_matching                          = 0
      $use_retained_program_state                   = 1
      $use_retained_scheduling_info                 = 1
      $use_syslog                                   = 1
      $use_timezone                                 = undef
      $use_true_regexp_matching                     = 0
    } #RedHat
    default: {
      fail("${::module_name} is not supported on ${::osfamily}")
    }
  }
}
