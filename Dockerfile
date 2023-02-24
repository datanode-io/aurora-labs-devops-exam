FROM jenkins/jenkins:lts
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
RUN echo "ant:latest\n antisamy-markup-formatter:latest\n build-timeout:latest\n cloudbees-folder:latest\n configuration-as-code:latest\n credentials-binding:latest\n email-ext:latest\n \
          git:latest\n github-branch-source:latest\n gradle:latest\n ldap:latest\n mailer:latest\n matrix-auth:latest\n pam-auth:latest\n pipeline-github-lib:latest\n pipeline-stage-view:latest\n ssh-slaves:latest\n timestamper:latest\n workflow-aggregator:latest\n ws-cleanup:latest" >> /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt
USER 0
#RUN echo "keyserver hkp://keyserver.ubuntu.com" >> ~/.gnupg/dirmngr.conf
# Update apt packages
RUN apt update
RUN apt upgrade -y
RUN apt install -y software-properties-common
#RUN add-apt-repository ppa:deadsnakes/nightly
#RUN apt update
#RUN apt upgrade -y
# Install Python 3.8
RUN apt install python3
RUN mkdir /var/jenkins_home/jobs && mkdir /var/jenkins_home/jobs/Aurora_Labs_Devops_exam_1
COPY config.xml /var/jenkins_home/jobs/Aurora_Labs_Devops_exam_1/config.xml
RUN cat /var/jenkins_home/jobs/Aurora_Labs_Devops_exam_1/config.xml

