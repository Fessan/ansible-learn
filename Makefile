ping:
		ansible web -i inventory.ini -u root -m ping

empty-file:
		ansible web -i inventory.ini -u root -m file -a "path=/tmp/hello_world state=touch"


add-git:
		ansible-playbook playbooks/add-git.yml -i inventory.ini -u root



del-git:
		ansible-playbook playbooks/del-git.yml -i inventory.ini -u root
