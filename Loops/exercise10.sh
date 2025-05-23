#Create a script that checks whether there is an Internet connection to the school's website.
#While there is no connection, display a warning and wait 5 seconds before trying again.
#Once the connection is available, open the default browser (e.g., Firefox) with the school’s homepage.

#!/bin/bash

#URL
url="https://agora.xtec.cat/ies-sabadell/"

echo "Verifying connection $url..."

connected="no"

while [ "$connected" != "yes" ]; do
  #Checking connection
  if curl --silent --head --fail "$url" > /dev/null; then
    connected="yes"
  else
    echo "No connection to $url. Retrying in 5 seconds"
    sleep 5
  fi
done

echo "Connection succesfull. Opening browser"
firefox "$url" &
