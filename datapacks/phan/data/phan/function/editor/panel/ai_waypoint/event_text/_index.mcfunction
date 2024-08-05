#-1 = enter or cancel improv flight (0/1)
execute if score @s AIBC_event matches -1 run return run function phan:editor/panel/ai_waypoint/event_text/n1_enter_cancel_improv_flight

#1 = force jump (0 = instant, 1+ = delayed, -1 = force jump at next ledge)
execute if score @s AIBC_event matches 1 run return run function phan:editor/panel/ai_waypoint/event_text/1_force_jump
#2 = enter or cancel flight (many values...)
execute if score @s AIBC_event matches 2 run return run function phan:editor/panel/ai_waypoint/event_text/2_enter_cancel_flight
#3 = force redirect nearby bots (square radius)
execute if score @s AIBC_event matches 3 run return run function phan:editor/panel/ai_waypoint/event_text/3_force_redirect
#4 = take alt route
execute if score @s AIBC_event matches 4 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"take alternate route"}
#5 = portal finished? take alt route
execute if score @s AIBC_event matches 5 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"portal finished? take alt route"}
#6 = take alt route if priority is items
execute if score @s AIBC_event matches 6 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"take alt route if behind (want items)"}
#7 = take alt route if priority is NOT items
execute if score @s AIBC_event matches 7 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"take alt route if ahead"}
#8 = at max speed? boost + take alt route
execute if score @s AIBC_event matches 8 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"at max speed? boost + take alt route"}
#9 = use super jump + take alt route
execute if score @s AIBC_event matches 9 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"use super jump + take alt route"}
#10 = throw ender pearl
execute if score @s AIBC_event matches 10 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"throw ender pearl at waypoint"}
#11 = use firework + take alt route
execute if score @s AIBC_event matches 11 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"use firework + take alt route"}
#12 = use speed pad jump + take alt route
execute if score @s AIBC_event matches 12 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"use speed pad jump + take alt route"}
#13 = have mine? take alt route and set mine at next waypoint
execute if score @s AIBC_event matches 13 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have mine? take alt route and set mine at next waypoint"}
#14 = take alt route upon explosion boost
execute if score @s AIBC_event matches 14 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"take alt route upon explosion boost"}
#15 = rocket jump and take alt route
execute if score @s AIBC_event matches 15 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"rocket jump and take alt route"}
#16 = throw tnt and take alt route
execute if score @s AIBC_event matches 16 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"throw tnt and take alt route"}
#17 = shoot rocket and take alt route
execute if score @s AIBC_event matches 17 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"shoot rocket and take alt route"}
#18 = improv flight? take alt route
execute if score @s AIBC_event matches 18 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"doing improvised flight? take alt route"}
#19 = have boost? take alt route
execute if score @s AIBC_event matches 19 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have boost? take alt route"}
#20 = have super jump? take alt route
execute if score @s AIBC_event matches 20 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have super jump? take alt route"}
#21 = have ender pearl? take alt route
execute if score @s AIBC_event matches 21 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have ender pearl? take alt route"}
#22 = have firework? take alt route
execute if score @s AIBC_event matches 22 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have firework? take alt route"}
#23 = have speed pad? take alt route
execute if score @s AIBC_event matches 23 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have speed pad? take alt route"}
#24 = have rocket? take alt route
execute if score @s AIBC_event matches 24 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have rocket? take alt route"}
#25 = have tnt? take alt route
execute if score @s AIBC_event matches 25 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have tnt? take alt route"}
#26 = alt route not obstructed? take alt route
execute if score @s AIBC_event matches 26 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"alt route not obstructed? take alt route"}
#27 = use super jump or firework + take alt route (improv flight)
execute if score @s AIBC_event matches 27 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"use super jump or firework + take alt route (improv flight)"}
#28 = have mine? take alt route
execute if score @s AIBC_event matches 28 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have mine? take alt route"}

#tags:

#(none)
#neutral, no added effect

#eventBadSkill
#bad skill events are likely to be done by AIs that are lower skill, especially if they're ahead in the race
# ex: you can make AIs fail a jump in a difficult section much like a player might
# (AIs will never make a mistake more than a few times in a row)

#eventHighSkill
#high skill events are likely to be done by AIs that are higher skill, even more likely if behind in the race