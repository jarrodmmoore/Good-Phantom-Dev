#cooldown
scoreboard players set @s inputCooldown 20

#admin required and we're not admin? kick out
execute if score #requireAdmin value matches 1.. if entity @s[tag=!admin] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft: block.note_block.bass",targets:"@s",pitch:"1.8"}
execute if score #requireAdmin value matches 1.. if entity @s[tag=!admin] run return run tellraw @s ["",{translate:"gp.misc.admin_player",with:[{selector:"@a[tag=admin]",color:"aqua"}],color:"red"}]
#=====

#do it
execute as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:custom_sfx/pickup1",targets:"@s",pitch:".7"}
scoreboard players set #gameTime value 35