ssh root@52.90.225.230 <<EOF
  cd django
  git pull 
  source myprojectenv/bin/activate
  cd myprojectenv/Blood-Bank-management-Python
  ./manage.py migrate
  ./manage.py 172.31.37.167:8000
  exit
EOF
