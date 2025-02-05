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
 
# Vmware Engine Network Peering [VEN]

resource "google_vmwareengine_network_peering" "vmw-engine-network-peering" {
  for_each                            = length(var.vmw_network_peering) > 0 ? var.vmw_network_peering : {}
  name                                = each.value.name
  description                         = each.value.description
  peer_network                        = each.value.peer_network
  peer_network_type                   = each.value.peer_network_type
  vmware_engine_network               = each.value.vmware_engine_network
  export_custom_routes                = each.value.export_custom_routes
  import_custom_routes                = each.value.import_custom_routes
  export_custom_routes_with_public_ip = each.value.export_custom_routes_with_public_ip
  import_custom_routes_with_public_ip = each.value.import_custom_routes_with_public_ip
}