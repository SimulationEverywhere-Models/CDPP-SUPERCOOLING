#BeginMacro(C)
( if((0,1)~phase > 0, 1, 0) + if((0,-1)~phase > 0, 1, 0 ) + if((1,0)~phase > 0, 1, 0 ) +  if((-1,0)~phase > 0, 1, 0 ) )
#EndMacro

#BeginMacro(CTop)
( if((0,1)~phase > 0, 1, 0 ) + if((0,-1)~phase > 0, 1, 0 ) + if((1,0)~phase > 0, 1 ,0 ) )
#EndMacro

#BeginMacro(CBottom)
( if((0,1)~phase > 0, 1, 0 ) + if((0,-1)~phase > 0, 1, 0 ) + if((-1,0)~phase > 0, 1, 0 ) )
#EndMacro

#BeginMacro(temperature)
(0,0)~temperature
#EndMacro

#BeginMacro(isLiquid)
(0,0)~phase = 0
#EndMacro

#BeginMacro(getcolor)
( if( (0,1)~phase != 0, (0,1)~phase, if( (0,-1)~phase != 0, (0,-1)~phase, if( (1,0)~phase != 0, (1,0)~phase, (-1,0)~phase )  )  )  )
#EndMacro

#BeginMacro(getcolortop)
( if( (0,-1)~phase != 0, (0,-1)~phase, if( (1,0)~phase != 0, (1,0)~phase, (-1,0)~phase )  )  )  
#EndMacro

#BeginMacro(getcolorbottom)
( if( (0,1)~phase != 0, (0,1)~phase, if( (1,0)~phase != 0, (1,0)~phase, (-1,0)~phase )  )  )  
#EndMacro

