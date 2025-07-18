#=====

#low/high skill?
execute if entity @s[tag=eventBadSkill] run summon area_effect_cloud ~ ~.33 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"bad decision",color:"#BBBBBB"}]}
execute if entity @s[tag=eventHighSkill] run summon area_effect_cloud ~ ~.33 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"high skill",color:"#BBBBBB"}]}

#=====

#1 = force jump
execute if score @s AIBC_event matches 1 unless score @s AIBC_modifier matches ..-1 unless score @s AIBC_modifier matches 1.. run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"force jump",color:"green"}]}
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches ..-1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"force jump at next ledge",color:"green"}]}
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches 1.. run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"force jump (delayed)",color:"green"}]}

#2 = enter/cancel flight
execute if score @s AIBC_event matches 2 unless score @s AIBC_modifier matches 1..3 unless score @s AIBC_modifier matches -3..-1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"enter flight",color:"green"}]}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"enter flight (spam jump key)",color:"green"}]}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 2 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"enter flight at next ledge",color:"green"}]}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 3 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"cancel flight",color:"green"}]}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches -1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"enter flight, vault upwards",color:"green"}]}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches -2 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"enter flight, vault upwards, spam jump",color:"green"}]}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches -3 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"enter flight & vault upward at ledge",color:"green"}]}

#3 = force redirect
execute if score @s AIBC_event matches 3 store result storage phan:node_name player_count int 1 run scoreboard players get @s AIBC_modifier
execute if score @s AIBC_event matches 3 run function phan:editor/panel/ai_waypoint/visualize/force_redirect_macro with storage phan:node_name

#4 = take alt route
execute if score @s AIBC_event matches 4 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"take alternate route",color:"yellow","underlined":true}]}
#5 = portal finished? take alt route
execute if score @s AIBC_event matches 5 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"portal finished? take alt route",color:"yellow","underlined":true}]}
#6 = take alt route if behind
execute if score @s AIBC_event matches 6 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"take alt route if behind",color:"yellow","underlined":true}]}
#7 = take alt route if ahead
execute if score @s AIBC_event matches 7 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"take alt route if ahead",color:"yellow","underlined":true}]}
#8 = boost + take alt route
execute if score @s AIBC_event matches 8 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"boost + take alt route",color:"yellow","underlined":true}]}
#9 = use super jump + take alt route
execute if score @s AIBC_event matches 9 run summon item_display ~ ~ ~ {Tags:["setMe"],item_display:head,billboard:vertical,brightness:{sky:0,block:15},item:{id:"minecraft:prismarine_crystals",count:1b}}
#10 = throw ender pearl
execute if score @s AIBC_event matches 10 run summon item_display ~ ~ ~ {Tags:["setMe"],item_display:head,billboard:vertical,brightness:{sky:0,block:15},item:{id:"minecraft:ender_pearl",count:1b}}
#11 = use firework + take alt route
execute if score @s AIBC_event matches 11 run summon item_display ~ ~ ~ {Tags:["setMe"],item_display:head,billboard:vertical,brightness:{sky:0,block:15},item:{id:"minecraft:firework_rocket",count:1b}}
#12 = perform speed pad jump + take alt route
execute if score @s AIBC_event matches 12 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"perform speed pad jump + take alt route",color:"yellow","underlined":true}]}
#13 = set mine on alt route for shortcut
execute if score @s AIBC_event matches 13 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"set mine on alt route for shortcut",color:"yellow","underlined":true}]}
#14 = take alt route upon explosion boost
execute if score @s AIBC_event matches 14 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"take alt route upon explosion boost",color:"yellow","underlined":true}]}
#15 = rocket jump and take alt route
execute if score @s AIBC_event matches 15 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"rocket jump and take alt route",color:"yellow","underlined":true}]}
#16 = throw tnt and take alt route
execute if score @s AIBC_event matches 16 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"throw tnt and take alt route",color:"yellow","underlined":true}]}
#17 = shoot rocket and take alt route
execute if score @s AIBC_event matches 17 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"shoot rocket and take alt route",color:"yellow","underlined":true}]}
#18 = doing improvised flight? take alt route
execute if score @s AIBC_event matches 18 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"doing improvised flight? take alt route",color:"yellow","underlined":true}]}
#19 = have boost? take alt route
execute if score @s AIBC_event matches 19 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"have boost? take alt route",color:"yellow","underlined":true}]}
#20 = have super jump? take alt route
execute if score @s AIBC_event matches 20 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"have super jump? take alt route",color:"yellow","underlined":true}]}
#21 = have ender pearl? take alt route
execute if score @s AIBC_event matches 21 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"have ender pearl? take alt route",color:"yellow","underlined":true}]}
#22 = have firework? take alt route
execute if score @s AIBC_event matches 22 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"have firework? take alt route",color:"yellow","underlined":true}]}
#23 = have speed pad? take alt route
execute if score @s AIBC_event matches 23 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"have speed pad? take alt route",color:"yellow","underlined":true}]}
#24 = have rocket? take alt route
execute if score @s AIBC_event matches 24 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"have rocket? take alt route",color:"yellow","underlined":true}]}
#25 = have tnt? take alt route
execute if score @s AIBC_event matches 25 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"have tnt? take alt route",color:"yellow","underlined":true}]}
#26 = alt route not obstructed? take alt route
execute if score @s AIBC_event matches 26 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"alt route not obstructed? take alt route",color:"yellow","underlined":true}]}
#27 = use super jump or firework + take alt route (improv flight)
execute if score @s AIBC_event matches 27 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"use super jump or firework + take alt route (improv flight)",color:"yellow","underlined":true}]}
#28 = have mine? take alt route
execute if score @s AIBC_event matches 28 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"have mine? take alt route",color:"yellow","underlined":true}]}
#29 = take alt route if not occupied by baddie
execute if score @s AIBC_event matches 29 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"take alt route if not occupied by baddie",color:"yellow","underlined":true}]}
#30 = take alt route if before halfway done lap
execute if score @s AIBC_event matches 30 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"take alt route if before halfway done lap",color:"yellow","underlined":true}]}
#31 = take alt route if after halfway done lap
execute if score @s AIBC_event matches 31 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"take alt route if after halfway done lap",color:"yellow","underlined":true}]}
#32 = take alt route if before halfway done race
execute if score @s AIBC_event matches 32 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"take alt route if before halfway done race",color:"yellow","underlined":true}]}
#33 = take alt route if after halfway done race
execute if score @s AIBC_event matches 33 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"take alt route if after halfway done race",color:"yellow","underlined":true}]}

#=====
#-1 = enter/cancel improv flight
execute if score @s AIBC_event matches -1 unless score @s AIBC_modifier matches 1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"enter improv flight mode",color:"green"}]}
execute if score @s AIBC_event matches -1 if score @s AIBC_modifier matches 1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:41,CustomNameVisible:1b,CustomName:["",{text:"cancel improv flight mode",color:"green"}]}

#=====

#generic lifespan set for item displays
scoreboard players set @e[tag=setMe,type=item_display] lifespan 41
tag @e[tag=setMe,type=item_display] remove setMe