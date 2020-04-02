
DAY=$(date -d "$D" '+%d')
MONTH=$(date -d "$D" '+%m')

mpiexec -host n1,n2,n3,n4,n5,n6,n7,n8  /home/$USER/NPB3.3.1/NPB3.3-MPI/bin/ep.A.8 > /home/$USER/NPBoutputs/${MONTH}${DAY}_$1_8n.txt
echo "8 Node NPB-EP Bench Successful"

