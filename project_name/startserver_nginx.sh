sudo mkdir -p /home/vagrant/web/{{ project_name }}/logs/
sudo cp init_scripts/nginx_vhost_http /etc/nginx/sites-available/{{ project_name }}
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/sites-available/{{ project_name }} /etc/nginx/sites-enabled/default
sudo service nginx restart