rg_name = "test-rg"
location = "Centralindia"

vnets = {
  vnet1 = {
    name = "DEV-VNET"
    address_space = [
      "10.10.0.0/16"
    ]
  }
}

route_tables = {
  rt1 = {
    name           = "RouteTable-Web"
    route_name     = "InternetRoute"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "Internet"
  }
}
subnets = {
  sub-1 = {
    subnet_name = "frontend-subnet"
    vnet = "hub"
    subnet_address_space = ["10.0.1.0/24"]
  }
}
