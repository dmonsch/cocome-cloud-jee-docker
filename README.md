Implementation details & reasons

- starting with image ubuntu:16.04
	-> using the ubuntu image allows to use the Advanved Packaging Tool (apt) from ubuntu for installing required programs, such as git and maven

- using java8 installer
	-> cocome is a java based project, so its neccessary to provide it, at least for maven

- installing git python-virtualenv
	-> git version that run on docker. It is used for getting the files from git into the docker; maybe not the most effizient way, but, since cocome is developed on github, its the easiest way to get the most recent version of cocome

- using prepared glassfish version from github 
	-> we decieded to prepare an glassfish installation with the needed installations on it. That seems to be the best way for getting an working version with correct detail, because for some settings there is, as far as we know, no way to adjust them with consol commands.

