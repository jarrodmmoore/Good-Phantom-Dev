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
execute if score #waypointEvent value matches 11 run return run function phan:bots/behaviors/1_follow_waypoints/event/11_use_firework
execute if score #waypointEvent value matches 12 run return run function phan:bots/behaviors/1_follow_waypoints/event/12_use_speed_pad_jump
execute if score #waypointEvent value matches 13 run return run function phan:bots/behaviors/1_follow_waypoints/event/13_set_mine_at_next_waypoint
execute if score #waypointEvent value matches 14 run return run function phan:bots/behaviors/1_follow_waypoints/event/14_take_alt_route_on_exposion_boost
execute if score #waypointEvent value matches 15 run return run function phan:bots/behaviors/1_follow_waypoints/event/15_rocket_jump
execute if score #waypointEvent value matches 16 run return run function phan:bots/behaviors/1_follow_waypoints/event/16_throw_tnt_and_take_route
execute if score #waypointEvent value matches 17 run return run function phan:bots/behaviors/1_follow_waypoints/event/17_fire_rocket_and_take_route
execute if score #waypointEvent value matches 18 run return run function phan:bots/behaviors/1_follow_waypoints/event/18_improv_flight_alt_route
execute if score #waypointEvent value matches 19 run return run function phan:bots/behaviors/1_follow_waypoints/event/19_have_item_boost
execute if score #waypointEvent value matches 20 run return run function phan:bots/behaviors/1_follow_waypoints/event/20_have_item_super_jump
execute if score #waypointEvent value matches 21 run return run function phan:bots/behaviors/1_follow_waypoints/event/21_have_item_ender_pearl
execute if score #waypointEvent value matches 22 run return run function phan:bots/behaviors/1_follow_waypoints/event/22_have_item_firework
execute if score #waypointEvent value matches 23 run return run function phan:bots/behaviors/1_follow_waypoints/event/23_have_item_speed_pad
execute if score #waypointEvent value matches 24 run return run function phan:bots/behaviors/1_follow_waypoints/event/24_have_item_rocket
execute if score #waypointEvent value matches 25 run return run function phan:bots/behaviors/1_follow_waypoints/event/25_have_item_tnt
execute if score #waypointEvent value matches 26 run return run function phan:bots/behaviors/1_follow_waypoints/event/26_take_route_if_not_obstructed
execute if score #waypointEvent value matches 27 run return run function phan:bots/behaviors/1_follow_waypoints/event/27_boost_flight_and_enter_improv_flight
execute if score #waypointEvent value matches 28 run return run function phan:bots/behaviors/1_follow_waypoints/event/28_have_item_mine