#=====

#low/high skill?
execute if entity @s[tag=eventBadSkill] run summon area_effect_cloud ~ ~.33 ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"bad decision","color":"#BBBBBB"}]'}
execute if entity @s[tag=eventHighSkill] run summon area_effect_cloud ~ ~.33 ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"high skill","color":"#BBBBBB"}]'}

#=====

#1 = force jump
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"force jump","color":"green"}]'}
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches ..-1 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"force jump at next ledge","color":"green"}]'}
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches 1.. run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"force jump (delayed)","color":"green"}]'}

#2 = enter/cancel flight
execute if score @s AIBC_event matches 2 unless score @s AIBC_modifier matches 1..3 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"enter flight","color":"green"}]'}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"enter flight (spam jump key)","color":"green"}]'}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 2 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"enter flight at next ledge","color":"green"}]'}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 3 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"cancel flight","color":"green"}]'}

#3 = force redirect
execute if score @s AIBC_event matches 3 store result storage phan:node_name player_count int 1 run scoreboard players get @s AIBC_modifier
execute if score @s AIBC_event matches 3 run function phan:editor/panel/ai_waypoint/visualize/force_redirect_macro with storage phan:node_name

#4 = take alt route
execute if score @s AIBC_event matches 4 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"take alternate route","color":"yellow"}]'}

#5 = portal finished? take alt route
execute if score @s AIBC_event matches 5 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"portal finished? take alt route","color":"yellow"}]'}

#6 = take alt route if ahead
execute if score @s AIBC_event matches 6 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"take alt route if ahead","color":"yellow"}]'}

#7 = take alt route if behind
execute if score @s AIBC_event matches 7 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"take alt route if behind","color":"yellow"}]'}

#8 = boost + take alt route
execute if score @s AIBC_event matches 8 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"boost + take alt route","color":"yellow"}]'}

#9 = use super jump + take alt route
execute if score @s AIBC_event matches 9 run summon item_display ~ ~ ~ {Tags:["setMe"],item_display:head,billboard:vertical,brightness:{sky:0,block:15},item:{id:"minecraft:prismarine_shard",count:1b}}

#10 = throw ender pearl
execute if score @s AIBC_event matches 10 run summon item_display ~ ~ ~ {Tags:["setMe"],item_display:head,billboard:vertical,brightness:{sky:0,block:15},item:{id:"minecraft:ender_pearl",count:1b}}

#11 = throw ender pearl
execute if score @s AIBC_event matches 11 run summon item_display ~ ~ ~ {Tags:["setMe"],item_display:head,billboard:vertical,brightness:{sky:0,block:15},item:{id:"minecraft:firework_rocket",count:1b}}

#12 = perform speed pad jump + take alt route
execute if score @s AIBC_event matches 12 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"perform speed pad jump + take alt route","color":"yellow"}]'}

#13 = set mine on alt route for shortcut
execute if score @s AIBC_event matches 13 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"set mine on alt route for shortcut","color":"yellow"}]'}

#14 = take alt route upon explosion boost
execute if score @s AIBC_event matches 14 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"take alt route upon explosion boost","color":"yellow"}]'}

#15 = rocket jump and take alt route
execute if score @s AIBC_event matches 15 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"rocket jump and take alt route","color":"yellow"}]'}

#16 = throw tnt and take alt route
execute if score @s AIBC_event matches 16 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"throw tnt and take alt route","color":"yellow"}]'}

#17 = shoot rocket and take alt route
execute if score @s AIBC_event matches 17 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"shoot rocket and take alt route","color":"yellow"}]'}

#=====

#generic lifespan set for item displays
scoreboard players set @e[tag=setMe,type=item_display] lifespan 41
tag @e[tag=setMe,type=item_display] remove setMe