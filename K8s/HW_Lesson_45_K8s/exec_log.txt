PS C:\Users\Admin> kubectl config view
apiVersion: v1
clusters:
- cluster:
    certificate-authority: C:\Users\Admin\.minikube\ca.crt
    extensions:
    - extension:
        last-update: Mon, 30 Jan 2023 11:06:48 MSK
        provider: minikube.sigs.k8s.io
        version: v1.29.0
      name: cluster_info
    server: https://192.168.59.101:8443
  name: minikube
contexts:
- context:
    cluster: minikube
    extensions:
    - extension:
        last-update: Mon, 30 Jan 2023 11:06:48 MSK
        provider: minikube.sigs.k8s.io
        version: v1.29.0
      name: context_info
    namespace: default
    user: minikube
  name: minikube
current-context: minikube
kind: Config
preferences: {}
users:
- name: minikube
  user:
    client-certificate: C:\Users\Admin\.minikube\profiles\minikube\client.crt
    client-key: C:\Users\Admin\.minikube\profiles\minikube\client.key

PS C:\Users\Admin> kubectl get componentstatuses
Warning: v1 ComponentStatus is deprecated in v1.19+
NAME                 STATUS    MESSAGE                         ERROR
controller-manager   Healthy   ok
scheduler            Healthy   ok
etcd-0               Healthy   {"health":"true","reason":""}

PS C:\Users\Admin> kubectl cluster-info
Kubernetes control plane is running at https://192.168.59.101:8443
CoreDNS is running at https://192.168.59.101:8443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.

PS C:\Users\Admin> kubectl get nodes
NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   19m   v1.26.1
