ping:
		ansible web -i inventory.ini -u root -m ping

empty-file:
		ansible web -i inventory.ini -u root -m file -a "path=/tmp/hello_world state=touch" 
