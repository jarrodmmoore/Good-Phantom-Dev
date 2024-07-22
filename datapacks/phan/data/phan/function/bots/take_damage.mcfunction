#damage is difference between max hp and actual
scoreboard players set #damage value 1020
scoreboard players operation #damage value -= @s botHp
scoreboard players operation @s damage = #damage value

#"owch" - we said
playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 1.1 1.2

#back to full health
data merge entity @s {Health:1020.0f}