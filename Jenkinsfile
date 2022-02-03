pipeline{
    agent any
    tools{
        maven "Maven"
    }
    stages{
        stage("code checkout"){
            steps{
            bat "echo hello"
            }
        }   
        stage("code build"){
            steps{
            bat "echo build"
            }
        }
        stage("unit test"){
            steps{
            bat "echo unit-test"
            }
        }
    }
    post{
        success{
            bat "echo success"
            }
        }
}
