#check LOS to nearest player
scoreboard players set #checkLOS value 0
scoreboard players set #recursions value 52
execute facing entity @a[tag=playing,gamemode=adventure,distance=..35,limit=1,sort=nearest] eyes run function phan:game/1/objects/enemy/baby_ghast_check_los_recursive
#re-using baby ghast code because it works perfectly here

#validity of LOS is stored as "editArg1"
scoreboard players operation @s editArg1 = #checkLOS value
#found LOS to player? target them
execute if score #checkLOS value matches 1 run scoreboard players operation @s targetID = @a[tag=playing,gamemode=adventure,distance=..35,limit=1,sort=nearest] playerID
execute if score #checkLOS value matches 0 run scoreboard players reset @s targetID

#check again in a few ticks
#(randomized slightly in case there's multiple turrets all tryna do this at the same time)
execute store result score @s age run random value 1..3