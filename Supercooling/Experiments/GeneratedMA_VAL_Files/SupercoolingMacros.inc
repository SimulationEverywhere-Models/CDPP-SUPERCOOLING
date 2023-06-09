#BeginMacro(Cx)
( trunc((0,1,-1)/10000) + trunc((0,1,0)/10000) + trunc((0,1,1)/10000) + trunc((0,-1,-1)/10000) + trunc((0,-1,0)/10000) + trunc((0,-1,1)/10000) + trunc((0,0,-1)/10000) + trunc((0,0,1)/10000) )
#EndMacro

#BeginMacro(Cy)
( trunc((1,0,-1)/10000) + trunc((1,0,0)/10000) + trunc((1,0,1)/10000) + trunc((-1,0,-1)/10000) + trunc((-1,0,0)/10000) + trunc((-1,0,1)/10000) + trunc((0,0,-1)/10000) + trunc((0,0,1)/10000) )
#EndMacro

#BeginMacro(Cz)
( trunc((-1,-1,0)/10000) + trunc((-1,0,0)/10000) + trunc((-1,1,0)/10000) + trunc((1,-1,0)/10000) + trunc((1,0,0)/10000) + trunc((1,1,0)/10000) + trunc((0,-1,0)/10000) + trunc((0,1,0)/10000) )
#EndMacro

#BeginMacro(temperature)
remainder((0,0,0),10000)
#EndMacro

#BeginMacro(isLiquid)
((0,0,0) < 10000)
#EndMacro