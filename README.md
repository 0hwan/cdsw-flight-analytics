# Tutorial: Analytics of US flights and building a predictive model using CDSW
## Introduction
Analytics of US flights with _sparklyr_. This was originally created by Michiaki Ariga (aki@cloudera.com). We have followed all the steps described on this [article](https://blog.cloudera.com/analyzing-us-flight-data-on-amazon-s3-with-sparklyr-and-apache-spark-2-0/) on the Cloudera blog website. This is a more detailed version with screenshots and steps-by-steps on how to run it.
## Requirements
We need Cloudera Data Science Workbench installed with a Cloudera data lake to run the examples here presented. 
 ## Tutorial Steps
### First step: Check our platforms
First step is to open our Cloudera Manager to check our resources. To do so, we need to point our browser at: [http://my_cloudera_manager:7180](http://my_cloudera_manager:7180)
After that, we will see a console like this one:

![Cloudera Manager](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image1.png)
Once, we know where is our CDSW installed, we point our browser and we will open for the first time our CDSW platform. We will see something like this:

![CDSW](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image2.png)
#### What are the size of your cluster?
It's not big. It's only 3 machines for the data lake. It's a CDH 6 plus 2 machines with CDSW.  
We are not covering in this articles how to install CDH or CDSW. However, you can do it with the public documentation and you can reproduce this environment to run this or other tutorials.
In the next section you can see the roles per machine and you can reproduce this environment.

![All Hosts](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image4.png)
##### Roles
###### CDH Roles
![CDH Roles](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image5.png)
###### CDSW Roles
![CDSW Roles](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image6.png)
### Second step: Setup the project on CDSW
We are going to create a team, in my case, My team. 

![My Team](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image3.png)
After this, we will create a project from this github repo. 

![New Project](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image7.png)
Immediately, we can see our new project called "Flight Analytics" with all the files from this repo on your project in CDSW.

![Files from the Github repo on the CDSW Project](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image8.png)
### Third step: Authenticate to the Hadoop Cluster
We need to setup an authentication to the Hadoop cluster before launching a session. Otherwise, we can't be able to setup our environment with the files at the HDFS.
To this operation, you need to go the Settings at the user menu, "Account Settings". 

![Authentication at the Hadoop cluster](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image24.png)
After opening the settings page, you need to go to the "Hadoop Authentication" tab and set your user and password. In our case, we will choose the user hdfs which has the necessary rights.

![Authentication at the Hadoop cluster](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image15.png)
### Fourth step: Launch a session!
Now, we are ready to launch our session. We press the blue button that says "New Session" at the right upper corner to create a start a session.
Before launching the system will ask us to choose options like editor, language of the docker machine and capacity of that machine.

![Launch a Session](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image20.png)
After we choose our options, in our tutorial, we should choose Workbench default editor, R as Language and a profile of 2 Cores / 4 GB RAM.
When the session is ready, we will see the upper bar where we have:
 - Terminal Access. We can have a terminal session inside the docker engine.
 - Clear. We clear the console
 - Interrupt / Stop: We can control the docker engine. 
 
 In the bottom we have command prompt with R in our case. We can type R commands interactively.
Otherwise, we can run a file from the project file system.

![Explanation of the Session opened](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image14.png)
Launching a session take some minutes. We will know that is ready, because the prompt command in the bottom will be red until it's ready to be used. 

![Session not ready ](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image21.png)
When the session is ready, the prompt command is green and we can type commands or launch the Terminal Access in the upper bar menu.

![Session ready ](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image22.png)
### Fifth step: Setting up the files!
The session is ready. We are going to open a "Terminal Access". In the terminal we have direct access to the project files. So we will run the setup.sh bash script in the command line. 

![Launching setup.sh bash script ](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image23.png)
This script will download all the required files in CSV and Parquet format. After download them, it will upload them to the HDFS in the /tmp folder to be analyzed with the R scripts.

___
# Troubleshooting
## Adding a new type of engine
In CDSW you can spawn sessions from projects over a type of engine. An engine is only a type of machine that will be launch from a docker image. 
In our case, we will generate a bigger type of engine so we can run with more compute power our analytics. 
To do so, we will go to Admin in the left side menu.

![Admin ](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image9.png)
In the platform administration we will go to "Engines". We have several options here to review our configuration.

![Admin page](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image10.png)
In the Engines page, we can see the list of engine profiles. So we will add a new type of 4 cores and 8 GB RAM.

![Engines page](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image11.png)
After adding our new type of engine, we will see it in the list.

![Engines page](https://raw.githubusercontent.com/galanteh/cdsw-flight-analytics/master/images/Image12.png)




