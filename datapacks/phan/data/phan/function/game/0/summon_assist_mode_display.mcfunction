#clear old stuff
kill @e[tag=assistModeDisplay,tag=lobbyProp]
clear @a *[custom_data~{assistMenu:1b}]

#is assist mode on or off?
function phan:game/0/assist_mode/check_if_assists_enabled

#summon text to indicate whether assist mode is on or off
execute if score #assist_enabled value matches 0 run summon text_display 194 -10 111 {Tags:["lobbyProp","assistModeDisplay","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:{translate:"gp.assist.assist_mode_state","fallback":"Assist Mode: Off",with:[{translate:"gp.misc.off",color:"gray"}],color:"white"}}
execute if score #assist_enabled value matches 1 run summon text_display 194 -10 111 {Tags:["lobbyProp","assistModeDisplay","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:{translate:"gp.assist.assist_mode_state","fallback":"Assist Mode: On",with:[{translate:"gp.misc.on",color:"#DD33FF"}],color:"white"}}
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~5 ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#summon the heart
execute if score #assist_enabled value matches 0 positioned 194 -6 111 run summon item_display ~ ~.5 ~ {Tags:["lobbyProp","assistModeDisplay"],item:{id:"minecraft:cooked_beef",count:1b},billboard:"vertical",brightness:{block:15,sky:10},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}}
execute if score #assist_enabled value matches 1 positioned 194 -6 111 run summon item_display ~ ~.5 ~ {Tags:["lobbyProp","assistModeDisplay"],item:{id:"minecraft:beef",count:1b},billboard:"vertical",brightness:{block:15,sky:10},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]}}