execute store result score #test value run execute if entity @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}]

#abort if nothing found
execute unless score #test value matches 1.. run return 0

#adopt score of the node we're looking at
scoreboard players operation @s AIBC_selected = @e[type=marker,tag=AIBC,limit=1,sort=nearest,distance=..10,scores={AIBC_id=-2147483648..2147483647}] AIBC_id
scoreboard players set @s AIBC_mode 1

#feedback
playsound item.axe.strip master @a ~ ~ ~ 2 1