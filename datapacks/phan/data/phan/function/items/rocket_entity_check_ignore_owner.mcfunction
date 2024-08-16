scoreboard players set #hit value 0

#explode anything other than our owner
scoreboard players operation #checkID value = @s playerID
execute as @a if score @s playerID = #checkID value run tag @s add rocketOwner
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,distance=..8] if score @s playerID = #checkID value run tag @s add rocketOwner
execute positioned ~-1 ~-1 ~-1 if entity @e[tag=tntCanHit,tag=!rocketOwner,dx=2,dy=2,dz=2] run scoreboard players set #hit value 1
tag @a[tag=rocketOwner] remove rocketOwner

#explode if we found a thing
execute if score #hit value matches 1 at @s run function phan:items/rocket_hit