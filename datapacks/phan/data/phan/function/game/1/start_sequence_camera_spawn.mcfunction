#run by a player
execute if loaded ~ ~ ~ run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["camera","setID","currentCamera"]}
scoreboard players operation @e[tag=setID] playerID = @s playerID
tag @e[tag=setID] remove setID