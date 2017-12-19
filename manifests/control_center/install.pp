class confluent::control_center::install {

  package { 'confluent-control-center':
    ensure  => installed,
    require => Exec['repo update'],
  }
}
