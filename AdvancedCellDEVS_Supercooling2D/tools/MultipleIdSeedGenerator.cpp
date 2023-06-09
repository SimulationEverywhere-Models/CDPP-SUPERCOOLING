//  Created by Damian Vicino on 12/25/14.
//  Edited by Daniella Niyonkuru on 12/25/2014
//      Changes: Constrained Growth (case 1), Cout messages
//  Copyright (c) 2014 Damian Vicino. All rights reserved.


#include <iostream>
#include <random>
#include <fstream>

int main(int argc, const char * argv[]) {
    //check  input params
    if (argc < 7 ) {
        std::cout << "usage: " << argv[0] << " Outfile Height Width Init_val Seeds GrowthType" << std::endl;
        std::cout << "Outfile       Name of the output file" << std::endl;
        std::cout << "Height        Integer value" << std::endl;
        std::cout << "Width         Integer value" << std::endl;
        std::cout << "Init_val      Negative Integer Value" << std::endl;
        std::cout << "Seeds         Number of Crystal Seeds - integer quantity" << std::endl;
        std::cout << "GrowthType    0 for Free, 1 for Constrained Dendritic Growth" << std::endl;
        exit(1);
    }
    std::string outfile = argv[1];
    int height = atoi(argv[2]);
    int width = atoi(argv[3]);
    int init_val = atof(argv[4]);
    int seeds = atoi(argv[5]);
    int kind = atoi(argv[6]);
    
    //setup random generator
    std::random_device rd;
    std::mt19937 mt(rd());
    std::uniform_real_distribution<double> dist(0, height*width);
    
        //setup counter and file
    std::ofstream ofs;
    ofs.open (outfile);
    ofs.precision(5);

    int tries = 0;
    std::vector<std::pair<int, int> > cells;
    switch (kind) {
        case 0:
            std::cout << "FREE GROWTH " << std::endl << "-> Sowing Crystal Seeds All Over The Space ..." << std::endl;
            while (cells.size() != seeds){
                cells.clear();
                for (int i = 1; i < width -1; i++ ){
                    for (int j = 1; j < height -1; j++ ){
                        if (dist(mt) < seeds ){
                            cells.push_back(std::pair<int, int>(i, j));
                        }
                    }
                }
                tries++;
                if (tries > 100) {
                    std::cout << "Failed 100 times" << std::endl;
                    exit(3);
                }
            }
            break;
        case 1:
            std::cout << "CONSTRAINED GROWTH " << std::endl << "-> Sowing Crystal Seeds on the Bottom Edge of The Space ..." << std::endl;
            while (cells.size() != seeds){
                cells.clear();
                int i = height - 1;
                for (int j = 1; j < width -1; j++ ){
                    if (dist(mt) < seeds * height ){
                        cells.push_back(std::pair<int, int>(i, j));
                    }
                }
                tries++;
                if (tries > 100) {
                    std::cout << "Failed 100 times" << std::endl;
                    exit(3);
                }
            }
            break;
        default:
            std::cout << "Error, verify your parameters" << std::endl;
	        std::cout << "Usage: " << argv[0] << " Outfile Height Width Init_val Seeds GrowthType" << std::endl;
	        std::cout << "Outfile       Name of the output file" << std::endl;
	        std::cout << "Height        Integer value" << std::endl;
	        std::cout << "Width         Integer value" << std::endl;
	        std::cout << "Init_val      Negative Integer Value" << std::endl;
	        std::cout << "Seeds         Number of Crystal Seeds - integer quantity" << std::endl;
	        std::cout << "GrowthType    0 for Free, 1 for Constrained Dendritic Growth" << std::endl;
            exit(2);
            break;
    }
    
    for ( auto& c  : cells ) {
        ofs << "(" << c.first << "," << c.second << ") = " << init_val-- << std::endl;
    }
    ofs.close();
    std::cout << "Generated File has: " << cells.size() << " Seeds" << std::endl;
    
    return 0;
}
