pipeline {
    agent any

    options {
        ansiColor('xterm') 
    }

  
    stages {       
      stage('Run Cypress') {
            steps {
                sh 'npx cypress run --spec "cypress/e2e/spec.cy.js"'
            }
        }  

    stage('Gerar Relatorios') {
            steps {
                publishHTML(target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: 'cypress/reports/html',
                    reportFiles: 'index.html',
                    reportName: 'Cypress Test Report'
                ])
            }
        }
     }
}
