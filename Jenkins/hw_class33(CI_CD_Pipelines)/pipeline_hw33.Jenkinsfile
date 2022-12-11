pipeline {
    agent any

    environment {
        ENV_NAME_DOCKER_IMAGES = "${params.ENV_DOCKER_IMAGES_NAME}"
        ENV_TAG_DOCKER_IMAGES = "${params.ENV_DOCKER_IMAGES_TAG}"
        ENV_REDIRECT_DOCKER_CONTAINER = "${params.ENV_DOCKER_CONTAINER_REDIRECT}"
        ENV_NAME_DOCKER_CONTAINER = "${params.ENV_DOCKER_CONTAINER_NAME}"
        ENV_PORT_DOCKER_CONTAINER = "${params.ENV_DOCKER_CONTAINER_PORT}"
        ENV_USER_GIT = "${params.ENV_GIT_USER}"
        ENV_REPOSITORY_GIT = "${params.ENV_GIT_REPOSITORY}"
    }

    stages {
        stage('CI') {
            steps {
                checkout([
                    $class: 'GitSCM', branches: [[name: "master"]],
                    doGenerateSubmoduleConfigurations: false,
                    submoduleCfg: [],
                    userRemoteConfigs: [[credentialsId: 'f006abc1-ba49-4c6d-b919-aab0fe61416c', url: "git@github.com:${ENV_USER_GIT}/${ENV_REPOSITORY_GIT}.git"]]
                ])

                script {
                    sh "sudo docker build -t ${ENV_NAME_DOCKER_IMAGES}:${ENV_TAG_DOCKER_IMAGES} --build-arg DOCKER_IMAGES_NAME=${ENV_NAME_DOCKER_IMAGES} --build-arg DOCKER_IMAGES_TAG=${ENV_TAG_DOCKER_IMAGES} --build-arg DOCKER_CONTAINER_REDIRECT=${ENV_REDIRECT_DOCKER_CONTAINER} docker/."
                    sh "sudo docker images"
                }
            }
        }

        stage('CD') {
            steps {
                script {
                    sh "sudo docker run -d --rm --name ${ENV_NAME_DOCKER_CONTAINER}_${ENV_NAME_DOCKER_IMAGES} -p ${ENV_PORT_DOCKER_CONTAINER}:80 -p ${ENV_REDIRECT_DOCKER_CONTAINER}:443 ${ENV_NAME_DOCKER_IMAGES}:${ENV_TAG_DOCKER_IMAGES}"
                }
            }
        }
    }
}
