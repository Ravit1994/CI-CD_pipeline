pipeline{
    agent any
    stages{
        stage("code checkout"){
            steps{
            echo "hello"
            }
        }   
        stage("code build"){
            steps{
            echo "echo build"
            }
        }
        stage("unit test"){
            steps{
            echo "unit-test"
            }
        }
        post{
            always{
                //execute every time
            }
            success{
                sh "echo suc"
            }
        }
    }
}
