db=$(aws ssm get-parameter --name b2group3_db --output text --query Parameter.Value)
user=$(aws ssm get-parameter --name b2group3_user --output text --query Parameter.Value)
password=$(aws ssm get-parameter --name b2group3_password --output text --query Parameter.Value --with-decryption)
entrypoint=$(aws ssm get-parameter --name b2group3_entrypoint --output text --query Parameter.Value)

sudo chown -R www-data: /srv/www

sudo su -l www-data -s /bin/bash -c "wp config create --dbname='$db' --dbuser='$user' --dbpass='$password' --dbhost='$entrypoint' --force --path='/srv/www/wordpress'"

sudo service apache2 reload