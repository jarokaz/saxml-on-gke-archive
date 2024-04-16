# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

project_id                         = "ai-infra-genai-sa"
region                             = "us-west1"
prefix                             = "jk-saxml"
deletion_protection                = false
create_artifact_registry           = false
create_perf_testing_infrastructure = false


cpu_node_pools = {


  default-node-pool = {
    zones          = ["us-west1-a"]
    min_node_count = 1
    max_node_count = 3
    machine_type   = "n1-standard-8"
    disk_size_gb   = 200
    taints         = {}
    labels         = {}
  }

  large-workloads-node-pool = {
    zones          = ["us-west1-a"]
    min_node_count = 0
    max_node_count = 3
    machine_type   = "n2-highmem-32"
    disk_size_gb   = 500
    taints         = {}
    labels         = {}
  }
}

tpu_node_pools = {
  tpu-v5litepod-16-node-pool-1 = {
    zones    = ["us-west1-c"]
    tpu_type = "v5litepod-16"
    spot     = true
  }

  tpu-v5litepod-16-node-pool-2 = {
    zones    = ["us-west1-c"]
    tpu_type = "v5litepod-16"
    spot     = true
  }
}
