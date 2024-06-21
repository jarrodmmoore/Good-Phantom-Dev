#editArg1 is timer for doing the ring thing
#editArg2 is delay before doing anything

#never do anything if we're declawed
execute if entity @s[tag=declawed] run scoreboard players set @s editArg2 10

#delay
scoreboard players remove @s[scores={editArg2=1..}] editArg2 1

#do thing!
execute unless score @s editArg2 matches 1.. run scoreboard players add @s editArg1 1
execute if score @s editArg1 matches 1 run data merge entity @s {Peek:128}
execute if score @s editArg1 matches 30 run tag @s[tag=!shulkerCycled] add shulkerCycled
execute if score @s editArg1 matches 31 run data merge entity @s {Peek:0}
execute if score @s editArg1 matches 40.. run scoreboard players set @s editArg1 0

#ring visuals
execute if entity @s[tag=shulkerCycled,scores={editArg1=30}] on passengers if entity @s[tag=shulkerRingRed] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.31f,0.0f],scale:[16.0f,1.0f,16.0f]}}
execute if entity @s[tag=shulkerCycled,scores={editArg1=31}] on passengers if entity @s[tag=shulkerRingWhite] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.3f,0.0f],scale:[16.0f,1.0f,16.0f]}}
execute if entity @s[tag=shulkerCycled,scores={editArg1=20}] on passengers if entity @s[tag=shulkerRingRed] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-1.31f,0.0f],scale:[17.0f,1.0f,17.0f]}}
execute if entity @s[tag=shulkerCycled,scores={editArg1=21}] on passengers if entity @s[tag=shulkerRingWhite] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-1.3f,0.0f],scale:[17.0f,1.0f,17.0f]}}
execute if score @s editArg1 matches 25 on passengers if entity @s[tag=shulkerRingRed] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.31f,0.0f],scale:[0.0f,1.0f,0.0f]}}
execute if score @s editArg1 matches 26 on passengers if entity @s[tag=shulkerRingWhite] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.3f,0.0f],scale:[0.0f,1.0f,0.0f]}}

#do damage at specific times
tag @s add enemyAttacker
execute if entity @s[tag=shulkerCycled,scores={editArg1=33}] positioned ~-1.5 ~-1 ~-1.5 as @a[tag=playing,gamemode=adventure,scores={airTime=..1,hitstun=..0},dx=3,dy=1,dz=3] positioned ~1.5 ~1 ~1.5 run function phan:game/1/objects/enemy/shulker_hit
execute if entity @s[tag=shulkerCycled,scores={editArg1=37}] positioned ~-2.5 ~-1 ~-2.5 as @a[tag=playing,gamemode=adventure,scores={airTime=..1,hitstun=..0},dx=5,dy=1,dz=5] positioned ~2.5 ~1 ~2.5 run function phan:game/1/objects/enemy/shulker_hit
execute if entity @s[tag=shulkerCycled,scores={editArg1=1}] positioned ~-3.5 ~-1 ~-3.5 as @a[tag=playing,gamemode=adventure,scores={airTime=..1,hitstun=..0},dx=7,dy=1,dz=7] positioned ~3.5 ~1 ~3.5 positioned ~-1.5 ~-1 ~-1.5 unless entity @s[dx=3,dy=1,dz=3] positioned ~1.5 ~1 ~1.5 run function phan:game/1/objects/enemy/shulker_hit
execute if entity @s[tag=shulkerCycled,scores={editArg1=5}] positioned ~-4.5 ~-1 ~-4.5 as @a[tag=playing,gamemode=adventure,scores={airTime=..1,hitstun=..0},dx=9,dy=1,dz=9] positioned ~4.5 ~1 ~4.5 positioned ~-2.5 ~-1 ~-2.5 unless entity @s[dx=5,dy=1,dz=5] positioned ~2.5 ~1 ~2.5 run function phan:game/1/objects/enemy/shulker_hit
execute if entity @s[tag=shulkerCycled,scores={editArg1=9}] positioned ~-5.5 ~-1 ~-5.5 as @a[tag=playing,gamemode=adventure,scores={airTime=..1,hitstun=..0},dx=11,dy=1,dz=11] positioned ~5.5 ~1 ~5.5 positioned ~-3.5 ~-1 ~-3.5 unless entity @s[dx=7,dy=1,dz=7] positioned ~3.5 ~1 ~3.5 run function phan:game/1/objects/enemy/shulker_hit
execute if entity @s[tag=shulkerCycled,scores={editArg1=13}] positioned ~-6.5 ~-1 ~-6.5 as @a[tag=playing,gamemode=adventure,scores={airTime=..1,hitstun=..0},dx=13,dy=1,dz=13] positioned ~6.5 ~1 ~6.5 positioned ~-4.5 ~-1 ~-4.5 unless entity @s[dx=9,dy=1,dz=9] positioned ~4.5 ~1 ~4.5 run function phan:game/1/objects/enemy/shulker_hit
execute if entity @s[tag=shulkerCycled,scores={editArg1=17}] positioned ~-7.5 ~-1 ~-7.5 as @a[tag=playing,gamemode=adventure,scores={airTime=..1,hitstun=..0},dx=15,dy=1,dz=15] positioned ~7.5 ~1 ~7.5 positioned ~-5.5 ~-1 ~-5.5 unless entity @s[dx=11,dy=1,dz=11] positioned ~5.5 ~1 ~5.5 run function phan:game/1/objects/enemy/shulker_hit
execute if entity @s[tag=shulkerCycled,scores={editArg1=21}] positioned ~-8.5 ~-1 ~-8.5 as @a[tag=playing,gamemode=adventure,scores={airTime=..1,hitstun=..0},dx=17,dy=1,dz=17] positioned ~8.5 ~1 ~8.5 positioned ~-6.5 ~-1 ~-6.5 unless entity @s[dx=13,dy=1,dz=13] positioned ~6.5 ~1 ~6.5 run function phan:game/1/objects/enemy/shulker_hit
tag @s remove enemyAttacker

#keep rings alive
execute on passengers if entity @s[type=item_display] run scoreboard players set @s lifespan 3