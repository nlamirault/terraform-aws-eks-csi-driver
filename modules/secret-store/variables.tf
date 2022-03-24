# Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#############################################################################
# EFS CSI Driver

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "namespace" {
  type        = string
  description = "The Kubernetes namespace"
  default     = "kube-system"
}

variable "service_account" {
  type        = string
  description = "The Kubernetes service account"
  default     = "secret-store-csi-driver-controller"
}

variable "role_name" {
  description = "The name of the Secret Store CSI driver IAM role"
  type        = string
  default     = "secret-store-csi-driver-controller"
}

variable "role_policy_name" {
  description = "The prefix of the Secret Store CSI driver IAM policy"
  default     = "AmazonEKS_SecretStore_CSI_Driver_Policy"
  type        = string
}

variable "secrets_data" {
  description = "Secret Store CSI Driver data"
  type = list(object({
    name      = string
    prefix    = string
    namespace = string
    sa_name   = string
  }))
  default = []
}

variable "tags" {
  type        = map(string)
  description = "Tags for Secret Store CSI Driver"
  default = {
    "Made-By" = "terraform"
  }
}
