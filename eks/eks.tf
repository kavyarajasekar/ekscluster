module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.2.0"

  name              = local.cluster_name
  kubernetes_version = "1.31"
  #iam_role_arn = aws_iam_role.eks_cluster_role.arn
  

  vpc_id                         = module.vpc.vpc_id
  subnet_ids                     = module.vpc.private_subnets
  endpoint_public_access         = true
  enable_irsa = true
  

  addons = {
    aws-ebs-csi-driver = {
      resolve_conflicts = "OVERWRITE"
    }
    
  coredns = {
    resolve_conflicts = "OVERWRITE"
  }

  kube-proxy = {
    resolve_conflicts = "OVERWRITE"
  }

  }

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
  }

  eks_managed_node_groups = {
    one = {
      name           = "node-group-1"
      #ami_type = "AL2_x86_64"
      instance_types = ["t3.small"]
      min_size       = 1
      max_size       = 3
      desired_size   = 2
      #iam_role_arn   = aws_iam_role.eks_node_group_role.arn
    }

    two = {
      name           = "node-group-2"
     # ami_type = "AL2_x86_64"
      instance_types = ["t3.small"]
      min_size       = 1
      max_size       = 2
      desired_size   = 1
     # iam_role_arn   = aws_iam_role.eks_node_group_role.arn
      
    }
  }
}
