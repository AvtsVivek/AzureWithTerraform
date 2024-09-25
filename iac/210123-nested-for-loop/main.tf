locals {

  web_vmnic_inbound_ports_map = {
    object1={
      priority = 100,
      port = 80
    }, 
    object2={
      priority = 110,
      port = 443
    }, 
    object3={
      priority = 120,
      port = 22
    }, 
  }

  vm_count = [
    "one",
    "two",
    "three",
  ]

  vm_count_port_maps = flatten([
    for vm in local.vm_count : [
      for port_map in local.web_vmnic_inbound_ports_map : {
        port = port_map.port
        priority = port_map.priority
        vm   = vm
      }
    ]
  ])
}

output "print_the_local_vm_count_portmapping" {
  value = [for vmp in local.vm_count_port_maps : vmp]
}



