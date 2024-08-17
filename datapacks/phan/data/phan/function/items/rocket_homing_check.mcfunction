#home in on things that are NOT our owner
scoreboard players operation #checkID value = @s playerID
execute as @a if score @s playerID = #checkID value run tag @s add rocketOwner
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #checkID value run tag @s add rocketOwner

execute positioned ^ ^ ^11 run tag @e[tag=tntCanHit,tag=!rocketOwner,distance=..10] add homingTarget

execute if entity @e[tag=homingTarget,distance=..25] facing entity @e[limit=1,tag=homingTarget,sort=nearest,distance=..25] eyes run tp @s ~ ~ ~ ~ ~
tag @e[tag=homingTarget,distance=..25] remove homingTarget
tag @a[tag=rocketOwner] remove rocketOwner
execute if score #botsEnabled value matches 1.. run tag @e[type=zombie,tag=rocketOwner] remove rocketOwner