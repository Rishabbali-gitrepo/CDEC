<img width="1452" height="373" alt="image" src="https://github.com/user-attachments/assets/3dcd8502-93f2-40e3-a99c-5cc95846c07f" />

````
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: redis
spec:
  serviceName: "redis"
  replicas: 4
  selector:
    matchLabels:
      app: redis
  template:
    metadata:
      labels:
        app: redis
    spec:
      containers:
      - name: redis
        image: redis:5.0.5
        ports:
        - containerPort: 6379
          name: redis
  volumeClaimTemplates:
  - metadata:
      name: redis-data
    spec:
      accessModes: [ "ReadWriteOnce" ]
      resources:
        requests:
          storage: 1Gi
````
