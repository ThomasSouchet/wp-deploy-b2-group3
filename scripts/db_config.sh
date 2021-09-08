sudo service apache2 stop

db=$(aws ssm get-parameter --name b2group3_db --output text --query Parameter.Value)
user=$(aws ssm get-parameter --name b2group3_user --output text --query Parameter.Value)
password=$(aws ssm get-parameter --name b2group3_password --output text --query Parameter.Value --with-decryption)
entrypoint=$(aws ssm get-parameter --name b2group3_entrypoint --output text --query Parameter.Value)
auth_key=$(aws ssm get-parameter --name b2group3_auth_key --output text --query Parameter.Value)
secure_auth_key=$(aws ssm get-parameter --name b2group3_secure_auth_key --output text --query Parameter.Value)
logged_in_key=$(aws ssm get-parameter --name b2group3_logged_in_key --output text --query Parameter.Value)
nonce_key=$(aws ssm get-parameter --name b2group3_nonce_key --output text --query Parameter.Value)
auth_salt=$(aws ssm get-parameter --name b2group3_auth_salt --output text --query Parameter.Value)
secure_auth_salt=$(aws ssm get-parameter --name b2group3_secure_auth_salt --output text --query Parameter.Value)
logged_in_salt=$(aws ssm get-parameter --name b2group3_logged_in_salt --output text --query Parameter.Value)
nonce_salt=$(aws ssm get-parameter --name b2group3_nonce_salt --output text --query Parameter.Value)

sudo chown -R www-data: /srv/www

sudo su -l www-data -s /bin/bash -c "wp config create --dbname='$db' --dbuser='$user' --dbpass='$password' --dbhost='$entrypoint' --force --path='/srv/www/wordpress'"
sudo su -l www-data -s /bin/bash -c "wp config set AUTH_KEY '$auth_key' --path='/srv/www/wordpress'"
sudo su -l www-data -s /bin/bash -c "wp config set SECURE_AUTH_KEY '$secure_auth_key' --path='/srv/www/wordpress'"
sudo su -l www-data -s /bin/bash -c "wp config set LOGGED_IN_KEY '$logged_in_key' --path='/srv/www/wordpress'"
sudo su -l www-data -s /bin/bash -c "wp config set NONCE_KEY '$nonce_key' --path='/srv/www/wordpress'"
sudo su -l www-data -s /bin/bash -c "wp config set AUTH_SALT '$auth_salt' --path='/srv/www/wordpress'"
sudo su -l www-data -s /bin/bash -c "wp config set SECURE_AUTH_SALT '$secure_auth_salt' --path='/srv/www/wordpress'"
sudo su -l www-data -s /bin/bash -c "wp config set LOGGED_IN_SALT'$logged_in_salt' --path='/srv/www/wordpress'"
sudo su -l www-data -s /bin/bash -c "wp config set NONCE_SALT '$nonce_salt' --path='/srv/www/wordpress'"

sudo service apache2 restart