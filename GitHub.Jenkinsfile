ios.prepareEnv(xcode: "/Applications/Xcode_9.1.app", danger_bitbucket: null)

ios.runOniOSNode(runBlock: {
  // Unlock Bitbucket Server credentials
  withCredentials([usernamePassword(credentialsId: 'pgs-github-PGSJenkins-token', passwordVariable: 'DANGER_GITHUB_API_TOKEN', usernameVariable: '')]) {
    // Danger
    stage("Danger") {
      sh '''
        # Danger
        bundle exec danger
      '''
    }
  }  
})
