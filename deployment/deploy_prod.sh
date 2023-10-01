  ssh ubuntu@52.55.116.139<<EOF
  cd django/myprojectenv/Blood-Bank-management-Python
  git pull
  sudo service apache2 restart
  exit
EOF
