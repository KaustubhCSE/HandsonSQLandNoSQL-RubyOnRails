# CSE 5335 Web Data Project 2

Date: 17th November 2015

Name: Kaustubh Mohgaonkar

ID: 1001101770 
NetID: kpm1770

1. What is your external data source used to populate your Heroku data sources?
> I used an URL to generate a sample JSON : http://json-generator.appspot.com/. The purpose of using a custom generated URL was I was able to control the number of elements in the JSON and I could have a realtively low complex nested JSON. The JSON can be accessed online at : http://json-generator.appspot.com/api/json/get/bVSYVXYLCa?indent=2

2. What are the Heroku toolbelt commands to execute the scripts?
> As I have created seperate set of scripts for each of the databases, The only command needed to run in the heroku bash is ruby <scriptname> <command line parameter>. The way to run script is deploy the app and then navigate to app/controllers and run the required scripts.
The create database scripts need to run first 



3. What aspect of the implementation did you find easy, if any, and why? 


4. What aspect of the implementation did you find hard, if any, and why?



Ubuntu Commands needed to deploy to Heroku using Command Line:
1. cd cse-kpm1770-2
2. bundle install
3. GIT add .(to add all files)
4. GIT commit -m "Your Message"
3. GIT PUSH HEROKU MASTER



