You are in the MODELS directory
********************************
The models are placed inside their corresponding folder.
Each folder name follows the following format : x_AuthorName_PaperSubject
where 
- x is the order of apparition in the report: For instance, 1_Weisbuch_WindowAutomata is the first set of models to appear in the report.
- AuthorName is the name of the author of the reference paper. The reference paper is inside the folder in case of need.
- PaperSubject is the topic of the reference paper.

Within each folder, two tpe of models are provided : the default models that use the extended syntax, and the models.
The models compatible with the original CD++ are in a folder named OriginalCellDEVS.

For RISE, we used all servers to run experiments. We recommend to use the VS1 server which is the fastest one, especially if you want to run the models in 4_Zhao... as it takes no less than 8 hours.

Example of a simple RISE test run  using RISE VS1:
------------------------------------------------
To run these models, RISE VS1 is required.
Once RISE VS1 is installed, each model can be run using the following command:
 
java -jar RESTful_CDppTest.jar PutXMLFile test test test/lopez  moore_glacon.xml //this creates the environment: http://vs1.sce.carleton.ca:8080/cdpp/sim/workspaces/test/lopez/moore_glacon
java -jar RESTful_CDppTest.jar PostZipFile test test test/lopez/moore?zdir=moore_glacon moore_glacon.zip  //this uploads the model files
java -jar RESTful_CDppTest.jar PutFramework test test test/lopez/moore/simulation // to start the simulation

And finally status and results can be obtained in the model website: http://vs1.sce.carleton.ca:8080/cdpp/sim/workspaces/test/lopez/moore 
Once you run the models, you can use the corresponding PAL files located in the results folder.

***************************************
If you have any questions regarding how to run these models, email daniella.niyo@gmail.com.