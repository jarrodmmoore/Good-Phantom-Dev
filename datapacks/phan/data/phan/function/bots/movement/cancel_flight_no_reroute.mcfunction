#close wings
data merge entity @s {FallFlying:0b}

#update pose
data modify entity @s pose set value standing

#clear elytra and get it back in a second
item replace entity @s armor.chest with air

#not flying anymore
scoreboard players set @s fallFlying 0
scoreboard players set @s botExplosionBoostTime 0
tag @s[tag=botFlightPanic] remove botFlightPanic