pipeline {
    agent any

    stages {
        stage('Fetch Master/Slave Details') {
            steps {
                script {
                    // Get Jenkins instance (master node)
                    def master = Jenkins.instance

                    // Print master node details
                    echo "Master Node:"
                    echo "  Name: ${master.displayName}"
                    echo "  Description: ${master.getNodeDescription()}"
                    echo "  Num Executors: ${master.getNumExecutors()}"
                    echo "  Label: ${master.getLabelString()}"

                    // Get all slave (agent) nodes
                    def slaves = Jenkins.instance.slaves

                    // Print each slave node's details
                    echo "Slave Nodes:"
                    slaves.each { slave ->
                        echo "  Name: ${slave.displayName}"
                        echo "  Description: ${slave.getNodeDescription()}"
                        echo "  Num Executors: ${slave.getNumExecutors()}"
                        echo "  Remote FS: ${slave.getRemoteFS()}"
                        echo "  Label: ${slave.getLabelString()}"
                        echo "  Mode: ${slave.getMode()}"
                        echo "  Availability: ${slave.getComputer().isOffline() ? 'Offline' : 'Online'}"
                    }
                }
            }
        }
    }
}
