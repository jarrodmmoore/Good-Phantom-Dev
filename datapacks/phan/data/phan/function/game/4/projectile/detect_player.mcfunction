#executed roughly at the feet of the projectile armor stand
tag @s add projSelf
execute positioned ~-.5 ~-.5 ~-.5 as @a[tag=playing,gamemode=adventure,dx=1,dy=3,dz=1] unless score @s playerID = #projID value run function phan:game/4/projectile/player_get_hit
tag @s remove projSelf