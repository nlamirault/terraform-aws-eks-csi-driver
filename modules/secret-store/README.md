# EFS CSI Driver

Terraform module which configure EFS CSI Driver resources on Amazon AWS

## Usage

```hcl
module "efs" {
  source  = "nlamirault/eks-csi-driver/aws//modules/efs"
  version = "x.y.z"

  cluster_name = var.cluster_name

  namespace       = var.namespace
  service_account = var.service_account

  tags = var.tags
}
```

and variables :

```hcl
cluster_name = "foo-staging-eks"

namespace       = "kube-system"
service_account = "efs-csi-driver"

tags = {
    "project" = "foo"
    "env"     = "staging"
    "service" = "efs-csi-driver"
    "made-by" = "terraform"
}
```

## Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.14.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_irsa"></a> [irsa](#module\_irsa) | terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc | 4.14.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.csi_driver_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS cluster | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The Kubernetes namespace | `string` | `"kube-system"` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the Secret Store CSI driver IAM role | `string` | `"secret-store-csi-driver-controller"` | no |
| <a name="input_role_policy_name"></a> [role\_policy\_name](#input\_role\_policy\_name) | The prefix of the Secret Store CSI driver IAM policy | `string` | `"AmazonEKS_SecretStore_CSI_Driver_Policy"` | no |
| <a name="input_secrets_data"></a> [secrets\_data](#input\_secrets\_data) | Secret Store CSI Driver data | <pre>list(object({<br>    name      = string<br>    prefix    = string<br>    namespace = string<br>    sa_name   = string<br>  }))</pre> | `[]` | no |
| <a name="input_service_account"></a> [service\_account](#input\_service\_account) | The Kubernetes service account | `string` | `"secret-store-csi-driver-controller"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for Secret Store CSI Driver | `map(string)` | <pre>{<br>  "Made-By": "terraform"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | Amazon Resource Name for EFS CSI Driver |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
