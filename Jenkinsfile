pipeline{
    agent any
    tools{
        maven 'Maven'
    }
    stages{
        stage("code checkout"){
            steps{
            bat "echo hello"
            }
        }   
        stage("code build"){
            steps{
            bat "mvn clean"
            }
        }
        stage("unit test"){
            steps{
            bat "mvn test"
            }
        }
        stage("Sonar Analysis"){
            steps{
            withSonarQubeEnv("Test_Sonar")
                {
                    bat "mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.8:sonar"
                }
            }
        }
    }
    post{
        success{
            bat "echo success"
            }
        }
}
