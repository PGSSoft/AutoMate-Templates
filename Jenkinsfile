node("ios") {
  timeout(45) {
    ansiColor('xterm') {
      env.LANG = "en_US.UTF-8"
      env.RBENV_VERSION = env.RBENV_2_4
      env.NSUnbufferedIO = "YES"
      env.DEVELOPER_DIR = "/Applications/Xcode_8.3.app"
      env.DANGER_BITBUCKETSERVER_HOST = "bitbucket.pgs-soft.com"

      // Unlock Bitbucket Server credentials
      withCredentials([usernamePassword(credentialsId: 'pgs-software-bitbucket-server-danger_user', passwordVariable: 'DANGER_BITBUCKETSERVER_PASSWORD', usernameVariable: 'DANGER_BITBUCKETSERVER_USERNAME')]) {
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
            # RBENV
            eval "$(rbenv init -)"

            # Bundler
            bundle install
          '''
        }

        // Danger
        stage("Danger") {
          sh '''
            # RBENV
            eval "$(rbenv init -)"

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
