scoreboard players operation @s botTargetID = #test2 value
scoreboard players operation @s botIgnoreEyeID = #test2 value
scoreboard players set @s botTargetPriority 1
function phan:bots/behaviors/3_follow_target/start_following_target

scoreboard players set #hasTarget value 1