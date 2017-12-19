class confluent::control_center::config (

) {

  confluent::propertyfile { '/etc/kafka/control-center.properties':
    propertyhash => $::confluent::control_center_properties,
    component    => 'control-center',
  }

  confluent::propertyfile { '/etc/kafka/control-center-log4j.properties':
    propertyhash => $::confluent::control_center_log4j_properties,
    component    => 'control-center_log4j',
  }

}
