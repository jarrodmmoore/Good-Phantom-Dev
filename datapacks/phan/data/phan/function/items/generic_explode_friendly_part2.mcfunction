#give attack credit
tag @s add self
#note the @e here. this can also hit baddies!
scoreboard players operation @e[tag=tntCanHit,distance=..5,tag=!self] attackerID = @s playerID
scoreboard players set @a[tag=tntCanHit,distance=..5,tag=!self] attackTime 100
scoreboard players set @a[tag=tntCanHit,distance=..5,tag=!self,tag=!baddy] hitstun 2
scoreboard players set @a[tag=tntCanHit,distance=..5,tag=!self,tag=!explosionOwner] hurtfulTime 5
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=tntCanHit,tag=ai,type=zombie,distance=..5,tag=!self] attackTime 100
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=tntCanHit,tag=ai,type=zombie,distance=..5,tag=!self,tag=!baddy] hitstun 2
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=tntCanHit,tag=ai,type=zombie,distance=..5,tag=!self,tag=!explosionOwner] hurtfulTime 5
#instant kill on baddies
tag @e[tag=tntCanHit,distance=..5,tag=!self,tag=baddy] add ohKO
#advancement credit for reflecting something
execute if entity @s[tag=reflectedProjectile] run scoreboard players operation #getID3 value = @s originalID
execute if entity @s[tag=reflectedProjectile] as @a[tag=tntCanHit,distance=..5,tag=!self] run function phan:items/generic_explode_friendly_reflect_advancement
execute if entity @s[tag=reflectedProjectile] as @e[tag=tntCanHit,tag=ai,type=zombie,distance=..5,tag=!self] run function phan:items/generic_explode_friendly_reflect_advancement
#tag clean-up
tag @s remove self