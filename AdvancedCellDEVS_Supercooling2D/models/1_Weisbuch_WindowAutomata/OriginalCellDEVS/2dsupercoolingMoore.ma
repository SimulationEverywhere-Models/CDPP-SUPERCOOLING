[top]
components : 2dsupercooling

[2dsupercooling]
type : cell
width : 50
height : 50
delay : transport
defaultDelayTime : 100
border : wrapped
neighbors : 2dsupercooling(-1,-1) 2dsupercooling(-1,0) 2dsupercooling(-1,1)
neighbors : 2dsupercooling(0,-1)  2dsupercooling(0,0)  2dsupercooling(0,1)
neighbors : 2dsupercooling(1,-1)  2dsupercooling(1,0)  2dsupercooling(1,1)
initialvalue : 0
initialCellsValue : 2dsupercooling.val
localtransition : windowgrowth-rule

[windowgrowth-rule]
rule : 1 100 { (0,0) = 0 and (truecount = 1) }
rule : 1 100 {(0,0) = 1 }
rule : 0 100 { t }

