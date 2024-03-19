kubectl get pods \
  --namespace  vote \
  -o jsonpath='{range .items[*]}{"\n"}{.metadata.namespace}{":\t"}{range .spec.containers[*]}{.image}{end}{end}' \
  | sed '/^$/d'
echo
