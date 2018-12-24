#!/bin/bash

TERRAFORM_BIN=terraform
TERRAFORM_VERSION=0.11.11
TERRAFORM_ZIP_FILE=terraform_$TERRAFORM_VERSION_linux_amd64.zip
 
function install_terraform {
	if [ -z $(which $TERRAFORM_BIN) ]
	   then
		   curl  -LO https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION/${TERRAFORM_ZIP_FILE}
		   unzip ${TERRAFORM_ZIP_FILE}
		   sudo mv ${TERRAFORM_BIN} /usr/local/bin/${TERRAFORM_BIN}
		   rm -rf ${TERRAFORM_ZIP_FILE}
	else
	   echo "Terraform is most likely installed"
	fi
 
}
 
install_terraform 
