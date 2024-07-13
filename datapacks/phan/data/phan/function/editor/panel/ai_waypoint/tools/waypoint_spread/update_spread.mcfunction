#store spread x and z data on yaw/pitch of waypoint
$tp @s ~ ~ ~ $(spread_x).$(spread_x2) $(spread_z).$(spread_z2)
#waypoints' rotation isn't relevant otherwise so let's be resourceful and jam less scoreboard data into server RAM :)

execute store result score #test value run data get entity @s Rotation[0] 10
execute store result score #test2 value run data get entity @s Rotation[1] 10