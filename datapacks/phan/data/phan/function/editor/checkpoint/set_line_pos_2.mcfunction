tag @s add self_f

#all selected cps run this on their own because they might have different pos1's
execute as @e[tag=selected,tag=checkpoint] at @s run function phan:editor/checkpoint/set_line_pos_2_cp

tag @a[tag=self_f] remove self_f

#feedback
execute store result score #checkMinX value run data get entity @s Pos[0] 1
execute store result score #checkMinY value run data get entity @s Pos[1] 1
execute store result score #checkMinZ value run data get entity @s Pos[2] 1

function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
tellraw @s ["",{text:" > Pos 2 set to x="},{score:{name:"#checkMinX",objective:"value"}},{text:", y="},{score:{name:"#checkMinY",objective:"value"}},{text:", z="},{score:{name:"#checkMinZ",objective:"value"}}]

scoreboard players set @s editVisualTimer 0