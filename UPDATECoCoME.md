#Update CoCoME
As mentioned in README.md, you need to update the .war/.jar/.ear - files by hand. This saves a new build of CoCoME which would include a git clone, mvn package and mvn install. (Downloading mvn dependencies takes most of the time).
If you do not want to update CoCoME by hand, you can use the version on the master branch of this [git-repo](https://github.com/cocome-community-case-study/cocome-cloud-jee-docker).

##Download CoCoME
- First, you need to download CoCoME. You don't need to go through the entire installation process, as you only need the new files. 
- Link [CoCoME](https://github.com/cocome-community-case-study/cocome-cloud-jee-platform-migration)
- Link [ServiceAdapter](https://github.com/cocome-community-case-study/cocome-cloud-jee-service-adapter)

##Execute mvn using the provided maven settings
Navigate to your local Git-Repo. There should be two new folders now:<br/>
1) cocome-cloud-jee-platform-migration<br/>
2) cocome-cloud-jee-service-adapter

###CoCoME
- open 1) and navigate to ```cocome-maven-project```
- delete settings.xml and settings.xml.template and replace them with the provided settings.xml.CoCoME located in the folder ```docker > mvn settings``` [cocome-cloud-jee-docker repository](https://github.com/cocome-community-case-study/cocome-cloud-jee-docker.git) (docker_without_maven-Branch!)
- rename the file to ```settings.xml```
- open console in folder ```cocome-maven-project```
- execute: ```mvn clean compile package -s settings.xml```

###ServiceAdapter
- open 2)and proceed as you did in the previous paragraphe
- replace files with setting.xml.Adapter
- rename file to ```settings.xml```
- open console in folder ```cocome-cloud-jee-service-adapter```
- execute: ```mvn clean compile package -s settings.xml```

# Replacing with the new files
If no error occured while executing mvn commands you should now be ready to replace the files within the folder [docker](https://github.com/cocome-community-case-study/cocome-cloud-jee-docker.git) (docker_without_maven-Branch!).

### adapter8248.ear
- navigate to cocome-cloud-jee-service-adapter > service-adapter-ear > target
- copy ```service-adapter-ear-1.1.ear``` to the docker folder
- delete ```adapter8248.ear``` and rename copied file to ```adapter8248.ear```

###web8048.war
- navigate to cocome-cloud-jee-platform-migration > cocome-maven-project > cloud-web-frontend > target
- copy ```cloud-web-frontend-1.1.war to the docker folder ```
- delete ```web8048.ear``` and rename copied file to ```web8048.ear```

###store8148.ear
- navigate to cocome-cloud-jee-platform-migration > cocome-maven-project > cloud-logic-service > cloud-store-logic > store-logic-ear > target
- copy ```store-logic-ear-1.1.ear``` to the docker folder
- delete ```store8148.ear``` and rename copied file to ```store8148.ear```

###registry8448.war
- navigate to cocome-cloud-jee-platform-migration > cocome-maven-project > cloud-logic-service > cloud-registry-service > target
- copy ```cloud-registry-service-1.1.war```  to the docker folder
- delete ```registry8448.war``` and rename copied file to ```registry8448.war```

###enterprise8348.ear
- navigate to cocome-cloud-jee-platform-migration > cocome-maven-project > cloud-logic-service > cloud-enterprise-logic > enterprise-logic-ear > target
- copy ```enterprise-logic-ear-1.1.ear```  to the docker folder
- delete ```enterprise8348.ear``` and rename copied file to ```enterprise8348.ear```

##Build image
- Your CoCoME is now up to date
- Proceed with ```Build and run the image```. See README.md


