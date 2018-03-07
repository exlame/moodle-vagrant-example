
# Install SSH client over http

if [[ ! -d "/srv/wetty" ]]; then
	mkdir "/srv/wetty"
	cd "/srv/wetty"
	sudo git clone https://github.com/krishnasrinivas/wetty .
	sudo npm install
else 
	cd "/srv/wetty"
	sudo git pull
	sudo npm install
fi


# Make a database, if we don't already have one
echo -e "\nCreating database 'moodle' (if it's not already there)"
mysql -u root --password=root -e "CREATE DATABASE IF NOT EXISTS moodle"
echo -e "\n DB operations done.\n\n"