#do nothing in act 4
execute if score #vAct value matches 4.. run return 0
#=====

#water bounces players!
execute as @a[tag=doneWithIntro,gamemode=adventure] at @s if block ~ ~-0.9 ~ blue_stained_glass unless score @s autoJumpPadCooldown matches 11.. run function phan:levels/phantom_forest/water_bounce
#and bots
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie,scores={onGround=1..}] unless function phan:bots/movement/check_for_vehicle at @s if block ~ ~-0.9 ~ blue_stained_glass run function phan:levels/phantom_forest/water_bounce_bot
