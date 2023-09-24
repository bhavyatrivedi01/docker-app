  ssh ubuntu@34.207.134.222 <<EOF
  cd django/myprojectenv/Blood-Bank-management-Python
  git pull
  sudo service apache2 restart
  exit
EOF
