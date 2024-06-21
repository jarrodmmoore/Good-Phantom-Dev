#when we land on the ground after gliding, translate our air velocity back into ground velocity in a way that makes sense

#(i'm pulling these numbers straight out of my rump)
execute if score @s rememberRoughV matches ..1500 run scoreboard players set @s moveVelocity 0
execute if score @s rememberRoughV matches 1501..2800 run scoreboard players set @s moveVelocity 40
execute if score @s rememberRoughV matches 2801..4100 run scoreboard players set @s moveVelocity 80
execute if score @s rememberRoughV matches 4101..5400 run scoreboard players set @s moveVelocity 120
execute if score @s rememberRoughV matches 5401..6700 run scoreboard players set @s moveVelocity 160
execute if score @s rememberRoughV matches 6701..8000 run scoreboard players set @s moveVelocity 200
#8000 = full speed
execute if score @s rememberRoughV matches 8001..10000 run scoreboard players set @s moveVelocity 240

#extremely high speed?
execute if score @s rememberRoughV matches 10001..12000 run scoreboard players set @s moveVelocity 280
execute if score @s rememberRoughV matches 12001..14000 run scoreboard players set @s moveVelocity 320
execute if score @s rememberRoughV matches 14001..16000 run scoreboard players set @s moveVelocity 360
execute if score @s rememberRoughV matches 16001..18000 run scoreboard players set @s moveVelocity 400
execute if score @s rememberRoughV matches 18001..20000 run scoreboard players set @s moveVelocity 440
execute if score @s rememberRoughV matches 20001..22000 run scoreboard players set @s moveVelocity 480
execute if score @s rememberRoughV matches 22001..99999 run scoreboard players set @s moveVelocity 520

scoreboard players set @s landCooldown 25