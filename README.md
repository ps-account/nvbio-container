# nvbio-container

Simple container build files to build the older version nvlabs/nvbio 
https://github.com/NVlabs/nvbio

## Dockerfile
Build using 

`nvidia-docker build -t nvbowtie-1404-cuda65 .`

## Singularity file
Build using 

`sudo singularity build nvbowtie.simg nvbowtie.def`
