ssh ubuntu@172.31.37.167 <<EOF
  cd django/myprojectenv
  git pull
  cd ..
  source myprojectenv/bin/activate
  python3 ./manage.py makemigrations
  python3 ./manage.py migrate  --run-syncdb
  sudo service apache2 restart
  exit
EOF
