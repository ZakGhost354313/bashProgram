#
# curl "$REPLIT_DB_URL/user"
# curl "$REPLIT_DB_URL/pass"
#


echo "Username" && read username;
if [$username -eq "$REPLIT_DB_URL/user"]
then 
  echo "Password" && read password;
  if (( password = "$REPLIT_DB_URL/pass" ))
  then
    echo "Login Successful" && cd ./main && bash main.sh
  else
    echo "Error"
  fi
else
  echo "Login unsuccessful" && bash main.sh
fi

