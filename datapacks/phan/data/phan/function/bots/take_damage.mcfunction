#damage is difference between max hp and actual
scoreboard players set #damage value 1020
scoreboard players operation #damage value -= @s botHp
scoreboard players operation @s damage = #damage value

#"owch" - we said
execute unless score @s shieldTime matches 1.. run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 1.1 1.2

#give up on dodging trap if we were trying to do that
scoreboard players set @s botPreparedToDodgeTrap 0

#back to full health
data merge entity @s {Health:1020.0f}