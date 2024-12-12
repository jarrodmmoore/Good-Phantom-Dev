#generic data
execute store result score @s editNode run data get entity @s data.NodeData[0] 1
execute store result score @s editLoadArea run data get entity @s data.NodeData[1] 1
execute store result score @s editArea run data get entity @s data.NodeData[2] 1
execute store result score @s editYaw run data get entity @s data.NodeData[3] 1
execute store result score @s editPitch run data get entity @s data.NodeData[4] 1
execute store result score @s editArg1 run data get entity @s data.NodeData[5] 1
execute store result score @s editArg2 run data get entity @s data.NodeData[6] 1
execute store result score @s editArg3 run data get entity @s data.NodeData[7] 1

#trigger volumes
execute if data entity @s data.TriggerVolume run function phan:editor/restore_using_nbt/node_trigger_volume

#checkpoint visualization
execute if data entity @s data.VisualLine run function phan:editor/restore_using_nbt/node_visual_line