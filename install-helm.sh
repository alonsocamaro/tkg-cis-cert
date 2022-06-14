kubectl create secret generic f5-bigip-ctlr-login -n kube-system --from-literal=username=admin --from-literal=password=$1
helm repo add f5-stable https://f5networks.github.io/charts/stable
helm install -f values.yaml cis f5-stable/f5-bigip-ctlr
