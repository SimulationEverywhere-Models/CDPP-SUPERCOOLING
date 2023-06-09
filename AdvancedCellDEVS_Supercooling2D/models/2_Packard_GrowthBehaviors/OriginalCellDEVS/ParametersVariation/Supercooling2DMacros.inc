#BeginMacro(C)
( trunc((0,1)/10000) + trunc((0,-1)/10000) + trunc((1,0)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(CTop)
( trunc((0,-1)/10000) + trunc((0,1)/10000) + trunc((1,0)/10000))
#EndMacro

#BeginMacro(CBottom)
( trunc((-1,0)/10000) + trunc((0,-1)/10000) + trunc((0,1)/10000) )
#EndMacro

#BeginMacro(CLeft)
( trunc((0,1)/10000) + trunc((1,0)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(CRight)
( trunc((0,-1)/10000) + trunc((1,0)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(CCornerUR)
( trunc((0,-1)/10000) + trunc((1,0)/10000) )
#EndMacro

#BeginMacro(CCornerUL)
( trunc((0,1)/10000) + trunc((1,0)/10000) )
#EndMacro

#BeginMacro(CCornerDR)
( trunc((0,-1)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(CCornerDL)
( trunc((0,1)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(temperature)
remainder((0,0),10000)
#EndMacro

#BeginMacro(isLiquid)
((0,0) < 10000)
#EndMacro#BeginMacro(C)
( trunc((0,1)/10000) + trunc((0,-1)/10000) + trunc((1,0)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(CTop)
( trunc((0,1)/10000) + trunc((0,-1)/10000) + trunc((1,0)/10000) )
#EndMacro

#BeginMacro(CBottom)
( trunc((0,1)/10000) + trunc((0,-1)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(CLeft)
( trunc((0,1)/10000) + trunc((1,0)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(CRight)
( trunc((0,-1)/10000) + trunc((1,0)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(CCornerUR)
( trunc((0,-1)/10000) + trunc((1,0)/10000) )
#EndMacro

#BeginMacro(CCornerUL)
( trunc((0,1)/10000) + trunc((1,0)/10000) )
#EndMacro

#BeginMacro(CCornerDR)
( trunc((0,-1)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(CCornerDL)
( trunc((0,1)/10000) + trunc((-1,0)/10000) )
#EndMacro

#BeginMacro(temperature)
remainder((0,0),10000)
#EndMacro

#BeginMacro(isLiquid)
((0,0) < 10000)
#EndMacro