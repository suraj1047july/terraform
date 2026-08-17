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
  rt2 = {
    name           = "RouteTable-app"
    route_name     = "InternetRoute"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "Internet"
  }
}
subnets = {
  sub1 = {
    name = "frontend-subnet"
    vnet = "vnet1"
    address_prefixes = ["10.0.1.0/24"]
    route_table      = "rt1"
    nsg              = "nsg1"
  }
}
NSGs = {
  nsg1 = {
    name                       = "nsg1"
    rule_name                  = "allow_ssh"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  nsg2 = {
    name                       = "nsg2"
    rule_name                  = "allow_http"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

