#set target coordinates
#coordinates and ID should be stored on #botTargetID, #editArg1, #editArg2, #editArg3
function phan:bots/reaction/set_temporary_target_go

#don't chase this one twice in a row
scoreboard players operation @s botIgnoreEyeID = #botTargetID value

#set behavior to "chase"
scoreboard players set @s botTargetPriority 1
function phan:bots/behaviors/3_follow_target/start_following_target

scoreboard players set #hasTarget value 1