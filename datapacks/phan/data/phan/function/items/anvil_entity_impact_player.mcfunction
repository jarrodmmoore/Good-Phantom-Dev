#get get get get
scoreboard players operation @s attackerID = #attackerID value
scoreboard players set @s attackTime 100
scoreboard players set @s hurtfulTime 3
execute unless score @s shieldTime matches 1.. run scoreboard players set @s moveVelocity 0
scoreboard players set @s[scores={shieldTime=3..}] shieldTime 2
damage @s 6 mob_attack by @e[limit=1,tag=anvilEnt,type=armor_stand,distance=..5] from @e[limit=1,tag=anvilEnt,type=armor_stand,distance=..5]
#got got got got
effect give @s slowness 2 2
scoreboard players set @s[tag=ai] botEffectSlowness 40

#did we shield? get advancement
execute if entity @s[type=player,scores={shieldTime=1..}] run advancement grant @s only phan:portal_race/not_today_thank_you