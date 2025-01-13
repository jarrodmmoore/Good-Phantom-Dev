#parameter
# #math = the uid of the dream we want to go to

#send players to the lobby
#the location we send to is based on the last level that was played

#fallback
execute unless score #math value matches 1..10 unless score #math value matches 1001..1008 in overworld as @a[tag=sendMe] positioned 198 -7 118 rotated -90 0 run function phan:common/varied_teleport
#stock dreams
execute if score #math value matches 1 in overworld as @a[tag=sendMe] positioned 206 -1 134 rotated 0 0 run function phan:common/varied_teleport
execute if score #math value matches 2 in overworld as @a[tag=sendMe] positioned 206 -1 102 rotated 180 0 run function phan:common/varied_teleport
execute if score #math value matches 3 in overworld as @a[tag=sendMe] positioned 218 -1 119 rotated 270 0 run function phan:common/varied_teleport
execute if score #math value matches 4 in overworld as @a[tag=sendMe] positioned 203 -7 134 rotated 0 0 run function phan:common/varied_teleport
execute if score #math value matches 5 in overworld as @a[tag=sendMe] positioned 203 -7 101 rotated 180 0 run function phan:common/varied_teleport
execute if score #math value matches 6..10 in overworld as @a[tag=sendMe] positioned 228 -9 97 rotated 90 0 run function phan:common/varied_teleport
#...
#...
#...
#...
#fallback
execute if score #math value matches 11..1000 in overworld as @a[tag=sendMe] positioned 198 -7 118 rotated -90 0 run function phan:common/varied_teleport
#custom dreams
execute if score #math value matches 1001 in overworld as @a[tag=sendMe] positioned 245 -8 140 rotated 270 0 run function phan:common/varied_teleport
execute if score #math value matches 1002 in overworld as @a[tag=sendMe] positioned 245 -8 153 rotated 270 0 run function phan:common/varied_teleport
execute if score #math value matches 1003 in overworld as @a[tag=sendMe] positioned 245 -8 166 rotated 270 0 run function phan:common/varied_teleport
execute if score #math value matches 1004 in overworld as @a[tag=sendMe] positioned 245 -8 179 rotated 270 0 run function phan:common/varied_teleport
execute if score #math value matches 1005 in overworld as @a[tag=sendMe] positioned 228 -8 141 rotated 90 0 run function phan:common/varied_teleport
execute if score #math value matches 1006 in overworld as @a[tag=sendMe] positioned 228 -8 154 rotated 90 0 run function phan:common/varied_teleport
execute if score #math value matches 1007 in overworld as @a[tag=sendMe] positioned 228 -8 167 rotated 90 0 run function phan:common/varied_teleport
execute if score #math value matches 1008 in overworld as @a[tag=sendMe] positioned 228 -8 180 rotated 90 0 run function phan:common/varied_teleport

#clean-up
tag @a[tag=sendMe] remove sendMe