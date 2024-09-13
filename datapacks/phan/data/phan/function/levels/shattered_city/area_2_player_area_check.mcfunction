#AREA TRANSITION ZONES (triggered as player moves along the x-axis)
#going forward
execute unless score @s currentLoad matches 5 if entity @s[scores={location_x=1803..1813}] run scoreboard players set @s currentLoad 1
execute unless score @s currentLoad matches 5 if entity @s[scores={location_x=1694..1704,location_y=95..}] run scoreboard players set @s currentLoad 2
execute unless score @s currentLoad matches 5 if entity @s[scores={location_x=1609..1619,location_y=102..}] run scoreboard players set @s currentLoad 3
execute unless score @s currentLoad matches 5 if entity @s[scores={location_x=1500..1510,location_y=119..}] run scoreboard players set @s currentLoad 4
execute unless score @s currentLoad matches 5 if entity @s[x=1344,y=150,z=2400,dx=5,dy=30,dz=5] run scoreboard players set @s currentLoad 5
#going back
execute if score @s currentLoad matches 4..5 if entity @s[scores={location_x=1839..}] run scoreboard players set @s currentLoad 0


#new area? load stuff
execute unless score @s currentLoad = @s previousLoad run function phan:game/1/player_area_new

#update previousLoad
scoreboard players operation @s previousLoad = @s currentLoad


#respawn if fallen down (done to be convenient while still allowing player to run backwards)
execute if entity @s[scores={location_y=..70}] run function phan:game/1/player/respawn
execute if entity @s[scores={currentLoad=2,location_y=..80,location_x=..1703}] run function phan:game/1/player/respawn
execute if entity @s[scores={currentLoad=3,location_y=..90,location_x=1569..1618}] run function phan:game/1/player/respawn
execute if entity @s[scores={currentLoad=3,location_y=..104,location_x=1533..1568}] run function phan:game/1/player/respawn
execute if entity @s[scores={currentLoad=3,location_y=..107,location_x=..1532}] run function phan:game/1/player/respawn
execute if entity @s[scores={currentLoad=4,location_y=..109,location_x=..1508}] run function phan:game/1/player/respawn
