You are in the TOOLS directory
********************************
This directory contains custom tools that we developped.
The tools are inn two categories:
- Random Seed Generator: Comes with two variants - one with unique IDs, and another one with multiple IDs. The last one is not applicable to models that uses the original syntax.
- Log Visualization Tool (like Drawlog): Written in PHP, produces a sequence of images.

Instructions & HOW TO USE THE TOOLS
---------------------------------------
Seed Generators
================
These seed generators are useful to generate VAL files for the Free and Columnar simulations that require multiple seed to be placed in the cell space.
Use :
* Seed Generator : Creates a VAL file with multiple crystal seeds, i.e. initial solid cells.
* Multiple Seed Generator : For having different IDs assigned to seeds. This is the one we used to generate the colored files in the Brown experiment.
* rand_cell_generator is another version that creates seeds all over the space or from both latteral borders. It can be used to test if borders are periodic/insulated.

For both versions :
Compiling:
All seed generators tools can be compiled using any standard c++11 compiler.
For example, use the following command for compiling rand_cell_generators using clang: clang++ --std=c++11 rand_cell_generator.cpp

Running:
Running the tool SeedGenerator with no parameters outputs the following help message:
usage: ./seedGenerator Outfile Height Width Init_val Seeds GrowthType
Outfile       Name of the output file
Height        Integer value
Width         Integer value
Init_val      Integer/Decimal value
Seeds         Number of Crystal Seeds - integer quantity
GrowthType    0 for Free, 1 for Constrained Dendritic Growth

Height and Widht correspond to the cell space dimension. Seeds is the number if initial solid cellsin the space, which are randomized using a uniform generator. GrowthType will guide the randomization process to produce either free or constrained seeds. Also, see report for examples.

For instance, the input paramters:  ConstrainedSeeds.val 50 50 -2 10 1 will generate a val file named ConstrainedSeeds that contains 10 crystal seeds spread randomly on the bottom edge of a 50x50 cell space; each cell with a value of -2. Note that we have provided Ready To Use applications, already compiled version, to which you can directly pass your paramters (e.g. MSeedGenrator.exe 50 50 -2 10 1).


Drawlog Tool
=============
The tool draw.php can be run using PHP 5.5 with GD2 support. When run without parameters the following help message is shown:
usage: draw.php logfile outfile-prefix height width init_val
Here the logfile needs to be filtered to have only out_port log message, which can be done from the simulator paramenters or using grep.
- Outfile_prefix is a prefix used to generate a sequence of PNG images corresponding to each step in the simulation.
- Height, width are the cell space dimensions.
- The init_val corresponds to the defaults value used in the model.
Once the sequence of images is generated, we used the Blender sequence editor tool to transform it into a video.


If you have any questions regarding how to  use these tools, 
email damian.vicino@carleton.ca or daniella.niyo@gmail.com