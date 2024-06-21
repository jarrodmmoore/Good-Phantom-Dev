#what did we click on?

#boost!
execute if score @s carrotInput matches 1.. if score @s inputCooldownD matches ..0 if entity @s[scores={energy=3..,fallFlying=..0}] if items entity @s weapon.mainhand *[custom_data~{slot0:1b}] run function phan:game/1/player/item/strong_boost
execute if score @s carrotInput matches 1.. if score @s inputCooldownD matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot0:1b}] run function phan:game/1/player/item/fail

#respawn
execute if score @s carrotInput matches 1.. if score @s inputCooldownC matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot8:1b}] run function phan:game/4/race/try_respawn