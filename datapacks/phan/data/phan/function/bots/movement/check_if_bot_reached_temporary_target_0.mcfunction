#stop targeting if we're too far away (more than 10 blocks away)
execute unless score #testX value matches -100..100 run return run function phan:bots/movement/check_if_bot_reached_temporary_target_success
execute unless score #testY value matches -100..100 run return run function phan:bots/movement/check_if_bot_reached_temporary_target_success
execute unless score #testZ value matches -100..100 run return run function phan:bots/movement/check_if_bot_reached_temporary_target_success

#limited time chasing targets with botTargetPriority 0
function phan:bots/movement/check_if_bot_reached_temporary_target_priority_0_timer

#stop targeting if we reached it on x and z
execute if score #testX value matches -15..15 if score #testZ value matches -15..15 run function phan:bots/movement/check_if_bot_reached_temporary_target_success
execute if score @s moveVelocity matches 300.. if score #testX value matches -21..21 if score #testZ value matches -21..21 run function phan:bots/movement/check_if_bot_reached_temporary_target_success