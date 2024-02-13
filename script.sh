#!/bin/bash
apt-get update
apt-get install -y nginx npm git
echo "This is My First Userdata File" >/var/www/html/index.nginx-debian.html

# Clone your GitHub repository
git clone <your_github_repo_url>

# Navigate into the cloned directory
cd <cloned_repo_directory>

# Install dependencies using npm
npm install

# Install pm2 globally
npm install pm2 -g

# Start your application using pm2 (assuming your entry point is index.js)
pm2 start index.js

# Save pm2 process list and start on system boot
pm2 save
pm2 startup