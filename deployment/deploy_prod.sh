  ssh ubuntu@34.207.134.222 <<EOF
  cd django
  git pull
  source myprojectenv/bin/activate
  ./manage.py migrate
  sudo service apache2 restart
  exit
EOF
