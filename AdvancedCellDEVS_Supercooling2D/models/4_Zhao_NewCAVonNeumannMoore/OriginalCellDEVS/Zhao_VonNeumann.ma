#include(vnsupercoolingMacros.inc)

[top]
components : 2dsupercooling

[2dsupercooling]
type : cell
width : 300
height : 300
delay : transport
defaultDelayTime : 1
border : wrapped
neighbors : 2dsupercooling(-2,0)  
neighbors : 2dsupercooling(-1,-1) 2dsupercooling(-1,0) 2dsupercooling(-1,1)  
neighbors : 2dsupercooling(0,-2) 2dsupercooling(0,-1)  2dsupercooling(0,0)  2dsupercooling(0,1) 2dsupercooling(0,2)
neighbors : 2dsupercooling(1,-1) 2dsupercooling(1,0) 2dsupercooling(1,1)
neighbors : 2dsupercooling(2,0)  
initialvalue : 0.03
initialCellsValue : vnsupercooling.val
localtransition : 2dsupercooling-rule


[2dsupercooling-rule]
% Solidification and Heat Realease
rule : { (0,0) + #macro(diffusionSolution) } 1 { #macro(isSolution) }
rule : { (0,0) + #macro(diffusionNearSolid) } 1 { #macro(isNearSolid) }
rule : 1 1 { #macro(isSolid) }										    													    													     											    													    													     


