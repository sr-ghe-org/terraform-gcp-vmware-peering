/**
 * Copyright 2025 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
 
variable "vmw_network_peering" {
  description = "VMware network peering configuration"
  type = map(object({
    name                                = string
    description                         = optional(string, null)
    peer_network                        = string
    peer_network_type                   = optional(string, "STANDARD")
    vmware_engine_network               = string
    export_custom_routes                = optional(bool, false)
    import_custom_routes                = optional(bool, false)
    export_custom_routes_with_public_ip = optional(bool, false)
    import_custom_routes_with_public_ip = optional(bool, false)
  }))
  default = {}
}
