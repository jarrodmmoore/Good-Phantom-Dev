#give attack credit
tag @s add self
#note the @e here. this can also hit baddies!
scoreboard players operation @e[tag=tntCanHit,distance=..5,tag=!self] attackerID = @s playerID
scoreboard players set @a[tag=tntCanHit,distance=..5,tag=!self] attackTime 100
scoreboard players set @a[tag=tntCanHit,distance=..5,tag=!self] hurtfulTime 2
#instant kill on baddies
#tag @e[tag=tntCanHit,distance=..5,tag=!self,tag=baddy] add ohKO
#tag clean-up
tag @s remove self