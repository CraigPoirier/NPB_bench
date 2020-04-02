#! /bin/bash

#Get bench
wget https://www.nas.nasa.gov/assets/npb/NPB3.3.1.tar.gz

#unpack
tar -xzvf NPB3.3.1.tar.gz

#copy make.def to config
cp "make.def" /home/$USER/NPB3.3.1/NPB3.3-MPI/config

#change dir
cd /home/$USER/NPB3.3.1/NPB3.3-MPI/

#run make
make ep NPROCS=8 CLASS=A

echo ". . ."
echo "Tasks should be completed successfully."
