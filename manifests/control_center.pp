class confluent::control_center { 

  require confluent::repo

  class { '::confluent::control_center::install': } ->
  class { '::confluent::control_center::config': } ->
  class { '::confluent::control_center::service': }


}
