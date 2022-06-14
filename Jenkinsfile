node{
   stage('SCM Checkout'){
       git branch: 'main', url: 'https://github.com/bhanusaisuryateja/jajjaj.git'
   }
   stage('Mvn Package'){
     sh "mvn clean package"
   }
   stage('Build Docker Image'){
     sh 'docker build -t bhanusaisuryateja/pipeline-app:4.0.0 .'
   }
   stage('Push Docker Image'){
     withCredentials([string(credentialsId: 'bhanusaisuryateja', variable: 'dockerhubcre')]) {
        sh "docker login -u bhanusaisuryateja -p ${dockerhubcre}"
     }
     sh 'docker push bhanusaisuryateja/pipeline-app:4.0.0'
   }
 }
