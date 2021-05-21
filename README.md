# iac-lab
Minha jornada no mundo de IaC


## AWS

### Autenticação

1. Instalar `aws-cli`
2. Configurar credenciais: `aws configure`
3. Digite as informações solicitadas
4. Isso irá gerar um arquivo em `~/.aws/credentials`
5. Abra esse arquivo e modifique `[default]` para `[iaclab]`


### Terraform

Iniciar: `terraform init`: Inicializa o projeto  
Planejar: `terraform plan`: Mostrar tudo que será criado/modificado em sua infra  
Aplicar: `terraform apply`: Aplica tudo que foi listado no `plan` em sua infra  
Formata: `terraform fmt`: Formata arquivos `.tf`  
