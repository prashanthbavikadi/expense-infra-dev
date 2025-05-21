pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
    }
    parameters {
      choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
    }
    stages {
        stage('init') {
            steps {
                sh """
                  cd 01-vpc
                  terraform init -reconfigure
        
                """
            }
        }
        stage('plan') {
            when {
                expression{
                    parameters.action == apply
                }
            }
            steps {
                sh """
                cd 01-vpc
                terraform plan
                """
            }
        }
        stage('deploy') {
            input {
                message "Should we continue?"
                ok "Yes, we should."
            }    
            when {
                expression{
                    params.apply == apply 
                }
            }    
            steps {
                sh """
                cd 01-vpc
                terraform apply -auto-approve
                """
            }
        }
        stage('destroy') {
            when {
                expression{
                    params.destory == destory 
                }
            }    
            
            steps {
                sh """
                cd 01-vpc
                terraform destroy -auto-approve
                """
            }
        }
    
    
        post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }
        success { 
            echo 'I will run when pipeline is success'
        }
        failure { 
            echo 'I will run when pipeline is failure'
        }
    }
}
}