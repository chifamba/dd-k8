

istioctl install -f /Users/robert/projects/istio/istio/samples/bookinfo/demo-profile-no-gateways.yaml -y

kubectl label namespace default istio-injection=enabled

kubectl get crd gateways.gateway.networking.k8s.io &> /dev/null || \
{ kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v1.1.0" | kubectl apply -f -; }


kubectl apply -f /Users/robert/projects/istio/istio/samples/addons
kubectl rollout status deployment/kiali -n istio-system

sleep 45
istioctl dashboard kiali &
