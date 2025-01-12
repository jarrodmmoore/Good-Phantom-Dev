#clear any old stuff

#console
execute positioned 243 -8 117 positioned ~.5 ~ ~ run summon item_display ~ ~ ~ {Tags:["lobbyProp","gameConsole"],Rotation:[90.0f,0.0f],item_display:"head",item:{id:"stone",components:{"item_model":"gp/object/console_base"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f]}}

#controller will auto-summon

#armor stand for holding controlling players in place
function phan:phantom_racer/summon_player_holder

#boot the tv
function phan:phantom_racer/_boot_tv