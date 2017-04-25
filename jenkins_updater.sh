#!/bin/bash
set -e
if ! docker pull jenkins | grep up.to.date
then
	docker stop jenkins
	docker rename jenkins jenkins.bak.$(date +\%Y\%m\%d\%H)
	cp -r /var/docker/mounts/jenkins_home/ /var/docker/mounts/jenkins_home.bak.$(date +\%Y\%m\%d\%H)
	docker run -d --restart always -v /var/docker/mounts/jenkins_home:/var/jenkins_home --name jenkins -p 8080:8080 jenkins)
fi
