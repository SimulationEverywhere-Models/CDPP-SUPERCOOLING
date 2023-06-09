#include(SupercoolingMacros.inc)

[top]
components : supercooling

[supercooling]
type : cell
dim : (49,49,49)
delay : transport
defaultDelayTime  : 100
border : wrapped 
neighbors : supercooling(0,-1,-1)  supercooling(0,0,-1)  supercooling(0,1,-1)
neighbors : supercooling(1,0,-1)   supercooling(-1,0,-1) supercooling(-1,0,1)
neighbors : supercooling(-1,-1,0)  supercooling(-1,0,0)  supercooling(-1,1,0) 
neighbors : supercooling(0,-1,0)   supercooling(0,0,0)   supercooling(0,1,0)
neighbors : supercooling(1,-1,0)   supercooling(1,0,0)   supercooling(1,1,0)
neighbors : supercooling(0,-1,1)   supercooling(0,0,1)   supercooling(0,1,1)
neighbors : supercooling(1,0,1)   
initialvalue : 225
initialCellsValue : supercooling_-48_49_1.val
localtransition : supercooling-rule

[supercooling-rule]
rule : 10230 100 {((0,0,0) < 10000) and ( #macro(Cx) > 2) and (#macro(temperature) < CToK(-20*( if(#macro(Cx)>0,1/#macro(Cx),0)+if(#macro(Cy)>0,1/#macro(Cy),0)+if(#macro(Cz)>0,1/#macro(Cz),0) ) ))}
rule : 10230 100 {((0,0,0) < 10000) and ( #macro(Cy) > 2) and (#macro(temperature) < CToK(-20*( if(#macro(Cx)>0,1/#macro(Cx),0)+if(#macro(Cy)>0,1/#macro(Cy),0)+if(#macro(Cz)>0,1/#macro(Cz),0) ) ))}
rule : 10230 100 {((0,0,0) < 10000) and ( #macro(Cz) > 2) and (#macro(temperature) < CToK(-20*( if(#macro(Cx)>0,1/#macro(Cx),0)+if(#macro(Cy)>0,1/#macro(Cy),0)+if(#macro(Cz)>0,1/#macro(Cz),0) ) ))}													    													    													     											    													    													     
rule : { (0,0,0) - remainder((0,0,0),10000) + ( (remainder((0,0,1),10000)+ remainder((0,0,-1),10000) + remainder((0,1,0),10000) + remainder((0,-1,0),10000) + remainder((1,0,0),10000) + remainder((-1,0,0),10000))/6) } 100 { t } 
