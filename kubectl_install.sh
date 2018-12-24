!#/bin/bash

KUBECTL_BIN=kubectl
 
function install_kubectl {
	if [ -z $(which $KUBECTL_BIN) ]
	   then
	       KUBECTL_VERSION=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
		   echo "kubectl version: $KUBECTL_VERSION"
		   curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/$KUBECTL_BIN
		   chmod +x ${KUBECTL_BIN}
		   sudo mv ${KUBECTL_BIN} /usr/local/bin/${KUBECTL_BIN}
	else
	   echo "Kubectl is most likely installed"
	fi
 
}

install_kubectl
