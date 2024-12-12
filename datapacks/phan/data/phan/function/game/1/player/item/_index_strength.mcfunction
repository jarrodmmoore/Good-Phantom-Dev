#what did we click on?

#bite
execute if score @s carrotInput matches 1.. if score @s inputCooldownA matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot0r:1b}] anchored eyes run function phan:game/1/player/item/strong_bite

#boost!
execute if score @s carrotInput matches 1.. if score @s inputCooldownD matches ..0 if entity @s[scores={energy=3..}] if items entity @s weapon.mainhand *[custom_data~{slot1r:1b}] run function phan:game/1/player/item/strong_boost
execute if score @s carrotInput matches 1.. if score @s inputCooldownD matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot1r:1b}] run function phan:game/1/player/item/fail

#light proj
execute if score @s carrotInput matches 1.. if score @s inputCooldownB matches ..0 if entity @s[scores={energy=1..}] if items entity @s weapon.mainhand *[custom_data~{slot2r:1b}] run function phan:game/1/player/item/strong_light_projectile
execute if score @s carrotInput matches 1.. if score @s inputCooldownB matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot2r:1b}] run function phan:game/1/player/item/fail_projectile

#heavy proj
execute if score @s carrotInput matches 1.. if score @s inputCooldownB matches ..0 if entity @s[scores={energy=2..}] if items entity @s weapon.mainhand *[custom_data~{slot3r:1b}] run function phan:game/1/player/item/strong_heavy_projectile
execute if score @s carrotInput matches 1.. if score @s inputCooldownB matches ..0 if items entity @s weapon.mainhand *[custom_data~{slot3r:1b}] run function phan:game/1/player/item/fail_projectile

#ender eye
execute if score @s carrotInput matches 1.. if score @s inputCooldownC matches ..0 if entity @s[scores={enderEyes=1..}] if items entity @s weapon.mainhand *[custom_data~{enderEyeInv:1b}] run function phan:game/1/player/item/ender_eye
execute if score @s carrotInput matches 1.. if score @s inputCooldownC matches ..0 if items entity @s weapon.mainhand *[custom_data~{enderEyeInv:1b}] run function phan:game/1/player/item/fail_ender_eye