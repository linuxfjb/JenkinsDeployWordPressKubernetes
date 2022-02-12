#this is used for jenkins credentials (service account user)
#must have serviceaccount created first

#NOTE: creates a service_account_secret.txt file to copy paste into jenkins.

SECRET_NAME=$(kubectl get serviceaccount jenkins-admin  -o=jsonpath='{.secrets[0].name}' -n default)
kubectl get secrets $SECRET_NAME  -o=jsonpath='{.data.token}' -n default | base64 -d > service_account_secret.txt
