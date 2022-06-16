
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml
sleep 60

while sleep 5 ; do
  date
  curl --max-time 2 -o /dev/null -w "%{http_code}" 192.168.100.151
done

