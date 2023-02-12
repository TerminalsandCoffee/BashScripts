#!/bin/bash

# Update the package index

yum update

# Install Apache web server

yum install httpd -y

# Start the Apache service

systemctl start httpd

# Enable the Apache service to start at boot

systemctl enable httpd

# Create a custom webpage

cd /var/www/html/

echo "<html>
  <head>
    <title>My custom Apache homepage</title>
  </head>
  <body>
    <h1>Welcome to my custom Apache homepage! Let’s go Gold Team!</h1>
  </body>
</html>" >> index.html

#not a web designer. 

# Restart Apache to apply changes
systemctl restart httpd




#yum update -y
#yum install -y httpd.x86_64
#systemctl start httpd.service
#systemctl enable httpd.service
#echo "Hello raffyraf from $(hostname -f)" > /var/www/html/index.html
