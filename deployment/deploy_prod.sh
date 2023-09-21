ssh ubuntu@54.81.4.126 <<EOF
  cd django
  git pull 
  source myprojectenv/bin/activate
  ./manage.py migrate
  ./manage.py 54.81.4.126:8000
  exit
EOF
