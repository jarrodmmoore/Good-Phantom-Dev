#jump if we're below where we wanted to end up
execute if score #testX value matches -21..21 if score #testZ value matches -21..21 if score #testY value matches 30.. unless score @s botJumpTimer matches -2147483648..2147483647 run scoreboard players set @s[scores={botMoveState=0}] botJumpTimer 0
execute if score #testX value matches -21..21 if score #testZ value matches -21..21 if score #testY value matches 30.. unless score @s botJumpTimer matches -2147483648..2147483647 run scoreboard players set @s[scores={botMoveState=1,airTime=..9}] botJumpTimer -1

#stop targeting if we reached it on x, y, and z
execute if score #testX value matches -15..15 if score #testZ value matches -15..15 if score #testY value matches -30..20 run function phan:bots/movement/check_if_bot_reached_temporary_target_success
execute if score @s moveVelocity matches 300.. if score #testX value matches -21..21 if score #testZ value matches -21..21 if score #testY value matches -30..20 run function phan:bots/movement/check_if_bot_reached_temporary_target_success