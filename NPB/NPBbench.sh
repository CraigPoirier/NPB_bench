DAY=$(date -d "$D" '+%d')
MONTH=$(date -d "$D" '+%m')

mkdir /home/$USER/NPBoutputs

mpiexec -host n1  /home/$USER/NPB3.3.1/NPB3.3-MPI/bin/ep.A.8 > /home/$USER/NPBoutputs/${MONTH}${DAY}_1n.txt
echo "1 Node NPB-EP Bench Successful"
mpiexec -host n1,n2  /home/$USER/NPB3.3.1/NPB3.3-MPI/bin/ep.A.8 > /home/$USER/NPBoutputs/${MONTH}${DAY}_2n.txt
echo "2 Node NPB-EP Bench Successful"
mpiexec -host n1,n2,n3,n4  /home/$USER/NPB3.3.1/NPB3.3-MPI/bin/ep.A.8 > /home/$USER/NPBoutputs/${MONTH}${DAY}_4n.txt
echo "4 Node NPB-EP Bench Successful"
mpiexec -host n1,n2,n3,n4,n5,n6  /home/$USER/NPB3.3.1/NPB3.3-MPI/bin/ep.A.8 > /home/$USER/NPBoutputs/${MONTH}${DAY}_6n.txt
echo "6 Node NPB-EP Bench Successful"
mpiexec -host n1,n2,n3,n4,n5,n6,n7,n8  /home/$USER/NPB3.3.1/NPB3.3-MPI/bin/ep.A.8 > /home/$USER/NPBoutputs/${MONTH}${DAY}_8n.txt
echo "8 Node NPB-EP Bench Successful"
