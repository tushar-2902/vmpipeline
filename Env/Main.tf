module "rg" {
  source ="../Module/resource_group"
  rg-name ="Tushar-rg"
  location ="West Europe"
}

module "vnet" {
  depends_on = [ module.rg ]
  source = "../Module/vnet"
  nsg-name = "Tushar-nsg"
  location = "west Europe"
  rg-name ="Tushar-rg"
  vn-name = "Tushar-vn"
  }

  module "pip" {
    depends_on = [ module.rg ]
    source = "../Module/public-ip"
    pip-name = "Tushar-pip"
     rg-name ="Tushar-rg"
     location ="West Europe"

  }

  module "sb" {
    depends_on = [ module.vnet ]
    source = "../Module/subnet"
    sb-name = "Tushar-sb"
    rg-name = "Tushar-rg"
    vn-name = "Tushar-vn"

  }


  module "vm" {
    depends_on = [ module.sb,module.pip ]
    source = "../Module/vm"
    nic-name = "Tushar-nic"
    rg-name="Tushar-rg"
    location="west Europe"
    vm-name = "Tushar-vm"
    sb-name = "Tushar-sb"
    vn-name = "Tushar-vn"
    pip-name = "Tushar-pip"
  
  }

  



  



    