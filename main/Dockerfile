FROM centos:7

# git入れてあげるといいかも
# dockerの初期設定系も
# sudo顕現周り調べろ

RUN yum update -y

# Terraform install
RUN yum install -y yum-utils \
    && yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo \
    && yum -y install terraform

# aws vault install 
RUN curl -L https://github.com/99designs/aws-vault/releases/download/v7.2.0/aws-vault-linux-amd64 -o /usr/local/bin/aws-vault \
    && chmod 755 /usr/local/bin/aws-vault \
    &&  aws-vault --version

RUN yum install python3 -y