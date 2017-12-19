class confluent::control_center::service (
  $daemonpath       = '/usr/bin',
  $configpath       = '/etc/kafka',
  $daemonname       = 'control-center',
  $propertyname     = 'control-center.properties',
  $pidpattern       = '[c]ontrolCenter',
  $kafka_opts       = $confluent::control_center_opts,
  $heap_opts        = $confluent::control_center_heap_opts,
) {

  file { '/etc/init.d/control-center':
    ensure  => file,
    mode    => '0755',    
    content => template('confluent/init.erb'),
    require => Package[ "confluent-control-center" ],
  }

  service { 'control-center':
    ensure   => running,
    enable   => true,
    require  => File['/etc/init.d/control-center'],
    provider => 'init',
  }

}
