ios.prepareEnv(xcode: "/Applications/Xcode_8.3.app", danger_bitbucket: null)

node("ios") {
  timeout(45) {
    ansiColor('xterm') {

      // Unlock Bitbucket Server credentials
      withCredentials([usernamePassword(credentialsId: 'pgs-github-PGSJenkins-token', passwordVariable: 'DANGER_GITHUB_API_TOKEN', usernameVariable: '')]) {
        //
        // Stages
        // Prepare node
        // - clean workspace
        // - clone repository
        // - update bundle
        stage("Prepare & clone") {
          deleteDir()
          checkout scm

          sh '''
            # Bundler
            bundle install
          '''
        }

        // Danger
        stage("Danger") {
          sh '''
            # Danger
            bundle exec danger
          '''
        }

        // Clean
        stage("Clean") {
          deleteDir()
        }
      }
    }
  }
}
