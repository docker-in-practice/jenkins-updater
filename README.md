Run with:

```
docker run --rm -d \
	-v /var/lib/docker:/var/lib/docker \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v /var/docker/mounts:/var/docker/mounts
		dockerinpractice/jenkins-updater
```

Your volume mounts may differ if you run on a non-linux platform
