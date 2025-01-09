#act 1
execute if score #vAct value matches 1 run function phan:levels/neon_nightway/versus_act_1_loop

#act 2
execute if score #vAct value matches 2 run function phan:levels/neon_nightway/versus_act_2_loop

#act 2
execute if score #vAct value matches 3 run function phan:levels/neon_nightway/versus_act_3_loop

#touching the purple floor causes respawn
execute as @a[tag=playing,gamemode=adventure] at @s if block ~ ~-.1 ~ purple_stained_glass run function phan:game/4/race/respawn
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] at @s if block ~ ~-.1 ~ purple_stained_glass run tag @s add botRespawn
