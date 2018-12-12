import java.text.SimpleDateFormat

//readProperties = loadConfigurationFile 'buildConfiguration'
 pipeline {
    agent {
        docker {
            image 'sedenom/foodcritic
            args '-v tf_plugins:/plugins'
        }
    }
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key')
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_key')
        TF_VAR_my_public_key_path = credentials('ssh-public-key')
        TF_VAR_my_private_key_path = credentials('ssh-private-key')
        TOKEN = credentials('gh-token')
        SONAR_TOKEN = credentials('sonar-token')
        TF_PLUGIN_CACHE_DIR = '/plugins'
    }
    stages {
        stage('run foodcritic'){
          steps{
              echo "running foodcritic"
              sh 'foodcritic'
          }
        }
    }

}
