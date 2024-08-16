#we need to rotate the zombie back to the rotation it had last tick
#otherwise minecraft with throw a wrench in our plans on EVERY GAME TICK (the audacity)
execute store result storage phan:coords target_yaw int 1 run scoreboard players get @s botWanderYaw
function phan:bots/behaviors/2_roam/face_proper_direction_macro with storage phan:coords