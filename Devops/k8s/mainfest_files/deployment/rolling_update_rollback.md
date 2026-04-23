### vim dep.yaml

````
apiVersion: apps/v1
kind: Deployment
metadata:
  name: dep-studentapp
spec:
  replicas: 3
  selector:
    matchLabels:
      app: studentapp
  template:
    metadata:
      labels:
        app: studentapp
    spec:
      containers:
        - name: c1
          image: abhipraydh96/studentapp:v1
          ports:
            - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
  name: svc-dep-studentapp
spec:
  selector:
    app: studentapp 
  ports:
    - protocol: "TCP"
      port: 80
      targetPort: 80
  type: NodePort
````

````
kubectl apply -f dep.yaml
````
````
kubectl get svc
````
````
kubectl set image deploy/dep-studentapp c1=abhipraydh96/studentapp:v2 --record
````
````
kubectl set image deploy/dep-studentapp c1=abhipraydh96/studentapp:v3 --record
````
````

kubectl rollout history deploy/dep-studentapp
````
````
kubectl rollout undo deploy/dep-studentapp
````
````
kubectl rollout undo deploy/dep-studentapp --to-revision=1
````
