Supercooling
-------------
To get started:
****************
Sample files(supercooling.ma, supercooling.val and SupercoolingMacros.inc) are provided to run a simple 7x7x7 model with a 3x3x3 Nucleus and an initial temperature of -35 degrees celsius

Two bat files are included:
simulateSupercooling: run the simulation until the temperature is uniform(i.e. stop time=infinity in this case) and generates a log file 
drawlogSupercooling: generates a DRW file for the log file produced by simulateSupercooling.bat
Note: Make sure you are in the eclipse/workspace/Supercooling directory or edit the path in the BAT files accordingly.

Instructions:
**************
For Project Simulation
1)Import supercooling.zip in a new CD++ Project
2)Select Simulate Project;
  choose supercooling.ma for the Coupled Model file name; 
  then click on Load.bat and select simulateSupercooling.bat.
3) Start Simulation, a log file will be generated

For drawlogs:
1)Select Drawlog your models in the CD++ menu
2)Load drawlog.bat and then select Drawlog. A DRW will be geenrated

For Visualization with CD++ Modeler
1) Select CD++ Modeller, then Cell-DEVS animation
2) Load the DRW file (supercooling.drw)
3) Choose Modify palette and load supercooling.pal
4) Start the simulation. You can uncheck show 2D only to see all the planes.
   Values correspond to the states described in the report.
   If you want to visualize the phase only (solid or liquid), uncheck Show values.


To run different simulations
*****************************
To generate and compare different experiments, open the experiments folder.