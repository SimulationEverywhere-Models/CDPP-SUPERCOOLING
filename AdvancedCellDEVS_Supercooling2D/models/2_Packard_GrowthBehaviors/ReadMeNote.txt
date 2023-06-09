The models in this folder correspond to those reported in section 4.2.2.
The parameter values are included in the name of the ZIP file.

To test and run them quicly, rename the zip file to supercooling2dext.
Then, copy and paste supercooling2dext.zip and supercooling2d.xml in your RISE client folder.

From there, and depending on the RISE server use these commands (the following example uses the 134.117.53.66:8080 RISE server):

java -jar RESTful_CDppTest.jar PutXMLFile test test test/lopez/supercooling2dext supercooling2dext.xml

java -jar RESTful_CDppTest.jar PostZipFile test test test/lopez/supercooling2dext?zdir=supercooling2dext supercooling2dext.zip

java -jar RESTful_CDppTest.jar PutFramework test test test/lopez/supercooling2dext/simulation

The results can be retrieved here:
http://134.117.53.66:8080/cdpp/sim/workspaces/test/lopez/Supercooling2DExt