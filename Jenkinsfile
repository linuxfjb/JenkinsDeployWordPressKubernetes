node {
  stage('List pods') {
    checkout scm
    //git url: 'https://github.com/linuxfjb/JenkinsDeployWordPressKubernetes', branch: 'main'
    withKubeConfig([credentialsId: 'kubernetes-admin',
                    //caCertificate: '<ca-certificate>',
                    //serverUrl: 'http://localhost/',
                    //contextName: 'kubernetes-admin@kubernetes',
                    //clusterName: 'kubernetes',
                    //namespace: 'devops-tools'
                    ]) {
      sh 'kubectl get pods -o wide'
      sh 'kubectl apply -f yaml/'
    }
  }
}
