#include(Supercooling2DExtMacros.inc)

[top]
components : supercooling2D

[supercooling2D]
type : cell
dim : (50,50)
delay : transport
defaultDelayTime  : 100
border : wrapped 
neighbors :                       supercooling2D(-1,0)
neighbors : supercooling2D(0,-1)  supercooling2D(0,0)  supercooling2D(0,1)
neighbors :                       supercooling2D(1,0) 
initialValue : -1
initialCellsValue : supercooling2dext.val
stateVariables : latentHeat lambda diffusionRate initialTemperature
stateValues : -20 3 5 -36
neighborports: phase temperature
localtransition : supercooling2d-rule
zone : insulatingTop-rule { (0,0)..(0,49) }
zone : insulatingBottom-rule { (49,0)..(49,49) }

[supercooling2d-rule]
%Initialization
rule : { ~phase := 0; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -1 AND (0,0)~temperature = -1 }
rule : { ~phase := 1; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -2 AND (0,0)~temperature = -2 }
rule : { ~phase := 2; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -3 AND (0,0)~temperature = -3 }
rule : { ~phase := 3; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -4 AND (0,0)~temperature = -4 }
rule : { ~phase := 4; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -5 AND (0,0)~temperature = -5 }
rule : { ~phase := 5; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -6 AND (0,0)~temperature = -6 }
rule : { ~phase := 6; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -7 AND (0,0)~temperature = -7 }
rule : { ~phase := 7; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -8 AND (0,0)~temperature = -8 }
rule : { ~phase := 8; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -9 AND (0,0)~temperature = -9 }
rule : { ~phase := 9; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -10 AND (0,0)~temperature = -10 }
rule : { ~phase := 10; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -11 AND (0,0)~temperature = -11 }
rule : { ~phase := 11; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -12 AND (0,0)~temperature = -12 }
rule : { ~phase := 12; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -13 AND (0,0)~temperature = -13 }
rule : { ~phase := 13; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -14 AND (0,0)~temperature = -14 }
rule : { ~phase := 14; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -15 AND (0,0)~temperature = -15 }
rule : { ~phase := 15; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -16 AND (0,0)~temperature = -16 }
rule : { ~phase := 16; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -17 AND (0,0)~temperature = -17 }
rule : { ~phase := 16; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -18 AND (0,0)~temperature = -18 }
rule : { ~phase := 18; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -19 AND (0,0)~temperature = -19 }
rule : { ~phase := 19; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -20 AND (0,0)~temperature = -20 }
rule : { ~phase := 20; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -21 AND (0,0)~temperature = -21 }

%Ice Propagation
% Solidification and Latent Heat Release
rule : { ~phase := #macro(getcolor);~temperature := $latentHeat; } 100 { ((0,0)~phase = 0) AND ( #macro(C) = 1) AND (#macro(temperature) < $lambda*(#macro(C)*(1 - #macro(C))) ) }
% Heat Conduction
rule : { ~temperature :=(0,0)~temperature -  $diffusionRate; } 100 { (0,0)~temperature - (((0,1)~temperature + (0,-1)~temperature + (1,0)~temperature + (-1,0)~temperature)/4) > $diffusionRate}
rule : { ~temperature :=(0,0)~temperature +  $diffusionRate; } 100 { (((0,1)~temperature + (0,-1)~temperature + (1,0)~temperature + (-1,0)~temperature)/4) - (0,0)~temperature > $diffusionRate}
rule : { ~temperature :=(((0,1)~temperature + (0,-1)~temperature + (1,0)~temperature + (-1,0)~temperature)/4); } 100 { t } 

[insulatingTop-rule]
%Initialization
rule : { ~phase := 0; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -1 AND (0,0)~temperature = -1 }
rule : { ~phase := 1; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -2 AND (0,0)~temperature = -2 }
rule : { ~phase := 2; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -3 AND (0,0)~temperature = -3 }
rule : { ~phase := 3; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -4 AND (0,0)~temperature = -4 }
rule : { ~phase := 4; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -5 AND (0,0)~temperature = -5 }
rule : { ~phase := 5; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -6 AND (0,0)~temperature = -6 }
rule : { ~phase := 6; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -7 AND (0,0)~temperature = -7 }
rule : { ~phase := 7; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -8 AND (0,0)~temperature = -8 }
rule : { ~phase := 8; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -9 AND (0,0)~temperature = -9 }
rule : { ~phase := 9; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -10 AND (0,0)~temperature = -10 }
rule : { ~phase := 10; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -11 AND (0,0)~temperature = -11 }
rule : { ~phase := 11; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -12 AND (0,0)~temperature = -12 }
rule : { ~phase := 12; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -13 AND (0,0)~temperature = -13 }
rule : { ~phase := 13; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -14 AND (0,0)~temperature = -14 }
rule : { ~phase := 14; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -15 AND (0,0)~temperature = -15 }
rule : { ~phase := 15; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -16 AND (0,0)~temperature = -16 }
rule : { ~phase := 16; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -17 AND (0,0)~temperature = -17 }
rule : { ~phase := 16; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -18 AND (0,0)~temperature = -18 }
rule : { ~phase := 18; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -19 AND (0,0)~temperature = -19 }
rule : { ~phase := 19; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -20 AND (0,0)~temperature = -20 }
rule : { ~phase := 20; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -21 AND (0,0)~temperature = -21 }

%Ice Propagation
% Solidification and Latent Heat Release
rule : { ~phase := #macro(getcolortop) ;~temperature := $latentHeat; } 100 { ((0,0)~phase = 0) AND ( #macro(CTop) = 2) AND (#macro(temperature) < $lambda*(#macro(CTop)*(1 - #macro(CTop))) ) }
% Heat Conduction
rule : { ~temperature := (0,0)~temperature -  $diffusionRate; } 100 { (0,0)~temperature - (((0,1)~temperature + (0,-1)~temperature + 2*(1,0)~temperature)/4) > $diffusionRate } 
rule : { ~temperature := (0,0)~temperature +  $diffusionRate;  } 100 { (((0,1)~temperature + (0,-1)~temperature + 2*(1,0)~temperature)/4) - (0,0)~temperature > $diffusionRate } 
rule : { ~temperature := (((0,1)~temperature + (0,-1)~temperature + 2*(1,0)~temperature)/4); } 100 { t } 


[insulatingBottom-rule]
%Initialization
rule : { ~phase := 0; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -1 AND (0,0)~temperature = -1 }
rule : { ~phase := 1; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -2 AND (0,0)~temperature = -2 }
rule : { ~phase := 2; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -3 AND (0,0)~temperature = -3 }
rule : { ~phase := 3; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -4 AND (0,0)~temperature = -4 }
rule : { ~phase := 4; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -5 AND (0,0)~temperature = -5 }
rule : { ~phase := 5; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -6 AND (0,0)~temperature = -6 }
rule : { ~phase := 6; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -7 AND (0,0)~temperature = -7 }
rule : { ~phase := 7; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -8 AND (0,0)~temperature = -8 }
rule : { ~phase := 8; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -9 AND (0,0)~temperature = -9 }
rule : { ~phase := 9; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -10 AND (0,0)~temperature = -10 }
rule : { ~phase := 10; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -11 AND (0,0)~temperature = -11 }
rule : { ~phase := 11; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -12 AND (0,0)~temperature = -12 }
rule : { ~phase := 12; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -13 AND (0,0)~temperature = -13 }
rule : { ~phase := 13; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -14 AND (0,0)~temperature = -14 }
rule : { ~phase := 14; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -15 AND (0,0)~temperature = -15 }
rule : { ~phase := 15; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -16 AND (0,0)~temperature = -16 }
rule : { ~phase := 16; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -17 AND (0,0)~temperature = -17 }
rule : { ~phase := 16; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -18 AND (0,0)~temperature = -18 }
rule : { ~phase := 18; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -19 AND (0,0)~temperature = -19 }
rule : { ~phase := 19; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -20 AND (0,0)~temperature = -20 }
rule : { ~phase := 20; ~temperature := $initialTemperature; } 100 { (0,0)~phase = -21 AND (0,0)~temperature = -21 }

%Ice Propagation
% Solidification and Latent Heat Release
rule : { ~phase := #macro(getcolorbottom);~temperature := $latentHeat; } 100 { ((0,0)~phase = 0) AND ( #macro(CBottom) = 1) AND (#macro(temperature) < $lambda*(#macro(CBottom)*(1 - #macro(CBottom))) ) }
% Heat Conduction
rule : { ~temperature := (0,0)~temperature -  $diffusionRate; } 100 { (0,0)~temperature - (((0,1)~temperature + (0,-1)~temperature + 2*(-1,0)~temperature)/4) > $diffusionRate } 
rule : { ~temperature := (0,0)~temperature +  $diffusionRate;  } 100 { (((0,1)~temperature + (0,-1)~temperature + 2*(-1,0)~temperature)/4) - (0,0)~temperature > $diffusionRate } 
rule : { ~temperature := (((0,1)~temperature + (0,-1)~temperature + 2*(-1,0)~temperature)/4); } 100 { t } 
  
