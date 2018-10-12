node{
    def mvnHome = tool name: 'maven3', type: 'maven'
    def mvnCmd = "${mvnHome}/bin/mvn"
    stage('Git Checkout'){
        git 'https://github.com/javahometech/my-app'
    }
    stage('Create Package'){
        sh "${mvnCmd} clean package"
    }
     stage('Upload War To Nexus'){
         sh "${mvnCmd} deploy"
    }
    stage('Run Ansible Deploy Playbook'){
        // Connect to Ansible Control Machine
        sshagent(['ansible-cm']) {
           def playbookCmd = 'ansible-playbook -i /home/ubuntu/ansible-3tier/dev-inventory  /home/ubuntu/ansible-3tier/deploy-to-tomcat.yml -e war_version=0.0.3'
           sh "ssh -o StrictHostKeyChecking=no ubuntu@172.31.28.161 ${playbookCmd}"
        }
    }
    
}
