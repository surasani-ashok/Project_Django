[Install Docker on macOS](https://runnable.com/docker/install-docker-on-macos)

[Install Docker on Windows 10](https://runnable.com/docker/install-docker-on-windows-10)

[Install Docker on Windows 7 or 8](https://docs.docker.com/toolbox/toolbox_install_windows/)


### Build Docker Image and launch a Docker Container:

Clone the repo

```
git clone https://github.com/surasani-ashok/Project_Django
```


Build and run Docker image

```
docker build -t test .
docker run -v .:/WebProject -p 8000:8000 test
```

You should now be able to go to

```
http://localhost:8000
```

