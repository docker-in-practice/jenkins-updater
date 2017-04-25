FROM docker
ADD jenkins_updater.sh /jenkins_updater.sh
RUN chmod +x /jenkins_updater.sh
CMD /jenkins_updater.sh
