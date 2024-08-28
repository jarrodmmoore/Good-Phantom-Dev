#damage is difference between max hp and actual
scoreboard players set #damage value 424
scoreboard players operation #damage value -= @s hp
scoreboard players operation @s damage = #damage value

#"owch" - we said
execute unless score @s shieldTime matches 1.. run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 1.1 1.2

#instant health to anyone below max hp
effect give @s instant_health 1 200 true