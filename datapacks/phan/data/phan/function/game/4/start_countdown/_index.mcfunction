#using this variable instead of gameTime
scoreboard players add #321go value 1
#reason 1: makes it easier to rip the code from sprint racer
#reason 2: makes it easier to move the start countdown to some other #gameTime without giving myself a stroke

execute if score #countdownType value matches 0 run function phan:game/4/start_countdown/0
execute if score #countdownType value matches 1 run function phan:game/4/start_countdown/1
execute if score #countdownType value matches 2 run function phan:game/4/start_countdown/2
#...