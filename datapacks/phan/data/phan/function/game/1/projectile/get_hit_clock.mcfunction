#die
scoreboard players set @s lifespan 1

#projectile owner gets da points
execute if entity @s[tag=redClock] as @a[tag=projectileOwner] run function phan:game/1/player/get_timer
execute if entity @s[tag=goldClock] as @a[tag=projectileOwner] run function phan:game/1/player/get_timer_golden

#can't be shot again
tag @s remove shootable