Haproxy Docker Image

This Repository is composed with the following files :

- Dockerfile : (Used to get Alpine Haproxy Image)
- ci/haproxy_build (Script to build the image)
- ci/haproxy_run (Script to run the image)
- ci/haproxy_deploy (Script to deploy the image on Gitlab Registry)
- .gitlab-ci.yml (File used to starts all the jobs)