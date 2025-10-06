# Terraform EKS Cluster on AWS

This repository provisions an Amazon EKS (Elastic Kubernetes Service) cluster and its supporting AWS infrastructure using Terraform.

## Features

- Creates a VPC with public and private subnets
- Configures Internet Gateway and NAT Gateway
- Sets up route tables and associations
- Deploys an EKS cluster in the specified region and availability zones

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS CLI configured with appropriate credentials
- An AWS account

## Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
   ```

2. **Initialize Terraform:**
   ```bash
   terraform init
   ```

3. **Review and update variables:**
   Edit `terraform.tfvars` to set your desired VPC, subnets, region, and cluster name.

4. **Plan the deployment:**
   ```bash
   terraform plan
   ```

5. **Apply the configuration:**
   ```bash
   terraform apply
   ```

6. **Destroy the infrastructure:**
   ```bash
   terraform destroy
   ```

## File Structure

```
.
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── output.tf
│   └── eks/
│       ├── main.tf
│       ├── variables.tf
│       └── output.tf
```

## Customization

- Modify `terraform.tfvars` for your environment.
- Edit module files in `modules/vpc` and `modules/eks` for advanced networking or cluster options.

## License

MIT

---

**Note:**  
Do not commit sensitive files such as `terraform.tfstate`, `.terraform/`, or `*.tfvars` with secrets.  
Use the provided `.gitignore` to keep your repository clean.
