pipeline {
    agent any

    stages {
        stage('Estágio de build') {
            steps {
                // Busca o repositório no git
                // OBS: Como a versão do git da minha máquina é mais antiga, ela ainda
                // cria por padrão a branch `master`, não precisando passar como padrão qual
                // branch será utilizada no JenkinsFile
                git 'https://github.com/gcesario203/inf-trab-05-pt2'

                // Cria a imagem com o nome ole-unicamp
                sh "docker build -t ola-unicamp ."
            }
        }

        stage('Estágio de execução') {
            steps {
                sh "docker run --rm ola-unicamp"
            }

            // passo que será executado no final dos passos do stage `Estágio de execução`
            post {
                success {
                    echo "Container executado e removido com sucesso"
                }
            }
        }
    }
}