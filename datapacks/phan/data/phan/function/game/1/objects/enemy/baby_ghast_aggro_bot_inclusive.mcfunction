#find target
scoreboard players operation #findTarget value = @s targetID
execute as @e[tag=playing,distance=..60] if score @s playerID = #findTarget value run tag @s add ghastTarget

#face target via /rotate
execute facing entity @e[limit=1,tag=ghastTarget,distance=..60] feet rotated ~ 0 run rotate @s ~ ~

#make noise when we first notice player
execute if score @s editArg2 matches 0 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 4 1.3

#shoot
scoreboard players add @s editArg2 1
execute if score @s editArg2 matches 21.. facing entity @e[limit=1,tag=ghastTarget,distance=..60] eyes run function phan:game/1/objects/enemy/baby_ghast_shoot

#cleanup
tag @e[tag=ghastTarget,distance=..60] remove ghastTarget