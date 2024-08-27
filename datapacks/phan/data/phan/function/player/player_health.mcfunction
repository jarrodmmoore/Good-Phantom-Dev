#damage is difference between max hp and actual
scoreboard players set #damage value 424
scoreboard players operation #damage value -= @s hp
scoreboard players operation @s damage = #damage value

#"owch" - we said
execute unless score @s shieldTime matches 1.. run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 1.1 1.2

#get resistance for 1 second if we have the tag for it
execute if entity @s[tag=resistAfterNextDmgTick] run effect give @s resistance 1 99 true

#instant health to anyone below max hp
effect give @s instant_health 1 200 true