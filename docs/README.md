Project: Devops and AWS 

UserStory: Host the MyWeb Application

Tasks: 

    - Create infra structure
    - provision the softwares
    - implement the CI/CD
    

Pre-requesites: 

        - aws account
        - github account
        - dockerhub account

Task 1)- Create infra structure

            
       - Create 5 instances
            - 2 for webservers
                Name:  
		     - qa-server-1,qa-server-2 
                Type:
                     - t2.medium
   	          
            - 1 for jenkins build server
			Name:                
			 - jenkins-server 
			Type:
			 - t2.medium
            - 1 for ansible controll m/c
			Name:                
			 - ansible-controller 
			Type:
			 - t2.medium
                  
      		- Here, pass userdata to
   			- clone git repo
			- run shell script to install ansible
                     
            - 1 for Docker server
			Name:
			    - Docker-server
			Type:
			    - t2.small,vCPU-1,Memory(GiB)-2
			    
Task 2) - provision the softwares in instances

            - In Webservers,
			- install tomcat 1.7
              
            - In Jenkins build server,
	        	- install jenkins
			- install git latest
       		        - install maven	
			
	    - In Docker server,
                - create containers
                        - sonaqube-container
		        - nexus-container
					
Task 3)	Implement CI/CD 

              - Create a pipeline script to,
	      
				- build source code
				- code analysis, code coverage
				- upload artifacts into nexus
				- run deploy playbook to deploy application
				- notification
