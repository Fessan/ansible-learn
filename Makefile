ping:
		ansible web -i inventory.ini -u root -m ping

empty-file:
		ansible web -i inventory.ini -u root -m file -a "path=/tmp/hello_world state=touch"


add-git:
		ansible-playbook playbooks/add-git.yml -i inventory.ini -u root



del-git:
		ansible-playbook playbooks/del-git.yml -i inventory.ini -u root

update-cache:
	ansible-playbook playbooks/tags.yml  -i inventory.ini --tags update_cache -u root  

install-apps:
	ansible-playbook playbooks/tags.yml -i inventory.ini --tags install_apps -u root 
	
install-git:
	ansible-playbook playbooks/tags.yml -i inventory.ini  --tags install-git -u root 

create-users:
	ansible-playbook playbooks/tags.yml -i inventory.ini  --tags create_users -u root

handlers:
	ansible-playbook playbooks/handlers.yml -i inventory.ini -u root

vars:
	ansible-playbook playbooks/vars.yml -i inventory.ini -u root


server-vars:
	ansible-playbook playbooks/server_vars.yml -i inventory.ini -u root
