Instructions on how to use tensorflow environment on docker, using the tensorflow image from docker hub.


CREATING THE CONTAINER:

Step 1:
	Command:
	"docker build . -t tf-env"

	Runs Dockerfile and creates a new image derived from the official tensorflow image 
	with all extra libraries you wish to install via pip by adding them in the requirements.txt file.
	(for example matplotlib, pandas and numpy).
	This command will also create a new user in the container which will be used as the default 
	user to access the container. Privilidges can be escalated with sudo and password: password
	as it is also included in the container.
	

Step 2:
	Command:	
	"docker run -it --rm -p 8888:8888 -v D:\Desktop\data_science:/home/user -w /home/user --name tf-env-container -u="user" tf-env bash"
		
		--rm : deletes the container on exit.
		-v D:\Desktop\data_science:/home/user : will create a volume on D:\Desktop\data_science 
							on the host binded on /home/user in the container.

		-w /home/user : sets the working directory on the container
		--name tf-env-container : name s the container for future reference
		-u="user" : the user to use
		tf-env : the image we wish to use to create the container
		bash : command to execute, in this case opens bash

		
	
Now we have a container running tensorflow ready to spin.

If we have jupyter lab in our requirements.txt we can open it via the command:

jupyter lab "--ip=0.0.0.0" 

and start developing on the browser at the link given.