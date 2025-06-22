# EntryTracker

## מבנה פרויקט

- k8s/ - קבצי Kubernetes
- .github/workflows/ - קובץ ה-CI/CD
- src/ - קוד מקור של האפליקציה
- Dockerfile - קובץ בניית התמונה

## איך להריץ ידנית בסביבת Kubernetes

```bash
kubectl apply -f k8s/mysql-secret.yaml
kubectl apply -f k8s/mysql-service.yaml
kubectl apply -f k8s/mysql-statefulset.yaml
kubectl wait --for=condition=ready pod/mysql-0 --timeout=300s
kubectl apply -f k8s/entrytracker-configmap.yaml
kubectl apply -f k8s/entrytracker-deployment.yaml
kubectl apply -f k8s/entrytracker-service.yaml
kubectl rollout status deployment/entrytracker --timeout=180s
