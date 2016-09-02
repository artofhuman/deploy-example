provising:
	ansible-playbook site.yml -i inventory.ini -vv

update_configs:
	ansible-playbook site.yml -i inventory.ini -vv -t conf

install_deps:
	pip --version > /dev/null 2>&1 || sudo easy_install pip
	sudo ansible-galaxy install -f -r requirements.yml

deploy:
	ansible-playbook deploy.yml -i inventory.ini -vvvv -u root
