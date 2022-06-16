
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml

while true ; do
  date
  curl --max-time 2 192.168.100.151
done

