# CSE 5335 Web Data Project 2

Date: 17th November 2015

# Name: Kaustubh Mohgaonkar

ID: 1001101770 
NetID: kpm1770

1. What is your external data source used to populate your Heroku data sources?
> I used an URL to generate a sample JSON : http://json-generator.appspot.com/. The purpose of using a custom generated URL was I was able to control the number of elements in the JSON and I could have a realtively low complex nested JSON. The JSON can be accessed online at : http://json-generator.appspot.com/api/json/get/bVSYVXYLCa?indent=2

2. What are the Heroku toolbelt commands to execute the scripts?
> As I have created seperate set of scripts for each of the databases, The only command needed to run in the heroku bash is ruby <scriptname> <command line parameter>. The way to run script is deploy the app and then navigate to app/controllers and run the required scripts.
> The create database scripts need to run first : pgcreate.rd (Postgres DB create), mgcreate.rd(Mongo DB create), rdcreate.rd (Redis create). To run scripts to select records with primary key: pgqueryprim.rd <primary key> [ex: ruby pgqueryprim.rd 57]. In the exact same way mongo and redis query scripts mgqueryprim.rd and rdqueryprim.rd respectively can be used. Use pgquerynonprim.rd for query using non prime attribute. [ex: ruby pgquerynonprim.rd true]. Mongo and Redis non primary query scripts mgquerynonprim.rd and rdquerynonprim.rd can be used in the exact same way.



3. What aspect of the implementation did you find easy, if any, and why? 
> The easy part was setting up databases with Heroku. The documentation was correctly given and the steps were precise.

4. What aspect of the implementation did you find hard, if any, and why?
> For me, it was difficult to understand how yo query using secondary or non primary key in non sql databases like Redis and Mongo.


Ubuntu Commands needed to deploy to Heroku using Command Line:
1. cd cse-kpm1770-2
2. bundle install
3. GIT add .(to add all files)
4. GIT commit -m "Your Message"
5. GIT PUSH HEROKU MASTER
6. Heroku run bash
7. cd app/controllers
8. ruby <scriptname> <command line parameters>


