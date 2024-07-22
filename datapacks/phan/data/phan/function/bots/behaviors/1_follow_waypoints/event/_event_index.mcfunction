execute if score #waypointEvent value matches 1 run function phan:bots/behaviors/1_follow_waypoints/event/1_force_jump
execute if score #waypointEvent value matches 2 run function phan:bots/behaviors/1_follow_waypoints/event/2_enter_cancel_flight
#...
execute if score #waypointEvent value matches 4 run function phan:bots/behaviors/1_follow_waypoints/event/4_take_alt_route
execute if score #waypointEvent value matches 5 run function phan:bots/behaviors/1_follow_waypoints/event/5_portal_finished_route
execute if score #waypointEvent value matches 6 run function phan:bots/behaviors/1_follow_waypoints/event/6_take_alt_route_want_items
execute if score #waypointEvent value matches 7 run function phan:bots/behaviors/1_follow_waypoints/event/7_take_alt_route_want_boost