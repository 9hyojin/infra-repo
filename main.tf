module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-001ce4713dcf3fb07"

  private_subnets = ["subnet-0e175ccae6ef13198", "subnet-0aa7f1d5eb2a28182"]
  public_subnets  = ["subnet-0d17d6368560d7e5e", "subnet-099f71780a9c49fc5"]
}