#array of 8 ints
data modify entity @s data.NodeData set value [0,0,0,0,0,0,0,0]

execute store result entity @s data.NodeData[0] int 1 run scoreboard players get @s editNode
execute store result entity @s data.NodeData[1] int 1 run scoreboard players get @s editLoadArea
execute store result entity @s data.NodeData[2] int 1 run scoreboard players get @s editArea
execute store result entity @s data.NodeData[3] int 1 run scoreboard players get @s editYaw
execute store result entity @s data.NodeData[4] int 1 run scoreboard players get @s editPitch
execute store result entity @s data.NodeData[5] int 1 run scoreboard players get @s editArg1
execute store result entity @s data.NodeData[6] int 1 run scoreboard players get @s editArg2
execute store result entity @s data.NodeData[7] int 1 run scoreboard players get @s editArg3

#save additional data for special node types
#trigger volumes
execute if score @s editNode matches 18 run function phan:editor/save_nbt/node_trigger_volume
execute if score @s editNode matches 20..22 run function phan:editor/save_nbt/node_trigger_volume
#visual line for checkpoints
execute if entity @s[scores={editNode=18,visualLength=1..}] run function phan:editor/save_nbt/node_checkpoint_visual_line

#clear any unused data
execute unless score @s editNode matches 18 unless score @s editNode matches 20..22 if data entity @s data.TriggerVolume run data remove entity @s data.TriggerVolume
execute unless entity @s[scores={editNode=18,visualLength=1..}] if data entity @s data.VisualLine run data remove entity @s data.VisualLine