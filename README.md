# Nexign devOps practice
## DevOps course work repository

### Jenkins

Directory jobs contains Jenkins jobs for automatic deploy.

2 ways to deploy:
* with ansible. Main pipeline: ping VMs -> install nginx or httpd -> copy configuration files -> open ports with firewall -> start and enable service.
* with docker. Main pipeline: build image from Dockerfiles-> push to local registry -> install docker in each VM -> pull image and run container.

Both builds start automatically by Gitlab push.

Builds don't conflict and can be deployed at the same time.

In the end nginx from ansible is available at port '8080', nginx from docker is available at port '8082'.

### Ansible

Directory ansible_playbooks contains playbooks for nginx and httpd deploy with configutared files.

File 'hosts' for ansible settings is available too.

### Docker

Directory dockerfiles contains Dockerfiles for nginx and httpd deploy with configutared files.
