npc = {}
npc.x = 2000
npc.y = 530
npc.speed = 50



npc.sprite = sprites.npcanim

npc.grid = anim8.newGrid(65,100,130,100)
npc.animation = anim8.newAnimation(npc.grid('1-2',1),0.3)
npc.r = 1
npcstate = 1


---ДВИЖУХА НПС
function animmoveUpdate(dt)
if npc.x >= 2500 then
npcstate = 2
elseif npc.x <= 2000 then
npcstate = 1
end
if npcstate == 2 then
npc.x = npc.x - npc.speed * dt
npc.sprite = sprites.npcanimm2
else
if npcstate == 1 then
npc.x = npc.x + npc.speed * dt
npc.sprite = sprites.npcanimm
end
if distanceBetween(npc.x+23,npc.y,player.body:getX(),player.body:getY()) > 75 then
  kg = 1
end
if love.keyboard.isDown("e") then
if distanceBetween(npc.x+23,npc.y,player.body:getX(),player.body:getY()) < 75 then
  kg = 2
end
end
if distanceBetween(npc.x+23,npc.y,player_1.body1:getX(),player_1.body1:getY()) > 75 then
  ki = 1
end
if player_1.dead == false then
if love.keyboard.isDown("r") then
if distanceBetween(npc.x+23,npc.y,player_1.body1:getX(),player_1.body1:getY()) < 75 then
  ki = 2
end
end





end
end
if distanceBetween(npc.x+23,npc.y,player.body:getX(),player.body:getY()) < 75 then
npc.speed= 0
npc.sprite = sprites.npcanimq


else
if distanceBetween(npc.x+23,npc.y,player.body:getX(),player.body:getY()) > 75 then
npc.speed=80
if player_1.dead == false then
if distanceBetween(npc.x+23,npc.y,player_1.body1:getX(),player_1.body1:getY()) < 75 then
npc.speed= 0
npc.sprite = sprites.npcanimq

else
if distanceBetween(npc.x+23,npc.y,player_1.body1:getX(),player_1.body1:getY()) > 75 then
npc.speed=80
end
end
end
end
end
end
