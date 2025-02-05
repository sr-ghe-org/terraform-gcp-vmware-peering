
# Google VMware Engine Peering

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.64 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 4.64 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.64 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_vmwareengine_network_peering.vmw-engine-network-peering](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vmwareengine_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vmw_network_peering"></a> [vmw\_network\_peering](#input\_vmw\_network\_peering) | VMware network peering configuration | <pre>map(object({<br>    name                                = string<br>    description                         = optional(string, null)<br>    project                             = string<br>    peer_network                        = string<br>    peer_network_type                   = optional(string, "STANDARD")<br>    vmware_engine_network               = string<br>    export_custom_routes                = optional(bool, false)<br>    import_custom_routes                = optional(bool, false)<br>    export_custom_routes_with_public_ip = optional(bool, false)<br>    import_custom_routes_with_public_ip = optional(bool, false)<br>  }))</pre> | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->