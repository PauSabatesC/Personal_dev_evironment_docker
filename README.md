# Personal_dev_evironment_docker

Launch if not want docker-compose:
```
$ sudo docker run -dit -p 8080:8080 -v Personal_Dev_Env_Volume:/home/pau -v var/run/docker.sock:/var/run/docker.sock --name Personal_Dev_Env_Container pausc/personal_dev_env_image:1.0
```
