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

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
