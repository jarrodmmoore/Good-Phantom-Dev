execute if score @s moveVelocity matches ..39 run attribute @s movement_speed base set 0.195
execute if score @s moveVelocity matches 40..79 run attribute @s movement_speed base set 0.221
execute if score @s moveVelocity matches 80..119 run attribute @s movement_speed base set 0.247
execute if score @s moveVelocity matches 120..159 run attribute @s movement_speed base set 0.273
execute if score @s moveVelocity matches 160..199 run attribute @s movement_speed base set 0.299
execute if score @s moveVelocity matches 200..239 run attribute @s movement_speed base set 0.325
execute if score @s moveVelocity matches 240..279 run attribute @s movement_speed base set 0.351
#unnatural speeds? whoa!
execute if score @s moveVelocity matches 280..319 run attribute @s movement_speed base set 0.377
execute if score @s moveVelocity matches 320..359 run attribute @s movement_speed base set 0.403
execute if score @s moveVelocity matches 360..399 run attribute @s movement_speed base set 0.429
execute if score @s moveVelocity matches 400..439 run attribute @s movement_speed base set 0.455
execute if score @s moveVelocity matches 440..579 run attribute @s movement_speed base set 0.481
execute if score @s moveVelocity matches 480..519 run attribute @s movement_speed base set 0.507
execute if score @s moveVelocity matches 520.. run attribute @s movement_speed base set 0.533

#we ran this function. please don't run non-hungry one
scoreboard players set #success value 1