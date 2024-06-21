scoreboard players add @s playerTipTime 1

#show tip after 30 seconds (assuming player is in lobby)
execute if score @s playerTipTime matches 501.. if entity @s[x=198,y=-8,z=118,distance=..200] run function phan:game/0/tip_show