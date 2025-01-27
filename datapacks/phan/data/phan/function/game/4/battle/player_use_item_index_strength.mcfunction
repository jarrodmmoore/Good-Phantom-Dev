#what did we click on?

#bite
execute if score @s carrotInput matches 1.. if score @s inputCooldownA matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot0r:1b}] anchored eyes run function phan:game/1/player/item/strong_bite

#heavy proj
execute unless score #assist_items value matches 1 if score @s carrotInput matches 1.. if score @s inputCooldownB matches ..0 if entity @s[scores={energy=2..}] if items entity @s weapon.mainhand *[custom_data~{slot1r:1b}] run function phan:game/1/player/item/strong_heavy_projectile
execute if score #assist_items value matches 1 if score @s carrotInput matches 1.. if score @s inputCooldownB matches ..0 if entity @s[scores={energy=1..}] if items entity @s weapon.mainhand *[custom_data~{slot1r:1b}] run function phan:game/1/player/item/strong_heavy_projectile
execute if score @s carrotInput matches 1.. if score @s inputCooldownB matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot1r:1b}] run function phan:game/1/player/item/fail_projectile

#respawn
execute if score @s carrotInput matches 1.. if score @s inputCooldownC matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot8:1b}] run function phan:game/4/race/try_respawn