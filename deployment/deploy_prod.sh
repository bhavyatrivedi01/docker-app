ssh ubuntu@34.207.74.36 <<EOF
  cd django
  git pull 
  source myprojectenv/bin/activate
  ./manage.py migrate
  ./manage.py 34.207.74.36:8000
  exit
EOF