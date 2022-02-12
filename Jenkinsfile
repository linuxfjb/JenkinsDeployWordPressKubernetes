node {
  stage('List pods') {
    //this works with the kubernetes cli plugin and operates on the git checkout.
    //
    //k8 service account token AND jenkins 'secret text' SETUP
    //the k8 service account was generated and then created a token, applied base64 and then took that text
    //and added it into jenkins credentials as a 'secret text'
    checkout scm
    //git url: 'https://github.com/linuxfjb/JenkinsDeployWordPressKubernetes', branch: 'main'
    withKubeConfig([credentialsId: 'k8_serviceaccount_token_default',
                    //caCertificate: '<ca-certificate>',
                    serverUrl: 'https://localhost:6443',
                    //contextName: 'kubernetes-admin@kubernetes',
                    //clusterName: 'kubernetes',
                    //namespace: 'devops-tools'
                    ]) {
      sh 'kubectl get pods -o wide'
      sh 'kubectl apply -f yaml/'
    }
  }
}
