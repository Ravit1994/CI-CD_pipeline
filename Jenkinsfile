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
                    withMaven(maven:'Maven') {
                        bat "mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.8.0.2131:sonar"
                    }
                }
            }
        }
        stage("Publish to Artifactory"){
            steps{
                rtMavenDeployer(
                    id: 'deployer',
                    serverId: 'My_Artifactory',
                    releaseRepo: 'My_Artifactory',
                    snapshotRepo: 'My_Artifactory'
                )
                rtMavenRun(
                    pom: 'pom.xml',
                    goals: 'clean install',
                    deployerId: 'deployer'
                    )
                rtPublishBuildInfo(
                    serverId:'My_Artifactory',
                )
            }        
        }
    }
    post{
        success{
            bat "echo success"
            }
        }
}
