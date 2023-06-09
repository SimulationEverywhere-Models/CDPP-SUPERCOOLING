#include(Supercooling2DMacros.inc)

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
zone : insulatingTop-rule { (0,0)..(0,49) }
zone : insulatingBottom-rule { (49,0)..(49,49) }
initialvalue : 237
initialCellsValue : supercooling2D.val
localtransition : supercooling2D-rule

[supercooling2D-rule]
% Solidification and Heat Release
rule : 10273 100 {((0,0) < 10000) and ( #macro(C) >= 1) and (#macro(temperature) < CToK(0.01*( #macro(C)*(1 - #macro(C))) ))}	
% Heat Conduction
rule : { (0,0) - 10 } 100 { (remainder((0,0),10000) - ( (remainder((-1,0),10000) + remainder((0,-1),10000)+ remainder((0,1),10000) + remainder((1,0),10000))/4) > 10 ) }											    													    													     											    													    													     
rule : { (0,0) + 10 } 100 { (( (remainder((-1,0),10000) + remainder((0,-1),10000)+ remainder((0,1),10000) + remainder((1,0),10000))/4) - remainder((0,0),10000) > 10 ) }											    													    													     											    													    													     
rule : { (0,0) - remainder((0,0),10000) + ((remainder((-1,0),10000) + remainder((0,-1),10000)+ remainder((0,1),10000)  + remainder((1,0),10000))/4)} 100 { t }  

[insulatingTop-rule]
rule : 10273 100 {((0,0) < 10000) and ( #macro(CTop) >= 1) and (#macro(temperature) < CToK(0.01*( #macro(CTop)*(1 - #macro(CTop))) ))}	
% Heat Conduction
rule : { (0,0) - 10 } 100 { (remainder((0,0),10000) - ((remainder((0,-1),10000) + remainder((0,1),10000) + 2*(remainder((1,0),10000)))/4) > 10)  }											    													    													     											    													    													     
rule : { (0,0) + 10 } 100 { ((remainder((0,-1),10000) + remainder((0,1),10000) + 2*(remainder((1,0),10000)))/4 - remainder((0,0),10000) > 10)  }											    													    													     											    													    													     
rule : { (0,0) - remainder((0,0),10000) + ( (remainder((0,-1),10000) + remainder((0,1),10000) + 2*(remainder((1,0),10000)))/4)  } 100 { t }  

[insulatingBottom-rule]
rule : 10273 100 {((0,0) < 10000) and ( #macro(CBottom) >= 1) and (#macro(temperature) < CToK(0.01*( #macro(CBottom)*(1 - #macro(CBottom))) ))}	
% Heat Conduction
rule : { (0,0) - 10 } 100 { (remainder((0,0),10000) - ((2*(remainder((-1,0),10000)) + remainder((0,-1),10000)+ remainder((0,1),10000))/4) > 10)  }											    													    													     											    													    													     
rule : { (0,0) + 10 } 100 { ((2*(remainder((-1,0),10000)) + remainder((0,-1),10000)+ remainder((0,1),10000))/4 - remainder((0,0),10000) > 10)  }											    													    													     											    													    													     
rule : { (0,0) - remainder((0,0),10000) + ( (2*(remainder((-1,0),10000)) + remainder((0,-1),10000)+ remainder((0,1),10000))/4) } 100 { t } 
												    													    													     											    													    													     
