#feedback
particle dust{color:[0.3,0.3,1.0],scale:1} ~ ~1 ~ 0.6 0.6 0.6 0 2 force
effect give @s conduit_power 1 1 false
#play sound
execute if score @s energy matches ..0 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.5
execute if score @s energy matches 1 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.55
execute if score @s energy matches 2 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.6
execute if score @s energy matches 3 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.65
execute if score @s energy matches 4 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.7
execute if score @s energy matches 5 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.75
execute if score @s energy matches 6 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.8
execute if score @s energy matches 7 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.85
execute if score @s energy matches 8 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.9
execute if score @s energy matches 9 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 0.95
execute if score @s energy matches 10 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 1
execute if score @s energy matches 11 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 1.05
execute if score @s energy matches 12 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 1.1
execute if score @s energy matches 13 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 1.15
execute if score @s energy matches 14 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 1.2
execute if score @s energy matches 15 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 1.25
execute if score @s energy matches 16 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 1.3
execute if score @s energy matches 17 run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 0.8 1.35

#add energy
scoreboard players add @s[scores={energy=..17}] energy 1