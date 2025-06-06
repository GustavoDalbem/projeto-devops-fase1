# Configura o provedor AWS
provider "aws" {
  region = "sa-east-1"    # Região fictícia: São Paulo (sa-east-1)
}

# 1. Recurso: bucket S3
resource "aws_s3_bucket" "bucket_devops_fase1" {
  bucket = "projeto-devops-fase1"    # Nome do bucket
  acl    = "private"                  # Acesso privado
  tags = {
    Name        = "bucket-devops-fase1"
    Environment = "dev"
  }
}

# 2. Recurso: instância EC2 mínima
resource "aws_instance" "vm_devops_fase1" {
  ami           = "ami-xxxxxxxxxxxxxxxxx"   # Substitua por uma AMI Ubuntu válida na região sa-east-1
  instance_type = "t2.micro"                # Tipo de instância pequena

  tags = {
    Name        = "DevOps-Fase1-VM"
    Environment = "dev"
  }
}

# Observação:
# - Antes de executar, altere o AMI para uma ID válida de Ubuntu em sa-east-1
# - Caso não queira criar a instância EC2, comente ou remova este bloco
