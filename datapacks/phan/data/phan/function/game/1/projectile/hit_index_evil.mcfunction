#hit entity?
execute as @a[tag=playing,gamemode=adventure,distance=..2,scores={hitstun=..0}] run function phan:game/1/projectile/get_hit_evil

#die after hitting 1 enemy
execute if entity @a[tag=playing,gamemode=adventure,distance=..2] run function phan:game/1/projectile/hit_wall_evil