scoreboard players set #timeAttackUnlocked value 1
tellraw @a[tag=doneWithIntro] ["",{"text":"\n"},{"translate":"gp.message.time_attack_mode_unlocked","color":"yellow"},{"text":"\n"}]
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000

#get root for time attack advancement category
advancement grant @a only phan:time_attack/root