ssh root@ec2-54-88-212-144.compute-1.amazonaws.com <<EOF
  cd django
  git pull 
  source myprojectenv/bin/activate
  cd myprojectenv/Blood-Bank-management-Python
  ./manage.py migrate
  ./manage.py runserver 172.31.37.167:8000
  exit
EOF
