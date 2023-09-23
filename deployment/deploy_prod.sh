ssh root@ec2-54-196-162-237.compute-1.amazonaws.com <<EOF
  cd django
  git pull
  source myprojectenv/bin/activate
  ./manage.py migrate
  sudo service apache2 restart
  exit
EOF
