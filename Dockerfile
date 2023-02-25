FROM jenkins/jenkins:lts

#Disable Jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

#Create plugins.txt file
RUN echo "ant:latest\n ghprb:1.42.2\n antisamy-markup-formatter:latest\n build-timeout:latest\n cloudbees-folder:latest\n configuration-as-code:latest\n credentials-binding:latest\n email-ext:latest\n \
git:latest\n github-branch-source:latest\n gradle:latest\n ldap:latest\n mailer:latest\n matrix-auth:latest\n pam-auth:latest\n pipeline-github-lib:latest\n pipeline-stage-view:latest\n ssh-slaves:latest\n timestamper:latest\n workflow-aggregator:latest\n ws-cleanup:latest" >> /usr/share/jenkins/ref/plugins.txt
#Add plugins
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
#Run as root user
USER 0
# Update apt packages
RUN apt update
RUN apt upgrade -y
RUN apt install -y software-properties-common

# Install Python 3
RUN apt install python3

# Create directory for the Jenkins job
RUN mkdir /var/jenkins_home/jobs && mkdir /var/jenkins_home/jobs/Aurora_Labs_Devops_exam_1

