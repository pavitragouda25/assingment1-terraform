#terraform assignment1 & assignment2
------------------------------------------------------steps to execute assignment1-----------------------------------------------------
Resource blocks in the main.ft file and values to the main.ft file are passed from variable.tf file in the terraform 


step-1 : After all configuration performed run the terraform inint command on the terminal where backend and plugins are going to be initialized 
              i.e terraform init
step-2 : After that run terraform plan command to check manifest 
              i.e terraform plan
step-3 : After that run terraform apply command to apply the changes.
              i.e terraform apply
        Enter the followed values in the string type
        Enter the image_name:
        Enter the volume_prefix:
        Enter the network_name:
        Enter the container_name_suffix:
            
steps-4 : With the above give the values container is going to create by following command we can verify
          docker ps                   #(list the running container)
          docker volume ls            #(for list the volumes)
          docker network ls           #(for list the network)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------Execution steps for assignment-2--------------------------------------------------------------------

step-1: To run the terraform code/file by executing the bash shell scripting file by the command
            $ ./terra_ss.sh
            if file does not have excution permission then run following cammand 
            $chmod +x terra_ss.sh
            $ ls -lrt                          #(check the permission by this command)
            $ ./terra_ss.sh                     #(terraform command are started run)
step-2: Enter the followed values in the string type
           Enter the image_name:
           Enter the volume_prefix:
           Enter the network_name:
           Enter the container_name_suffix:
            
steps-3 : With the above give the values container is going to create by following command we can verify
          docker ps                #(list the running container)
          docker volume ls         #(for list the volumes)
          docker network ls       #(for list the network)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------        
            
