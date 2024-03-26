kubectl create ns argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml


kubectl patch service -n argocd argocd-server --type='json' -p='[{"op":"replace","path":"/spec/type","value":"NodePort"}]'

get the pass word for UI
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d