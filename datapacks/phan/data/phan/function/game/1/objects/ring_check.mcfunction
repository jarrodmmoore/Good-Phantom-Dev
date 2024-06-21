tag @a[limit=1,sort=nearest,tag=playing] add catcher
#execute at @a[limit=1,tag=catcher] positioned ~ ~1 ~ run tp @s ~ ~ ~
execute if entity @s[tag=!ringBoost] as @a[limit=1,tag=catcher] run function phan:game/1/player/score_ring
execute if entity @s[tag=ringBoost] as @a[limit=1,tag=catcher] run function phan:game/1/player/score_ring_blue
execute if entity @s[tag=ringBoost] as @a[limit=1,tag=catcher] run function phan:game/1/player/ring_boost
tag @a[tag=catcher] remove catcher

#now BEGONE
data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.0f,0.0f,0.0f]}}
scoreboard players set @s lifespan 12
tag @s remove ring