#pastel palace is always unlocked
#fill 203 -1 127 206 -1 130 purple_carpet replace structure_void
#fill 204 -2 130 205 -2 130 purple_wool
#fill 204 -1 130 205 0 130 air replace barrier

#pastel palace unlocks moonlit mtns
#closed
execute if score #dream1Completed value matches 0 run fill 203 -1 107 206 -1 109 structure_void replace green_carpet
execute if score #dream1Completed value matches 0 run fill 204 -2 106 205 -2 106 dark_oak_planks replace green_wool
execute if score #dream1Completed value matches 0 run fill 204 -1 106 205 0 106 barrier replace air
execute if score #dream2Opened value matches 0 positioned 204 -1 106 positioned ~.5 ~1.1 ~-.4 run summon item_display ~ ~ ~ {Tags:["lobbyProp","dream2lock"],item_display:"head",item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111126}}}
#open
execute if score #dream1Completed value matches 1 run fill 203 -1 107 206 -1 109 green_carpet replace structure_void
execute if score #dream1Completed value matches 1 run fill 204 -2 106 205 -2 106 green_wool replace dark_oak_planks
execute if score #dream1Completed value matches 1 run fill 204 -1 106 205 0 106 air replace barrier

#moonlit mtns unlocks neon nightway (was originally gonna have this level unlock after pastel, but it proved too difficult a level for so early in the game)
#closed
execute if score #dream2Completed value matches 0 run fill 200 -7 127 203 -7 129 structure_void replace yellow_carpet
execute if score #dream2Completed value matches 0 run fill 201 -8 130 202 -8 130 spruce_planks replace yellow_wool
execute if score #dream2Completed value matches 0 run fill 201 -7 130 202 -6 130 barrier replace air
execute if score #dream4Opened value matches 0 positioned 201 -7 130 positioned ~.5 ~1.1 ~.4 run summon item_display ~ ~ ~ {Tags:["lobbyProp","dream4lock"],item_display:"head",item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111144}}}
execute as @e[type=item_display,tag=dream4lock] at @s run tp @s ~ ~ ~ 180 0
#open
execute if score #dream2Completed value matches 1 run fill 200 -7 127 203 -7 129 yellow_carpet replace structure_void
execute if score #dream2Completed value matches 1 run fill 201 -8 130 202 -8 130 yellow_wool replace spruce_planks
execute if score #dream2Completed value matches 1 run fill 201 -7 130 202 -6 130 air replace barrier
#fix stairs
clone 197 -9 128 197 -9 128 200 -6 130
clone 198 -9 128 198 -9 128 203 -6 130

#moonlit mountains unlocks deep dive
#closed
execute if score #dream2Completed value matches 0 run fill 200 -7 107 203 -7 109 structure_void replace cyan_carpet
execute if score #dream2Completed value matches 0 run fill 201 -8 106 202 -8 106 spruce_planks replace cyan_wool
execute if score #dream2Completed value matches 0 run fill 201 -7 106 202 -6 106 barrier replace air
execute if score #dream5Opened value matches 0 positioned 201 -7 106 positioned ~.5 ~1.1 ~-.4 run summon item_display ~ ~ ~ {Tags:["lobbyProp","dream5lock"],item_display:"head",item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111144}}}
#open
execute if score #dream2Completed value matches 1 run fill 200 -7 107 203 -7 109 cyan_carpet replace structure_void
execute if score #dream2Completed value matches 1 run fill 201 -8 106 202 -8 106 cyan_wool replace spruce_planks
execute if score #dream2Completed value matches 1 run fill 201 -7 106 202 -6 106 air replace barrier
#fix stairs
clone 197 -9 108 197 -9 108 200 -6 106
clone 198 -9 108 198 -9 108 203 -6 106

#neon nightway AND deep dive unlock shattered city
scoreboard players set #dream3Unlocked value 0
execute if score #dream4Completed value matches 1 if score #dream5Completed value matches 1 run scoreboard players set #dream3Unlocked value 1
#closed
execute if score #dream3Unlocked value matches 0 run fill 211 -1 116 213 -1 120 structure_void replace red_carpet
execute if score #dream3Unlocked value matches 0 run fill 214 -2 117 214 -2 119 dark_oak_planks replace red_wool
execute if score #dream3Unlocked value matches 0 run fill 214 -1 117 214 2 119 barrier replace air
execute if score #dream3OpenedB value matches 0 positioned 214 -1 118 positioned ~.4 ~1.1 ~-.6 run summon item_display ~ ~ ~ {Tags:["lobbyProp","dream3lockB"],item_display:"head",item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111146}}}
execute as @e[type=item_display,tag=dream3lockB] at @s run tp @s ~ ~ ~ 90 0
execute if score #dream3OpenedA value matches 0 positioned 214 -1 118 positioned ~.4 ~1.1 ~.6 run summon item_display ~ ~ ~ {Tags:["lobbyProp","dream3lockA"],item_display:"head",item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111145}}}
execute as @e[type=item_display,tag=dream3lockA] at @s run tp @s ~ ~ ~ 90 0
#open
execute if score #dream3Unlocked value matches 1 run fill 211 -1 116 213 -1 120 red_carpet replace structure_void
execute if score #dream3Unlocked value matches 1 run fill 214 -2 117 214 -2 119 red_wool replace dark_oak_planks
execute if score #dream3Unlocked value matches 1 run fill 214 -1 117 214 2 119 air replace barrier
