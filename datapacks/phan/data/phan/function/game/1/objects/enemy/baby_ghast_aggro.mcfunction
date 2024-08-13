#find target
scoreboard players operation #findTarget value = @s targetID
execute as @a[tag=playing,distance=..60] if score @s playerID = #findTarget value run tag @s add ghastTarget

#face target
execute facing entity @a[limit=1,tag=ghastTarget,distance=..60] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

#make noise when we first notice player
execute if score @s editArg2 matches 0 run playsound minecraft:entity.ghast.warn master @a ~ ~ ~ 4 1.3

#shoot
scoreboard players add @s editArg2 1
execute if score @s editArg2 matches 21.. facing entity @a[limit=1,tag=ghastTarget,distance=..60] eyes run function phan:game/1/objects/enemy/baby_ghast_shoot

#cleanup
tag @a[tag=ghastTarget,distance=..60] remove ghastTarget