#home in on things that are NOT our owner
scoreboard players operation #checkID value = @s playerID
execute as @a if score @s playerID = #checkID value run tag @s add rocketOwner
execute positioned ^ ^ ^12 run tag @e[tag=tntCanHit,tag=!rocketOwner,distance=..10] add homingTarget
execute if entity @e[tag=homingTarget] facing entity @e[limit=1,tag=homingTarget,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
tag @e[tag=homingTarget] remove homingTarget
tag @a[tag=rocketOwner] remove rocketOwner