#include(Supercooling2DMacrosMoore.inc)

[top]
components : supercooling2D

[supercooling2D]
type : cell
dim : (50,50)
delay : transport
defaultDelayTime  : 100
border : wrapped
neighbors : supercooling2D(-1,-1) supercooling2D(-1,0) supercooling2D(-1,1)
neighbors : supercooling2D(0,-1)  supercooling2D(0,0)  supercooling2D(0,1)
neighbors : supercooling2D(1,-1)  supercooling2D(1,0)  supercooling2D(1,1)
zone : insulatingTop-rule { (0,0)..(0,49) }
zone : insulatingBottom-rule { (49,0)..(49,49) }
initialvalue : 237
initialCellsValue : supercooling2D.val
localtransition : supercooling2D-rule

[supercooling2D-rule]
% Solidification and Heat Realease
rule : 10253 100 {((0,0) < 10000) and ( #macro(C) = -1) and (#macro(temperature) < CToK(1*( #macro(C)*(1 - #macro(C))) ))}	
% Heat Conduction
rule : { (0,0) - 5 } 100 { (remainder((0,0),10000) - ( (remainder((-1,0),10000) + remainder((0,-1),10000)+ remainder((0,1),10000) + remainder((1,0),10000))/4) > 5 ) }											    													    													     											    													    													     
rule : { (0,0) + 5 } 100 { (( (remainder((-1,0),10000) + remainder((0,-1),10000)+ remainder((0,1),10000) + remainder((1,0),10000))/4) - remainder((0,0),10000) > 5 ) }											    													    													     											    													    													     
rule : { (0,0) - remainder((0,0),10000) + ((remainder((-1,0),10000) + remainder((0,-1),10000)+ remainder((0,1),10000)  + remainder((1,0),10000))/4)} 100 { t }  

[insulatingTop-rule]
rule : 10253 100 {((0,0) < 10000) and ( #macro(CTop) = -1) and (#macro(temperature) < CToK(1*( #macro(CTop)*(1 - #macro(CTop))) ))}	
% Heat Conduction
rule : { (0,0) - 5} 100 { (remainder((0,0),10000) - ((remainder((0,-1),10000) + remainder((0,1),10000) + 2*(remainder((1,0),10000)))/4) > 5)  }											    													    													     											    													    													     
rule : { (0,0) + 5} 100 { ((remainder((0,-1),10000) + remainder((0,1),10000) + 2*(remainder((1,0),10000)))/4 - remainder((0,0),10000) > 5)  }											    													    													     											    													    													     
rule : { (0,0) - remainder((0,0),10000) + ( (remainder((0,-1),10000) + remainder((0,1),10000) + 2*(remainder((1,0),10000)))/4)  } 100 { t }  

[insulatingBottom-rule]
rule : 10253 100 {((0,0) < 10000) and ( #macro(CBottom) = -1) and (#macro(temperature) < CToK(1*( #macro(CBottom)*(1 - #macro(CBottom))) ))}	
% Heat Conduction
rule : { (0,0) - 5 } 100 { (remainder((0,0),10000) - ((2*(remainder((-1,0),10000)) + remainder((0,-1),10000)+ remainder((0,1),10000))/4) > 5)  }											    													    													     											    													    													     
rule : { (0,0) + 5 } 100 { ((2*(remainder((-1,0),10000)) + remainder((0,-1),10000)+ remainder((0,1),10000))/4 - remainder((0,0),10000) > 5)  }											    													    													     											    													    													     
rule : { (0,0) - remainder((0,0),10000) + ( (2*(remainder((-1,0),10000)) + remainder((0,-1),10000)+ remainder((0,1),10000))/4) } 100 { t } 
												    													    													     											    													    													     
