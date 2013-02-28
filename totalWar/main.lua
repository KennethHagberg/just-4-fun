----- total war ---
RN=math.random
G=6
R=RN(150,200)
V=RN(10,80)
B=RN(50,155)
Q=0
W=display.contentWidth
H=display.contentHeight
physics=require("physics")
physics.start()
--physics.setGravity(0,-2)
GR = graphics.newGradient(
{ 150,180,250 },
{ 50,80,50 },
"left" )
bg = display.newRect(0,0,W,H)
bg:setFillColor(GR)
gp = display.newText("",20,H-40,nil,24)
gp.alpha = 0.3
function point(event)

end
function Rem(event)
event.other:removeSelf()
end
Runtime:addEventListener("enterFrame",
function()
  local C=display.newCircle(RN(-40,W+40),H+80,G)
  physics.addBody(C,"dynamic",{friction=7,radius=G,bounce=0.5})
  C:setFillColor(0,200,0,RN(80,120))
  
 C:addEventListener("collision",Rem)
  local C2=display.newCircle(RN(-40,W+40),-40,G)
  physics.addBody(C2,"dynamic",{friction=7,radius=G,bounce=0.5})
  C2:setFillColor(200,0,0,RN(80,120))
 
  if G<15 then
    G=G+1
    R=R+1
  else
    G=0 
    R=R
  end
  C.gravityScale=-0.2
  C2.gravityScale=0.2
end
)  
NO=display.newRect(0,-90,W*10,10)
physics.addBody(NO, "static")
NO:addEventListener("collision",point)
NO2=display.newRect(0,-90,W*10,10)
physics.addBody(NO2, "static")
NO2:addEventListener("collision",point)
-- LW=display.newRect(-40,0,2,H)
-- physics.addBody(LW,"static")
-- NO2:addEventListener("collision",Rem)
-- LW=display.newRect(W+40,0,2,H)
-- physics.addBody(RW,"static")
-- RW:addEventListener("collision",Rem)
 
