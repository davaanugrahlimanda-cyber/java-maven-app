def runTests(branchName) {
    echo "Testing the application..."
    echo "Executing pipeline for branch ${branchName}"
}

def runBuild() {
    echo "Building the application..."
}

def runDeploy() {
    echo "Deploying the application..."
}

return this
