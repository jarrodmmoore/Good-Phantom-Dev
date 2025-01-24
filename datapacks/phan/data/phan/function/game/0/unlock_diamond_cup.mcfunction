scoreboard players set #unlockedCupDiamond value 1
tellraw @a[tag=doneWithIntro] ["",{"text":"\n"},{"translate":"gp.misc.brackets","color":"#00AAFF","with":[{"translate":"gp.message.phantom_racer"}]},{"text":" "},{"translate":"gp.message.diamond_cup_unlocked","color":"yellow"},{"text":"\n"}]
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000
