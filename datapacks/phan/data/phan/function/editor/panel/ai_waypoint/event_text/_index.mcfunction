#1 = force jump (enter flight? 0=no, 1=yes, 2=yes + spam jump key)
execute if score @s AIBC_event matches 1 run return run function phan:editor/panel/ai_waypoint/event_text/1_force_jump
#2 = enter or cancel flight (0/1)
execute if score @s AIBC_event matches 2 run return run function phan:editor/panel/ai_waypoint/event_text/2_enter_cancel_flight
#3 = force redirect nearby bots (square radius)
execute if score @s AIBC_event matches 3 run return run function phan:editor/panel/ai_waypoint/event_text/3_force_redirect
#4 = take alt route
execute if score @s AIBC_event matches 4 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"take alt route"}
#5 = take alt route if priority is items
execute if score @s AIBC_event matches 5 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"take alt route if priority is items"}
#6 = take alt route if priority is NOT items
execute if score @s AIBC_event matches 6 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"take alt route if priority is NOT items"}
#7 = at max speed? boost + take alt route
execute if score @s AIBC_event matches 7 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"at max speed? boost + take alt route"}
#8 = use super jump + take alt route
execute if score @s AIBC_event matches 8 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"use super jump + take alt route"}
#9 = throw ender pearl
execute if score @s AIBC_event matches 9 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"throw ender pearl at waypoint"}
#10 = use firework + take alt route
execute if score @s AIBC_event matches 10 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"use firework + take alt route"}
#11 = use speed pad jump + take alt route
execute if score @s AIBC_event matches 11 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"use speed pad jump + take alt route"}
#12 = have mine? take alt route and set mine at next waypoint
execute if score @s AIBC_event matches 12 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"have mine? take alt route and set mine at next waypoint"}
#13 = take alt route upon explosion boost
execute if score @s AIBC_event matches 13 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"take alt route upon explosion boost"}
#14 = rocket jump and take alt route
execute if score @s AIBC_event matches 14 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"rocket jump and take alt route"}
#15 = throw tnt and take alt route
execute if score @s AIBC_event matches 15 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"throw tnt and take alt route"}
#16 = shoot rocket and take alt route
execute if score @s AIBC_event matches 16 run return run function phan:editor/panel/ai_waypoint/event_text/generic_alt_route {text:"shoot rocket and take alt route"}

#tags:

#(none)
#neutral, no added effect

#eventBadSkill
#bad skill events are likely to be done by AIs that are lower skill, especially if they're ahead in the race
# ex: you can make AIs fail a jump in a difficult section much like a player might
# (AIs will never make a mistake more than a few times in a row)

#eventHighSkill
#high skill events are likely to be done by AIs that are higher skill, even more likely if behind in the race