# This file is used purely to provide data for dependency checks, it does not create anything

locals {
  vm_family = split("-", var.machine_type)[0]
  cpu_count = split("-", var.machine_type)[2]

  supported_list = {
    "c4a" = {
      nic_types  = ["GVNIC"]
      disk_types = ["hyperdisk-balanced", "hyperdisk-balanced-high-availability", "hyperdisk-throughput", "hyperdisk-extreme", "hyperdisk-ML"]
    }
    "e2" = {
      nic_types  = ["GVNIC", "VIRTIO_NET"]
      disk_types = ["pd-balanced", "pd-ssd", "pd-standard"]
    }
    "n2" = {
      nic_types  = ["GVNIC", "VIRTIO_NET"]
      disk_types = ["pd-standard", "pd-balanced", "pd-ssd", "pd-extreme", "hyperdisk-extreme", "hyperdisk-throughput"]
    }
    "c2" = {
      nic_types  = ["GVNIC", "VIRTIO_NET"]
      disk_types = ["pd-standard", "pd-balanced", "pd-ssd"]
    }
    "c4" = {
      nic_types  = ["GVNIC"]
      disk_types = ["hyperdisk-balanced", "hyperdisk-balanced-high-availability", "hyperdisk-throughput", "hyperdisk-extreme"]
    }
    "t2a" = {
      nic_types  = ["GVNIC"]
      disk_types = ["pd-standard", "pd-balanced", "pd-ssd"]
    }
  }
  supported = try(local.supported_list[local.vm_family], { "nic_types" = null, "disk_types" = null })
}
