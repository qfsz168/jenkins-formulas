FROM jenkins/jenkins:lts

ENV JENKINS_UC https://updates.jenkins-zh.cn
ENV JENKINS_UC_DOWNLOAD https://mirrors.tuna.tsinghua.edu.cn/jenkins

ENV JENKINS_OPTS="-Dhudson.model.UpdateCenter.updateCenterUrl=https://updates.jenkins-zh.cn/update-center.json"
ENV JENKINS_OPTS="-Djenkins.install.runSetupWizard=false"


COPY init.groovy /usr/share/jenkins/ref/init.groovy.d/init.groovy

RUN /usr/local/bin/install-plugins.sh localization-zh-cn configuration-as-code
