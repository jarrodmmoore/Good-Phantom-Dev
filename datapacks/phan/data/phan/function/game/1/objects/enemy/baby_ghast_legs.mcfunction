#stay alive
scoreboard players set @s lifespan 3

#match rotation of body via /rotate
rotate @s ~ ~

#animation (using "editArg1" for variable)
scoreboard players remove @s editArg1 1
execute if score @s editArg1 matches ..0 run function phan:game/1/objects/enemy/baby_ghast_legs_animate