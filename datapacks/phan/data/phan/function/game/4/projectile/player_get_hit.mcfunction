#player got hit!
scoreboard players set @s hurtfulTime 2
scoreboard players operation @s attackerID = #projID value
scoreboard players set @s attackTime 100

execute if score #projDamage value matches 1 run damage @s 2 mob_attack by @e[limit=1,tag=projSelf] from @e[limit=1,tag=projSelf]
execute if score #projDamage value matches 2 run damage @s 4 mob_attack by @e[limit=1,tag=projSelf] from @e[limit=1,tag=projSelf]
execute if score #projDamage value matches 3 run damage @s 6 mob_attack by @e[limit=1,tag=projSelf] from @e[limit=1,tag=projSelf]
execute if score #projDamage value matches 4.. run damage @s 8 mob_attack by @e[limit=1,tag=projSelf] from @e[limit=1,tag=projSelf]

scoreboard players set #hit value 1