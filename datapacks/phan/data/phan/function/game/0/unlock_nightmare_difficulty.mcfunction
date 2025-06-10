scoreboard players set #unlockedNightmare value 1
tellraw @a[tag=doneWithIntro] ["",{text:"\n"},{translate:"gp.misc.brackets",color:"#00AAFF",with:[{translate:"gp.message.phantom_racer"}]},{text:" "},{translate:"gp.message.nightmare_difficulty_unlocked",color:"yellow"},{text:"\n"}]
execute as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@s",pitch:"1"}

