ssh root@ec2-54-196-162-237.compute-1.amazonaws.com <<EOF
  cd django/myprojectenv
  git pull
  cd ..
  source myprojectenv/bin/activate
  python3 ./manage.py makemigrations
  python3 ./manage.py migrate  --run-syncdb
  sudo service apache2 restart
  exit
EOF
