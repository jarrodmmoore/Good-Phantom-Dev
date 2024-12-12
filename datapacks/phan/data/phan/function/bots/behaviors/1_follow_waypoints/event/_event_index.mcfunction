execute if score #waypointEvent value matches -1 run return run function phan:bots/behaviors/1_follow_waypoints/event/n1_enter_cancel_improv_flight

execute if score #waypointEvent value matches 1 run return run function phan:bots/behaviors/1_follow_waypoints/event/1_force_jump
execute if score #waypointEvent value matches 2 run return run function phan:bots/behaviors/1_follow_waypoints/event/2_enter_cancel_flight
#(event 3 -- force redirect is handled by the bot's nearby object reaction system)
execute if score #waypointEvent value matches 4 run return run function phan:bots/behaviors/1_follow_waypoints/event/4_take_alt_route
execute if score #waypointEvent value matches 5 run return run function phan:bots/behaviors/1_follow_waypoints/event/5_portal_finished_route
execute if score #waypointEvent value matches 6 run return run function phan:bots/behaviors/1_follow_waypoints/event/6_take_alt_route_want_items
execute if score #waypointEvent value matches 7 run return run function phan:bots/behaviors/1_follow_waypoints/event/7_take_alt_route_want_boost
execute if score #waypointEvent value matches 8 run return run function phan:bots/behaviors/1_follow_waypoints/event/8_max_speed_boost
execute if score #waypointEvent value matches 9 run return run function phan:bots/behaviors/1_follow_waypoints/event/9_use_super_jump
execute if score #waypointEvent value matches 10 run return run function phan:bots/behaviors/1_follow_waypoints/event/10_throw_ender_pearl

#11 plus in another function
execute if score #waypointEvent value matches 11.. run function phan:bots/behaviors/1_follow_waypoints/event/_event_index_11_plus