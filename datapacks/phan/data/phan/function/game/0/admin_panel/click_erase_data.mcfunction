#do it for real??
execute if score @s enderChestMenu matches 1 as @a at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:custom_sfx/explode1",targets:"@s",pitch:"1"}
execute if score @s enderChestMenu matches 1 run schedule function phan:game/0/admin_panel/erase_data_for_real 30t
execute if score @s enderChestMenu matches 1 run tellraw @a ["",{text:"\n"},{translate:"gp.admin.save_data_erased",color:"red"},{text:"\n"}]

#warn player
execute if score @s enderChestMenu matches ..0 run playsound minecraft:entity.ghast.hurt master @s ~ ~ ~ 1 1
execute if score @s enderChestMenu matches ..0 run scoreboard players set @s enderChestMenu 1