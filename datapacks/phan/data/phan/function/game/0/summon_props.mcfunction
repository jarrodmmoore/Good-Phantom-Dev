#summon temporary props

#while we're here: update lighting
function phan:game/0/lighting/update

#replace the ender chest to fix an animation bug?
setblock 209 -7 118 air
setblock 209 -7 118 minecraft:ender_chest[facing=east]

#clean up old stuff first
kill @e[tag=lobbyProp]

#books should be on page 0
data merge block 204 -7 113 {Page:0}
data merge block 204 -7 123 {Page:0}

#leaderboard texts
function phan:high_score/display_start

#leaderboard switch (only shows up if a leaderboard is showing somewhere)
execute if score #scoresRecorded value matches 1.. unless block 194 -8 125 redstone_wire run setblock 194 -8 125 redstone_wire
execute if score #scoresRecorded value matches 1.. unless block 194 -7 125 redstone_lamp run setblock 194 -7 125 redstone_lamp
execute if score #scoresRecorded value matches 1.. unless block 194 -6 125 lever run setblock 194 -6 125 lever[face=floor,facing=west]
tag @e[tag=rotateText,type=text_display] remove rotateText
execute if score #scoresRecorded value matches 0 run setblock 194 -8 125 spruce_planks
execute if score #scoresRecorded value matches 0 run fill 194 -7 125 194 -6 125 air

#trophies
function phan:game/0/summon_trophies

#practice area text
summon text_display 192 -4 118 {Tags:["lobbyProp","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'{"translate":"gp.practice.practice_area","fallback":"Practice Area","color":"white"}'}
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~-.3 ~.6 ~ 270 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#assist mode
function phan:game/0/summon_assist_mode_display

#room progression
function phan:game/0/room_progression

#use stardust to guide players toward the first two rooms
execute if score #lobbyTrailGuide value matches 1 if score #dream1Completed value matches 1.. run scoreboard players set #lobbyTrailGuide value 2
execute if score #lobbyTrailGuide value matches 2 if score #dream2Completed value matches 1.. run scoreboard players set #lobbyTrailGuide value 3
execute if score #lobbyTrailGuide value matches 1 unless score #lastLevelPlayed value matches 1 run function phan:game/0/summon_stardust_trail_1
execute if score #lobbyTrailGuide value matches 2 run function phan:game/0/summon_stardust_trail_2

#credits and intro floating text
summon area_effect_cloud 204 -6 113 {Tags:["lobbyProp"],Invulnerable:1b,NoGravity:1b,Duration:2147483647,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.lobby.intro","bold":true,"italic":false,"color":"white"}]'}
summon area_effect_cloud 204 -6 123 {Tags:["lobbyProp"],Invulnerable:1b,NoGravity:1b,Duration:2147483647,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.lobby.credits","bold":true,"italic":false,"color":"white"}]'}

#interaction entities to prevent players from messing with stuff they shouldn't
function phan:game/0/summon_interactions

#ROOM 1
#alarm clock
execute positioned 203 -1 139 positioned ~ ~-.3 ~ run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Marker:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[-10.0f,195.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/alarm_clock"}}]}
#player
execute positioned 204 -2 138 positioned ~.5 ~-.2 ~.75 run function phan:level_manager/load/spawn_sleeping_player {level_uid:1,head_rotation:'[0.0f,0.0f,0.0f]'}
#locket
execute positioned 208 -1 139 positioned ~ ~-.3 ~ run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,170.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/heart_locket"}}]}
#painting on easel
execute positioned 201 -1 136 positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,80.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/painting"}}]}
#title
execute if score #dream1Completed value matches 1.. positioned 204 4 139 run function phan:level_manager/load/spawn_name_display {level_uid:1,rotation:180,offset_x:'.5',offset_y:'.0',offset_z:'.4'}

#ROOM 2
#alarm clock
execute positioned 206 -1 97 positioned ~ ~-.3 ~ run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Marker:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[-10.0f,-13.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/alarm_clock"}}]}
#player
execute positioned 204 -2 97 positioned ~.5 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:2,head_rotation:'[0.0f,180.0f,0.0f]'}
#laptop
execute positioned 209 -1 102 positioned ~ ~-.3 ~ run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,-80.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/laptop"}}]}
#command blocks
execute positioned 199 0 100 positioned ~.3 ~-.7 ~-.15 run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:command_block",count:1}]}
execute positioned 199 0 100 positioned ~.32 ~-.7 ~.3 run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,180.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:chain_command_block",count:1}]}
execute positioned 199 0 100 positioned ~.3 ~-.25 ~.1 run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,45.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:repeating_command_block",count:1}]}
#title
execute if score #dream2Completed value matches 1.. positioned 204 4 97 run function phan:level_manager/load/spawn_name_display {level_uid:2,rotation:0,offset_x:'.5',offset_y:'.0',offset_z:'-.4'}

#ROOM 3
#alarm clock
execute positioned 223 -1 116 positioned ~ ~-.3 ~ run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Marker:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,75.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/alarm_clock"}}]}
#player
execute positioned 222 -2 118 positioned ~.75 ~-.2 ~ run function phan:level_manager/load/spawn_sleeping_player {level_uid:3,head_rotation:'[0.0f,-90.0f,0.0f]'}
#blueprint
execute positioned 216 -1 114 positioned ~ ~-.3 ~.5 run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[0.0f,90.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/blueprint"}}]}
#title
execute if score #dream3Completed value matches 1.. positioned 223 4 118 run function phan:level_manager/load/spawn_name_display {level_uid:3,rotation:90,offset_x:'.4',offset_y:'.0',offset_z:'0'}

#ROOM 4
#alarm clock
execute positioned 203 -7 139 positioned ~ ~-.3 ~ run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Marker:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[-10.0f,195.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/alarm_clock"}}]}
#player
execute positioned 204 -8 138 positioned ~.5 ~-.2 ~.75 run function phan:level_manager/load/spawn_sleeping_player {level_uid:4,head_rotation:'[0.0f,0.0f,0.0f]'}
#kick drum
execute positioned 207 -7 137 run summon block_display ~ ~ ~-.5 {Tags:["lobbyProp"],block_state:{Name:"minecraft:netherite_block"}}
#title
execute if score #dream4Completed value matches 1.. positioned 204 -3 139 run function phan:level_manager/load/spawn_name_display {level_uid:4,rotation:180,offset_x:'.5',offset_y:'.25',offset_z:'.4'}

#ROOM 5
#alarm clock
execute positioned 206 -7 97 positioned ~ ~-.3 ~ run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Marker:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[-10.0f,20.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/alarm_clock"}}]}
#player
execute positioned 204 -8 97 positioned ~.5 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:5,head_rotation:'[0.0f,180.0f,0.0f]'}
#title
execute if score #dream5Completed value matches 1.. positioned 204 -3 97 run function phan:level_manager/load/spawn_name_display {level_uid:5,rotation:0,offset_x:'.5',offset_y:'.25',offset_z:'-.4'}

#DEN
#bonus dreams text
execute if score #dream3Completed value matches 1.. run summon text_display 236 -7 104 {Tags:["lobbyProp","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'{"translate":"gp.lobby.bonus_dreams","fallback":"Bonus Dreams","color":"white"}'}
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~.5 ~.8 ~-.4 ~ ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#custom dreams text
execute if score #dream3Completed value matches 1.. run summon text_display 236 -7 132 {Tags:["lobbyProp","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'{"translate":"gp.lobby.custom_dreams","fallback":"Custom Dreams","color":"white"}'}
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~.5 ~.8 ~.4 ~180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#tv
execute positioned 246 -6 118 run summon item_display ~ ~ ~ {Tags:["lobbyProp"],Rotation:[90.0f,0.0f],item:{id:"stone",components:{"item_model":"gp/object/big_tv"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[4.0f,4.0f,4.0f]}}
#console, controller, tv screen
function phan:phantom_racer/summon_console_and_controller

#CUSTOM ROOM 1
#player
execute positioned 248 -10 140 positioned ~.75 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:1001,head_rotation:'[0.0f,270.0f,0.0f]'}
#title
execute positioned 249 -4 140 run function phan:level_manager/load/spawn_name_display {level_uid:1001,rotation:90,offset_x:'.4',offset_y:'.25',offset_z:'.5'}

#CUSTOM ROOM 2
#player
execute positioned 248 -10 153 positioned ~.75 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:1002,head_rotation:'[0.0f,270.0f,0.0f]'}
#title
execute positioned 249 -4 153 run function phan:level_manager/load/spawn_name_display {level_uid:1002,rotation:90,offset_x:'.4',offset_y:'.25',offset_z:'.5'}

#CUSTOM ROOM 3
#player
execute positioned 248 -10 166 positioned ~.75 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:1003,head_rotation:'[0.0f,270.0f,0.0f]'}
#title
execute positioned 249 -4 166 run function phan:level_manager/load/spawn_name_display {level_uid:1003,rotation:90,offset_x:'.4',offset_y:'.25',offset_z:'.5'}

#CUSTOM ROOM 4
#player
execute positioned 248 -10 179 positioned ~.75 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:1004,head_rotation:'[0.0f,270.0f,0.0f]'}
#title
execute positioned 249 -4 179 run function phan:level_manager/load/spawn_name_display {level_uid:1004,rotation:90,offset_x:'.4',offset_y:'.25',offset_z:'.5'}

#CUSTOM ROOM 5
#player
execute positioned 224 -10 140 positioned ~.25 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:1005,head_rotation:'[0.0f,90.0f,0.0f]'}
#title
execute positioned 224 -4 140 run function phan:level_manager/load/spawn_name_display {level_uid:1005,rotation:270,offset_x:'-.4',offset_y:'.25',offset_z:'.5'}

#CUSTOM ROOM 6
#player
execute positioned 224 -10 153 positioned ~.25 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:1006,head_rotation:'[0.0f,90.0f,0.0f]'}
#title
execute positioned 224 -4 153 run function phan:level_manager/load/spawn_name_display {level_uid:1006,rotation:270,offset_x:'-.4',offset_y:'.25',offset_z:'.5'}

#CUSTOM ROOM 7
#player
execute positioned 224 -10 166 positioned ~.25 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:1007,head_rotation:'[0.0f,90.0f,0.0f]'}
#title
execute positioned 224 -4 166 run function phan:level_manager/load/spawn_name_display {level_uid:1007,rotation:270,offset_x:'-.4',offset_y:'.25',offset_z:'.5'}

#CUSTOM ROOM 8
#player
execute positioned 224 -10 179 positioned ~.25 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:1008,head_rotation:'[0.0f,90.0f,0.0f]'}
#title
execute positioned 224 -4 179 run function phan:level_manager/load/spawn_name_display {level_uid:1008,rotation:270,offset_x:'-.4',offset_y:'.25',offset_z:'.5'}

#BONUS ROOM 1
#alarm clock
execute positioned 224 -9 94 positioned ~ ~-.3 ~ run summon armor_stand ~ ~ ~ {Tags:["lobbyProp"],Marker:1b,Silent:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,Pose:{Head:[-10.0f,-20.0f,0.0f]},ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/alarm_clock"}}]}
#player
execute positioned 224 -10 95 positioned ~.25 ~-.2 ~.5 run function phan:level_manager/load/spawn_sleeping_player {level_uid:6,head_rotation:'[0.0f,90.0f,0.0f]'}
#title
execute positioned 224 -4 95 run function phan:level_manager/load/spawn_name_display {level_uid:6,rotation:270,offset_x:'-.4',offset_y:'.25',offset_z:'.5'}
