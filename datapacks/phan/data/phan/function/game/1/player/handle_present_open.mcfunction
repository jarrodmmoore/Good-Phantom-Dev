#findID is still in memory so let's use it again
execute as @e[tag=claimedPresent,type=item_display] if score @s playerID = #findID value at @s run function phan:game/1/player/handle_present_entity_open

#get item depending on what the chest had inside it
execute if score #returnItem value matches 1 run give @s minecraft:yellow_wool[custom_name={translate:"gp.game.stardust",color:"yellow",italic:false},item_model="gp/object/stardust"] 15
execute if score #returnItem value matches 2 run function phan:items/give/firework_rocket {count:1}
execute if score #returnItem value matches 3 run function phan:items/give/ender_pearl {count:1}
execute if score #returnItem value matches 4 run function phan:items/give/super_jump {count:1}
execute if score #returnItem value matches 5 run function phan:items/give/energy_potion {count:1}
execute if score #returnItem value matches 6 run function phan:items/give/swiftness_potion {count:1}
execute if score #returnItem value matches 7 run function phan:items/give/throwable_tnt {count:1}
#triple red
execute if score #returnItem value matches 8 run function phan:items/give/red_rocket {count:3}

#tell us what we got! it's kinda hard to notice it appear in the hotbar.
execute if score #returnItem value matches 1 run tellraw @s ["",{translate:"gp.game.present_opened",with:[{translate:"gp.game.15_stardust",color:"yellow",bold:true}]}]
execute if score #returnItem value matches 2 run tellraw @s ["",{translate:"gp.game.present_opened",with:[{translate:"gp.item.firework_rocket",color:"aqua",bold:true}]}]
execute if score #returnItem value matches 3 run tellraw @s ["",{translate:"gp.game.present_opened",with:[{translate:"gp.item.ender_pearl",color:"aqua",bold:true}]}]
execute if score #returnItem value matches 4 run tellraw @s ["",{translate:"gp.game.present_opened",with:[{translate:"gp.item.super_jump",color:"aqua",bold:true}]}]
execute if score #returnItem value matches 5 run tellraw @s ["",{translate:"gp.game.present_opened",with:[{translate:"gp.item.energy_potion",color:"aqua",bold:true}]}]
execute if score #returnItem value matches 6 run tellraw @s ["",{translate:"gp.game.present_opened",with:[{translate:"gp.item.swiftness_potion",color:"aqua",bold:true}]}]
execute if score #returnItem value matches 7 run tellraw @s ["",{translate:"gp.game.present_opened",with:[{translate:"gp.item.throwable_tnt",color:"red",bold:true}]}]
execute if score #returnItem value matches 8 run tellraw @s ["",{translate:"gp.game.present_opened",with:[{translate:"gp.item.red_rocket",color:"red",bold:true}]}]

#happy sound effect
tag @s add self
function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@s",pitch:"1.2"}
execute as @a[tag=tellMe,tag=!self] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:entity.player.levelup",targets:"@s",pitch:"1.2"}
playsound minecraft:entity.player.levelup master @a[tag=!self] ~ ~ ~ 2 1.2
execute at @s positioned ~ ~1.8 ~ positioned ^ ^ ^2 run particle instant_effect ~ ~.5 ~ 0.2 0.2 0.2 1 10 force @s
tag @s remove self

#done
scoreboard players set @s presentTime 0
scoreboard players set @s presentGoal -1