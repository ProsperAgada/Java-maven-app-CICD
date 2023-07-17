def BuildStage() {
    when {
        expression {
            params.executeTests
            }
        }                 
    steps {
        echo "Hello this is a build stage"
        }
        }

def TestStage() {
    echo "Hello this is a build stage"
}
def DeployStage() {
    echo "Hello this is a build stage"
}
return this