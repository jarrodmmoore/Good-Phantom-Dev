#summon the explosion and have it do a reasonable amount of damage
#effect give @a[distance=..5] resistance 1 3 true
execute if loaded ~ ~ ~ run summon creeper ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Health:1.0f,Fuse:0,attributes:[{id:"knockback_resistance",base:1}]}
#we also need to damage baddies with artificial HP. we'll between 20 and 40 damage.
scoreboard players remove @e[tag=baddy,tag=artificialHP,distance=..5] enemyHP 20
scoreboard players remove @e[tag=baddy,tag=artificialHP,distance=..4] enemyHP 10
scoreboard players remove @e[tag=baddy,tag=artificialHP,distance=..3] enemyHP 10
execute as @e[tag=baddy,tag=artificialHP,distance=..5] at @s run function phan:game/1/objects/enemy/take_damage_feedback


#we had to disable vanilla explosion so here's a fake one
execute store result score #random value run random value 1..4
execute if score #random value matches ..1 run playsound minecraft:custom_sfx/explode1 master @a[distance=..80] ~ ~ ~ 3 1 .1
execute if score #random value matches 2 run playsound minecraft:custom_sfx/explode2 master @a[distance=..80] ~ ~ ~ 3 1 .1
execute if score #random value matches 3 run playsound minecraft:custom_sfx/explode3 master @a[distance=..80] ~ ~ ~ 3 1 .1
execute if score #random value matches 4.. run playsound minecraft:custom_sfx/explode4 master @a[distance=..80] ~ ~ ~ 3 1 .1
particle flash ~ ~.5 ~ 0 0 0 1 1
particle flame ~ ~.5 ~ 0.5 0.5 0.5 0.01 10 force
particle flame ~ ~.5 ~ 0.5 0.5 0.5 0.01 20
particle poof ~ ~.5 ~ 1.4 1.4 1.4 0 10 force
particle poof ~ ~.5 ~ 1.4 1.4 1.4 0 40

#delete self
scoreboard players set @s lifespan 1
tag @s remove explosion