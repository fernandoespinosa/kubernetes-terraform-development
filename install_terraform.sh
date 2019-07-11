TERRAFORM_ZIP_FILE=terraform_0.11.7_linux_amd64.zip
TERRAFORM=https://releases.hashicorp.com/terraform/0.11.7
TERRAFORM_BIN=terraform
 
function install_terraform {
    if [ -z $(which $TERRAFORM_BIN) ]
       then
           wget ${TERRAFORM}/${TERRAFORM_ZIP_FILE}
           unzip ${TERRAFORM_ZIP_FILE}
           sudo mv ${TERRAFORM_BIN} /usr/local/bin/${TERRAFORM_BIN}
           rm -rf ${TERRAFORM_ZIP_FILE}
    else
       echo "Terraform is most likely installed"
    fi
 
}
 
install_terraform