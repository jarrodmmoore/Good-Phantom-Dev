#get get get get
scoreboard players operation @s attackerID = #attackerID value
scoreboard players set @s attackTime 100
scoreboard players set @s hurtfulTime 3
execute unless score @s shieldTime matches 1.. run scoreboard players set @s moveVelocity 0
scoreboard players set @s[scores={shieldTime=3..}] shieldTime 2
damage @s 6 mob_attack by @e[limit=1,tag=anvilEnt,type=armor_stand] from @e[limit=1,tag=anvilEnt,type=armor_stand]
#got got got got
effect give @s slowness 2 2