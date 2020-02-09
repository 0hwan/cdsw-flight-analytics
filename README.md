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
### Third step: Prepare the engine for a good session
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

