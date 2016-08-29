# docker-gromacs-saxs
Dockerfile for running gromacs+saxs using SSE2. gmx-waxs-cloud.tar.gz and tutorials.gz should be in the same directory.

##To build the image from Dockerfile:

docker build -t gromacs-saxs-VM .

##To run the container from this built image:

docker run -it gromacs-saxs-VM

##Container list:

docker ps

##To copy files from container to the host machine:

docker cp <i>name-of-container</i>:/<i>directory-name-in-VM</i>/<i>filename</i> <i>directory-name-on-host</i>
