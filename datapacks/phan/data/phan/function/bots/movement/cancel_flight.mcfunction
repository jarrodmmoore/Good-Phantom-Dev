#do the regular stuff
function phan:bots/movement/cancel_flight_no_reroute

#need to re-target waypoints if we gave up on mid-air flight
execute if entity @s[tag=botFollowingMidAir] run tag @s add botTargetNearestWP