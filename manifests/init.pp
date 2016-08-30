# == Class: nagios3
#
# Puppet module to install Nagios 3.
#
class nagios3 (

  # Installation
  $cgi_config_file                              = $nagios3::params::cgi_config_file,
  $config_dir                                   = $nagios3::params::config_dir,
  $config_dir_group                             = $nagios3::params::config_dir_group,
  $config_dir_mode                              = $nagios3::params::config_dir_mode,
  $config_dir_owner                             = $nagios3::params::config_dir_owner,
  $config_file                                  = $nagios3::params::config_file,
  $config_file_group                            = $nagios3::params::config_file_group,
  $config_file_mode                             = $nagios3::params::config_file_mode,
  $config_file_owner                            = $nagios3::params::config_file_owner,
  $package_ensure                               = $nagios3::params::package_ensure,
  $package_name                                 = $nagios3::params::package_name,
  $passwd_config                                = $nagios3::params::passwd_config,
  $service_enable                               = $nagios3::params::service_enable,
  $service_ensure                               = $nagios3::params::service_ensure,
  $service_file                                 = $nagios3::params::service_file,

  # cgi.cfg
  $cgi_action_url_target                        = $nagios3::params::cgi_action_url_target,
  $cgi_authorized_for_all_host_commands         = $nagios3::params::cgi_authorized_for_all_host_commands,
  $cgi_authorized_for_all_hosts                 = $nagios3::params::cgi_authorized_for_all_hosts,
  $cgi_authorized_for_all_service_commands      = $nagios3::params::cgi_authorized_for_all_service_commands,
  $cgi_authorized_for_all_services              = $nagios3::params::cgi_authorized_for_all_services,
  $cgi_authorized_for_configuration_information = $nagios3::params::cgi_authorized_for_configuration_information,
  $cgi_authorized_for_read_only                 = $nagios3::params::cgi_authorized_for_read_only,
  $cgi_authorized_for_system_commands           = $nagios3::params::cgi_authorized_for_system_commands,
  $cgi_authorized_for_system_information        = $nagios3::params::cgi_authorized_for_system_information,
  $cgi_color_transparency_index_b               = $nagios3::params::cgi_color_transparency_index_b,
  $cgi_color_transparency_index_g               = $nagios3::params::cgi_color_transparency_index_g,
  $cgi_color_transparency_index_r               = $nagios3::params::cgi_color_transparency_index_r,
  $cgi_default_statusmap_layout                 = $nagios3::params::cgi_default_statusmap_layout,
  $cgi_default_statuswrl_layout                 = $nagios3::params::cgi_default_statuswrl_layout,
  $cgi_default_user_name                        = $nagios3::params::cgi_default_user_name,
  $cgi_enable_splunk_integration                = $nagios3::params::cgi_enable_splunk_integration,
  $cgi_escape_html_tags                         = $nagios3::params::cgi_escape_html_tags,
  $cgi_host_down_sound                          = $nagios3::params::cgi_host_down_sound,
  $cgi_host_unreachable_sound                   = $nagios3::params::cgi_host_unreachable_sound,
  $cgi_lock_author_names                        = $nagios3::params::cgi_lock_author_names,
  $cgi_main_config_file                         = $nagios3::params::cgi_main_config_file,
  $cgi_normal_sound                             = $nagios3::params::cgi_normal_sound,
  $cgi_notes_url_target                         = $nagios3::params::cgi_notes_url_target,
  $cgi_physical_html_path                       = $nagios3::params::cgi_physical_html_path,
  $cgi_ping_syntax                              = $nagios3::params::cgi_ping_syntax,
  $cgi_refresh_rate                             = $nagios3::params::cgi_refresh_rate,
  $cgi_result_limit                             = $nagios3::params::cgi_result_limit,
  $cgi_service_critical_sound                   = $nagios3::params::cgi_service_critical_sound,
  $cgi_service_unknown_sound                    = $nagios3::params::cgi_service_unknown_sound,
  $cgi_service_warning_sound                    = $nagios3::params::cgi_service_warning_sound,
  $cgi_show_context_help                        = $nagios3::params::cgi_show_context_help,
  $cgi_splunk_url                               = $nagios3::params::cgi_splunk_url,
  $cgi_statusmap_background_image               = $nagios3::params::cgi_statusmap_background_image,
  $cgi_statuswrl_include                        = $nagios3::params::cgi_statuswrl_include,
  $cgi_url_html_path                            = $nagios3::params::cgi_url_html_path,
  $cgi_use_authentication                       = $nagios3::params::cgi_use_authentication,
  $cgi_use_pending_states                       = $nagios3::params::cgi_use_pending_states,
  $cgi_use_ssl_authentication                   = $nagios3::params::cgi_use_ssl_authentication,

  # nagios.cfg
  $accept_passive_host_checks                   = $nagios3::params::accept_passive_host_checks,
  $accept_passive_service_checks                = $nagios3::params::accept_passive_service_checks,
  $additional_freshness_latency                 = $nagios3::params::additional_freshness_latency,
  $admin_email                                  = $nagios3::params::admin_email,
  $admin_pager                                  = $nagios3::params::admin_pager,
  $auto_reschedule_checks                       = $nagios3::params::auto_reschedule_checks,
  $auto_rescheduling_interval                   = $nagios3::params::auto_rescheduling_interval,
  $auto_rescheduling_window                     = $nagios3::params::auto_rescheduling_window,
  $bare_update_check                            = $nagios3::params::bare_update_check,
  $broker_module                                = $nagios3::params::broker_module,
  $cached_host_check_horizon                    = $nagios3::params::cached_host_check_horizon,
  $cached_service_check_horizon                 = $nagios3::params::cached_service_check_horizon,
  $cfg_dir                                      = $nagios3::params::cfg_dir,
  $cfg_file                                     = $nagios3::params::cfg_file,
  $check_external_commands                      = $nagios3::params::check_external_commands,
  $check_for_orphaned_hosts                     = $nagios3::params::check_for_orphaned_hosts,
  $check_for_orphaned_services                  = $nagios3::params::check_for_orphaned_services,
  $check_for_updates                            = $nagios3::params::check_for_updates,
  $check_host_freshness                         = $nagios3::params::check_host_freshness,
  $check_result_path                            = $nagios3::params::check_result_path,
  $check_result_reaper_frequency                = $nagios3::params::check_result_reaper_frequency,
  $check_service_freshness                      = $nagios3::params::check_service_freshness,
  $child_processes_fork_twice                   = $nagios3::params::child_processes_fork_twice,
  $command_check_interval                       = $nagios3::params::command_check_interval,
  $command_file                                 = $nagios3::params::command_file,
  $daemon_dumps_core                            = $nagios3::params::daemon_dumps_core,
  $date_format                                  = $nagios3::params::date_format,
  $debug_file                                   = $nagios3::params::debug_file,
  $debug_level                                  = $nagios3::params::debug_level,
  $debug_verbosity                              = $nagios3::params::debug_verbosity,
  $enable_embedded_perl                         = $nagios3::params::enable_embedded_perl,
  $enable_environment_macros                    = $nagios3::params::enable_environment_macros,
  $enable_event_handlers                        = $nagios3::params::enable_event_handlers,
  $enable_flap_detection                        = $nagios3::params::enable_flap_detection,
  $enable_notifications                         = $nagios3::params::enable_notifications,
  $enable_predictive_host_dependency_checks     = $nagios3::params::enable_predictive_host_dependency_checks,
  $enable_predictive_service_dependency_checks  = $nagios3::params::enable_predictive_service_dependency_checks,
  $event_broker_options                         = $nagios3::params::event_broker_options,
  $event_handler_timeout                        = $nagios3::params::event_handler_timeout,
  $execute_host_checks                          = $nagios3::params::execute_host_checks,
  $execute_service_checks                       = $nagios3::params::execute_service_checks,
  $external_command_buffer_slots                = $nagios3::params::external_command_buffer_slots,
  $free_child_process_memory                    = $nagios3::params::free_child_process_memory,
  $global_host_event_handler                    = $nagios3::params::global_host_event_handler,
  $global_service_event_handler                 = $nagios3::params::global_service_event_handler,
  $high_host_flap_threshold                     = $nagios3::params::high_host_flap_threshold,
  $high_service_flap_threshold                  = $nagios3::params::high_service_flap_threshold,
  $host_check_timeout                           = $nagios3::params::host_check_timeout,
  $host_freshness_check_interval                = $nagios3::params::host_freshness_check_interval,
  $host_inter_check_delay_method                = $nagios3::params::host_inter_check_delay_method,
  $host_perfdata_command                        = $nagios3::params::host_perfdata_command,
  $host_perfdata_file                           = $nagios3::params::host_perfdata_file,
  $host_perfdata_file_mode                      = $nagios3::params::host_perfdata_file_mode,
  $host_perfdata_file_processing_command        = $nagios3::params::host_perfdata_file_processing_command,
  $host_perfdata_file_processing_interval       = $nagios3::params::host_perfdata_file_processing_interval,
  $host_perfdata_file_template                  = $nagios3::params::host_perfdata_file_template,
  $host_perfdata_process_empty_results          = $nagios3::params::host_perfdata_process_empty_results,
  $illegal_macro_output_chars                   = $nagios3::params::illegal_macro_output_chars,
  $illegal_object_name_chars                    = $nagios3::params::illegal_object_name_chars,
  $interval_length                              = $nagios3::params::interval_length,
  $lock_file                                    = $nagios3::params::lock_file,
  $log_archive_path                             = $nagios3::params::log_archive_path,
  $log_event_handlers                           = $nagios3::params::log_event_handlers,
  $log_external_commands                        = $nagios3::params::log_external_commands,
  $log_file                                     = $nagios3::params::log_file,
  $log_host_retries                             = $nagios3::params::log_host_retries,
  $log_initial_states                           = $nagios3::params::log_initial_states,
  $log_notifications                            = $nagios3::params::log_notifications,
  $log_passive_checks                           = $nagios3::params::log_passive_checks,
  $log_rotation_method                          = $nagios3::params::log_rotation_method,
  $log_service_retries                          = $nagios3::params::log_service_retries,
  $low_host_flap_threshold                      = $nagios3::params::low_host_flap_threshold,
  $low_service_flap_threshold                   = $nagios3::params::low_service_flap_threshold,
  $max_check_result_file_age                    = $nagios3::params::max_check_result_file_age,
  $max_check_result_reaper_time                 = $nagios3::params::max_check_result_reaper_time,
  $max_concurrent_checks                        = $nagios3::params::max_concurrent_checks,
  $max_debug_file_size                          = $nagios3::params::max_debug_file_size,
  $max_host_check_spread                        = $nagios3::params::max_host_check_spread,
  $max_service_check_spread                     = $nagios3::params::max_service_check_spread,
  $nagios_group                                 = $nagios3::params::nagios_group,
  $nagios_user                                  = $nagios3::params::nagios_user,
  $notification_timeout                         = $nagios3::params::notification_timeout,
  $object_cache_file                            = $nagios3::params::object_cache_file,
  $obsess_over_hosts                            = $nagios3::params::obsess_over_hosts,
  $obsess_over_services                         = $nagios3::params::obsess_over_services,
  $ochp_command                                 = $nagios3::params::ochp_command,
  $ocsp_command                                 = $nagios3::params::ocsp_command,
  $ocsp_timeout                                 = $nagios3::params::ocsp_timeout,
  $p1_file                                      = $nagios3::params::p1_file,
  $passive_host_checks_are_soft                 = $nagios3::params::passive_host_checks_are_soft,
  $perfdata_timeout                             = $nagios3::params::perfdata_timeout,
  $precached_object_file                        = $nagios3::params::precached_object_file,
  $process_performance_data                     = $nagios3::params::process_performance_data,
  $resource_file                                = $nagios3::params::resource_file,
  $retain_state_information                     = $nagios3::params::retain_state_information,
  $retained_contact_host_attribute_mask         = $nagios3::params::retained_contact_host_attribute_mask,
  $retained_contact_service_attribute_mask      = $nagios3::params::retained_contact_service_attribute_mask,
  $retained_host_attribute_mask                 = $nagios3::params::retained_host_attribute_mask,
  $retained_process_host_attribute_mask         = $nagios3::params::retained_process_host_attribute_mask,
  $retained_process_service_attribute_mask      = $nagios3::params::retained_process_service_attribute_mask,
  $retained_service_attribute_mask              = $nagios3::params::retained_service_attribute_mask,
  $retention_update_interval                    = $nagios3::params::retention_update_interval,
  $service_check_timeout                        = $nagios3::params::service_check_timeout,
  $service_check_timeout_state                  = $nagios3::params::service_check_timeout_state,
  $service_freshness_check_interval             = $nagios3::params::service_freshness_check_interval,
  $service_inter_check_delay_method             = $nagios3::params::service_inter_check_delay_method,
  $service_interleave_factor                    = $nagios3::params::service_interleave_factor,
  $service_perfdata_command                     = $nagios3::params::service_perfdata_command,
  $service_perfdata_file                        = $nagios3::params::service_perfdata_file,
  $service_perfdata_file_mode                   = $nagios3::params::service_perfdata_file_mode,
  $service_perfdata_file_processing_command     = $nagios3::params::service_perfdata_file_processing_command,
  $service_perfdata_file_processing_interval    = $nagios3::params::service_perfdata_file_processing_interval,
  $service_perfdata_file_template               = $nagios3::params::service_perfdata_file_template,
  $service_perfdata_process_empty_results       = $nagios3::params::service_perfdata_process_empty_results,
  $sleep_time                                   = $nagios3::params::sleep_time,
  $soft_state_dependencies                      = $nagios3::params::soft_state_dependencies,
  $state_retention_file                         = $nagios3::params::state_retention_file,
  $status_file                                  = $nagios3::params::status_file,
  $status_update_interval                       = $nagios3::params::status_update_interval,
  $temp_file                                    = $nagios3::params::temp_file,
  $temp_path                                    = $nagios3::params::temp_path,
  $time_change_threshold                        = $nagios3::params::time_change_threshold,
  $translate_passive_host_checks                = $nagios3::params::translate_passive_host_checks,
  $use_aggressive_host_checking                 = $nagios3::params::use_aggressive_host_checking,
  $use_embedded_perl_implicitly                 = $nagios3::params::use_embedded_perl_implicitly,
  $use_large_installation_tweaks                = $nagios3::params::use_large_installation_tweaks,
  $use_regexp_matching                          = $nagios3::params::use_regexp_matching,
  $use_retained_program_state                   = $nagios3::params::use_retained_program_state,
  $use_retained_scheduling_info                 = $nagios3::params::use_retained_scheduling_info,
  $use_syslog                                   = $nagios3::params::use_syslog,
  $use_timezone                                 = $nagios3::params::use_timezone,
  $use_true_regexp_matching                     = $nagios3::params::use_true_regexp_matching,
) inherits nagios3::params {

  validate_string($cgi_config_file)
  validate_string($config_dir)
  validate_string($config_dir_group)
  validate_string($config_dir_mode)
  validate_string($config_dir_owner)
  validate_string($config_file)
  validate_string($config_file_group)
  validate_string($config_file_mode)
  validate_string($config_file_owner)
  validate_string($package_ensure)
  validate_string($package_name)
  validate_string($passwd_config)
  validate_bool($service_enable)
  validate_string($service_file)
  if $service_ensure != undef {
    validate_re($service_ensure,
      '^running|stopped$',
      "'service_ensure' not in ['running', 'stopped']")
  }

  # cgi.cfg
  validate_string($cgi_action_url_target)
  validate_array($cgi_authorized_for_all_host_commands)
  validate_array($cgi_authorized_for_all_hosts)
  validate_array($cgi_authorized_for_all_service_commands)
  validate_array($cgi_authorized_for_all_services)
  validate_array($cgi_authorized_for_configuration_information)
  validate_array($cgi_authorized_for_read_only)
  validate_array($cgi_authorized_for_system_commands)
  validate_array($cgi_authorized_for_system_information)
  validate_integer($cgi_color_transparency_index_b, 255, 0)
  validate_integer($cgi_color_transparency_index_g, 255, 0)
  validate_integer($cgi_color_transparency_index_r, 255, 0)
  validate_integer($cgi_default_statusmap_layout, 5, 0)
  validate_integer($cgi_default_statuswrl_layout, 4, 0)
  validate_string($cgi_default_user_name)
  validate_integer($cgi_enable_splunk_integration, 1, 0)
  validate_integer($cgi_escape_html_tags, 1, 0)
  validate_string($cgi_host_down_sound)
  validate_string($cgi_host_unreachable_sound)
  validate_integer($cgi_lock_author_names, 1, 0)
  validate_string($cgi_main_config_file)
  validate_string($cgi_normal_sound)
  validate_string($cgi_notes_url_target)
  validate_string($cgi_physical_html_path)
  validate_string($cgi_ping_syntax)
  validate_integer($cgi_refresh_rate, undef, 0)
  validate_integer($cgi_result_limit, undef, 0)
  validate_string($cgi_service_critical_sound)
  validate_string($cgi_service_unknown_sound)
  validate_string($cgi_service_warning_sound)
  validate_integer($cgi_show_context_help, 1, 0)
  validate_string($cgi_splunk_url)
  validate_string($cgi_statusmap_background_image)
  validate_string($cgi_statuswrl_include)
  validate_string($cgi_url_html_path)
  validate_integer($cgi_use_authentication, undef, 0)
  validate_integer($cgi_use_pending_states, 1, 0)
  validate_integer($cgi_use_ssl_authentication, 1, 0)

  # nagios.cfg
  validate_integer($accept_passive_host_checks)
  validate_integer($accept_passive_service_checks)
  validate_integer($additional_freshness_latency)
  validate_string($admin_email)
  validate_string($admin_pager)
  validate_integer($auto_reschedule_checks)
  validate_integer($auto_rescheduling_interval)
  validate_integer($auto_rescheduling_window)
  validate_integer($bare_update_check)
  validate_array($broker_module)
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
  if $child_processes_fork_twice != undef {
    validate_integer($child_processes_fork_twice)
  }
  validate_re($command_check_interval,
    '^(\d+s?|-1)$',
    "'command_check_interval' is not a positive integer followed by an optional 's' or '-1'"
    )
  validate_string($command_file)
  validate_integer($daemon_dumps_core, 1, 0)
  validate_string($date_format)
  validate_re($date_format,
    '^(us|euro|iso8601|strict-iso8601)$',
    "'date_format' not in ['us', 'euro', 'iso8601', 'strict-iso8601']")
  validate_string($debug_file)
  validate_integer($debug_level, 4095, -1)
  validate_integer($debug_verbosity, 2, 0)
  validate_integer($enable_embedded_perl, 1, 0)
  validate_integer($enable_environment_macros, 1, 0)
  validate_integer($enable_event_handlers, 1, 0)
  validate_integer($enable_flap_detection, 1, 0)
  validate_integer($enable_notifications, 1, 0)
  validate_integer($enable_predictive_host_dependency_checks, 1, 0)
  validate_integer($enable_predictive_service_dependency_checks, 1, 0)
  validate_integer($event_broker_options, 0, -1)
  validate_integer($event_handler_timeout, undef, 1)
  validate_integer($execute_host_checks, 1, 0)
  validate_integer($execute_service_checks, 1, 0)
  validate_integer($external_command_buffer_slots, undef, 1)
  if $free_child_process_memory != undef {
    validate_integer($free_child_process_memory, 1, 0)
  }
  if $global_host_event_handler != undef {
    validate_string($global_host_event_handler)
  }
  if $global_service_event_handler != undef {
    validate_string($global_service_event_handler)
  }
  validate_numeric($high_host_flap_threshold, undef, 0.1)
  validate_numeric($high_service_flap_threshold, undef, 0.1)
  validate_integer($host_check_timeout, undef, 1)
  validate_integer($host_freshness_check_interval, undef, 1)
  validate_re($host_inter_check_delay_method,
    '^([nds]|\d+(\.\d+)?)$',
    "'host_inter_check_delay_method' not in ['n', 'd', 's'] or a positive float")
  if $host_perfdata_command != undef {
    validate_string($host_perfdata_command)
  }
  if $host_perfdata_file != undef {
    validate_string($host_perfdata_file)
  }
  if $host_perfdata_file_mode != undef {
    validate_re($host_perfdata_file_mode,
      '^[wap]$',
      "'host_perfdata_file_mode' not in ['a', 'w', 'p']")
  }
  if $host_perfdata_file_processing_command != undef {
    validate_string($host_perfdata_file_processing_command)
  }
  if $host_perfdata_file_processing_interval != undef {
    validate_integer($host_perfdata_file_processing_interval, undef, 0)
  }
  if $host_perfdata_file_template != undef {
    validate_string($host_perfdata_file_template)
  }
  if $host_perfdata_process_empty_results != undef {
    validate_integer($host_perfdata_process_empty_results, 1, 0)
  }
  validate_string($illegal_macro_output_chars)
  validate_string($illegal_object_name_chars)
  validate_integer($interval_length, undef, 1)
  validate_string($lock_file)
  validate_string($log_archive_path)
  validate_integer($log_event_handlers, 1, 0)
  validate_integer($log_external_commands, 1, 0)
  validate_string($log_file)
  validate_integer($log_host_retries, 1, 0)
  validate_integer($log_initial_states, 1, 0)
  validate_integer($log_notifications, 1, 0)
  validate_integer($log_passive_checks, 1, 0)
  validate_re($log_rotation_method,
    '^[nhdwm]$',
    "'log_rotation_method' not in ['n', 'h', 'd', 'w', 'm']")
  validate_integer($log_service_retries, 1, 0)
  validate_numeric($low_host_flap_threshold, undef, 0.1)
  validate_numeric($low_service_flap_threshold, undef, 0.1)
  validate_integer($max_check_result_file_age, undef, 0)
  validate_integer($max_check_result_reaper_time, undef, 1)
  validate_integer($max_concurrent_checks, undef, 0)
  validate_integer($max_debug_file_size, undef, 1)
  validate_integer($max_host_check_spread, undef, 1)
  validate_integer($max_service_check_spread, undef, 1)
  validate_string($nagios_group)
  validate_string($nagios_user)
  validate_integer($notification_timeout, undef, 1)
  validate_integer($obsess_over_hosts, 1, 0)
  validate_integer($obsess_over_services, 1, 0)
  if $ochp_command != undef {
    validate_string($ochp_command)
  }
  if $ocsp_command != undef {
    validate_string($ocsp_command)
  }
  validate_integer($ocsp_timeout, 1, 0)
  validate_string($object_cache_file)
  validate_string($p1_file)
  validate_integer($passive_host_checks_are_soft, 1, 0)
  validate_integer($perfdata_timeout, undef, 1)
  validate_string($precached_object_file)
  validate_integer($process_performance_data, 1, 0)
  validate_string($resource_file)
  validate_integer($retained_contact_host_attribute_mask, undef, 0)
  validate_integer($retained_contact_service_attribute_mask, undef, 0)
  validate_integer($retained_host_attribute_mask, undef, 0)
  validate_integer($retained_process_host_attribute_mask, undef, 0)
  validate_integer($retained_process_service_attribute_mask, undef, 0)
  validate_integer($retained_service_attribute_mask, undef, 0)
  validate_integer($retain_state_information, undef, 0)
  validate_integer($retention_update_interval, undef, 0)
  validate_integer($service_check_timeout, undef, 1)
  validate_re($service_check_timeout_state,
    '^[cuwo]$',
    "'service_check_timeout_state' not in ['c', 'u', 'w', 'o']")
  validate_integer($service_freshness_check_interval, undef, 1)
  validate_re($service_inter_check_delay_method,
    '^([nds]|\d+(\.\d+)?)$',
    "'service_inter_check_delay_method' not in ['n', 'd', 's'] or a positive float")
  validate_string($service_interleave_factor)
  if $service_perfdata_command != undef {
  validate_string($service_perfdata_command)
  }
  if $service_perfdata_file != undef {
    validate_string($service_perfdata_file)
  }
  if $service_perfdata_file_mode != undef {
    validate_re($service_perfdata_file_mode,
      '^[awp]$',
      "'service_perfdata_file_mode' not in ['a', 'w', 'p']")
  }
  if $service_perfdata_file_processing_command != undef {
    validate_string($service_perfdata_file_processing_command)
  }
  if $service_perfdata_file_processing_interval != undef {
    validate_integer($service_perfdata_file_processing_interval, undef, 1)
  }
  if $service_perfdata_file_template != undef {
    validate_string($service_perfdata_file_template)
  }
  if $service_perfdata_process_empty_results != undef {
    validate_integer($service_perfdata_process_empty_results, 1, 0)
  }
  validate_numeric($sleep_time, undef, 0)
  validate_integer($soft_state_dependencies, 1, 0)
  validate_string($state_retention_file)
  validate_string($status_file)
  validate_integer($status_update_interval, undef, 1)
  validate_string($temp_file)
  validate_string($temp_path)
  if $time_change_threshold != undef {
    validate_integer($time_change_threshold, undef, 0)
  }
  validate_integer($translate_passive_host_checks, 1, 0)
  validate_integer($use_aggressive_host_checking, 1, 0)
  validate_integer($use_embedded_perl_implicitly, 1, 0)
  validate_integer($use_large_installation_tweaks, 1, 0)
  validate_integer($use_regexp_matching, 1, 0)
  validate_integer($use_retained_program_state, 1, 0)
  validate_integer($use_retained_scheduling_info, 1, 0)
  validate_integer($use_syslog, 1, 0)
  if $use_timezone != undef {
    validate_string($use_timezone)
  }
  validate_integer($use_true_regexp_matching, 1, 0)

  package { $package_name:
    ensure => $package_ensure,
  }

  file { $config_dir:
    ensure  => directory,
    owner   => $config_dir_owner,
    group   => $config_dir_group,
    mode    => $config_dir_mode,
    force   => true,
    require => Package[$package_name],
  }

  file { $config_file:
    ensure  => file,
    owner   => $config_file_owner,
    group   => $config_file_group,
    mode    => $config_file_mode,
    content => template("${module_name}/etc/nagios/nagios.cfg.erb"),
    require => [
      Package[$package_name],
      File[$config_dir]
    ],
  }

  file { $cgi_config_file:
    ensure  => file,
    owner   => $config_file_owner,
    group   => $config_file_group,
    mode    => $config_file_mode,
    content => template("${module_name}/etc/nagios/cgi.cfg.erb"),
    require => File[$config_dir],
  }

  file { $service_file:
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => template("${module_name}/etc/init.d/nagios.erb"),
    require => Package[$package_name],
  }

  service { 'nagios':
    ensure  => $service_ensure,
    enable  => $service_enable,
    require => File[$config_file],
  }

}
