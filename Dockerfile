FROM jenkins/jenkins:lts
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
RUN echo "ant:latest\n antisamy-markup-formatter:latest\n build-timeout:latest\n cloudbees-folder:latest\n configuration-as-code:latest\n credentials-binding:latest\n email-ext:latest\n \
          git:latest\n github-branch-source:latest\n gradle:latest\n ldap:latest\n mailer:latest\n matrix-auth:latest\n pam-auth:latest\n pipeline-github-lib:latest\n pipeline-stage-view:latest\n ssh-slaves:latest\n timestamper:latest\n workflow-aggregator:latest\n ws-cleanup:latest" >> /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

