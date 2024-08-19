Kubernetes


Here's a summary of the transcript as a set of instructions for working with Kubernetes using Minikube and testing Kubernetes YAML files:

Enable systemd on wsl 1st
https://gist.github.com/djfdyuruiry/6720faa3f9fc59bfdf6284ee1f41f950
Download microk8s
sudo snap install microk8s --classic --channel=1.31

How to Work with Kubernetes Using Minikube and Test Kubernetes YAML

1. Set up Minikube:
   - Download and install Minikube from the official documentation
https://gaganmanku96.medium.com/kubernetes-setup-with-minikube-on-wsl2-2023-a58aea81e6a3

How to fix the apt-key deprecated warning in Ubuntu

Open a terminal window.
Change into the apt directory with cd /etc/apt.
Copy the trusted.gpg file into the trusted.gpg.d with sudo cp trusted.gpg trusted.gpg.d.
   - Start Minikube with multiple nodes: `minikube start --nodes 3`
Although we only need 2, you will have to specify 3 as 2 nodes and 1 control plane
may also need to use minikube add 2 + 3

2. Configure kubectl:
   - Set an alias for kubectl: `alias kubectl="minikube kubectl --"`

3. Verify cluster setup:
   - Check nodes: `kubectl get nodes`
 
 - Verify Minikube status: `minikube status`

 


4. Deploy Nginx:
This requires a little bit of tinkering if you use WSL ubuntu
Enter "\\wsl$" in the File Explorer address bar to view all of your Linux distributions.
Select ubuntu
pwd in teminal
Navigate to home directory
Drag and drop files from windows into home directory
   - Create a deployment YAML file (e.g., nginx-deployment.yaml)
   - Apply the deployment: `kubectl apply -f nginx-deployment.yaml`
 

   - Check deployment status: `kubectl rollout status deployment nginx-deployment`
 


5. Verify deployment:
   - List pods: `kubectl get pods -o wide`
 


   - List deployments: `kubectl get deployments`
 

   - List replica sets: `kubectl get replicasets`
 


6. Check Nginx version:
   - Execute into a pod: `kubectl exec -it nginx-deployment-77d8468669-jl8rc -- /bin/bash`
   - Run `nginx -v` inside the pod

7. Upgrade Nginx version:
   - Update the image version in the deployment YAML
   - Apply the changes: `kubectl apply -f nginx-deployment.yaml`
   - Monitor rollout: `kubectl rollout status deployment nginx-deployment`

8. Scale the deployment:
   - Use kubectl scale: `kubectl scale deployment nginx-deployment --replicas=3`
   - Or update replicas in YAML and apply changes

9. Verify scaling:
   - Check replica sets: `kubectl get replicasets`
   - List pods: `kubectl get pods`

10. Test Kubernetes YAML:
    - Use kube-score: 
      ```
      docker run --rm -v $(pwd):/project zegl/kube-score:latest score nginx-deployment.yaml
      ```
    - Review and address security issues (e.g., setting resource limits)

11. Fix security issues:
    - Add resource limits to your deployment YAML:
      ```yaml
      resources:
        limits:
          cpu: "1"
          memory: "512Mi"
      ```
    - Re-run kube-score to verify fixes

