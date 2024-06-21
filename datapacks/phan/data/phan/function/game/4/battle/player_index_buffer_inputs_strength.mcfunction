#what did we click on?

#bite
execute if score @s bufferInput1 matches 1.. if score @s inputCooldownA matches ..0 anchored eyes run function phan:game/1/player/item/strong_bite

#boost!
#execute if score @s bufferInput0 matches 1.. if score @s inputCooldownD matches ..0 if entity @s[scores={energy=3..,fallFlying=..0}] run function phan:game/1/player/item/strong_boost

#light proj
#execute if score @s bufferInput2 matches 1.. if score @s inputCooldownB matches ..0 if entity @s[scores={energy=1..}] run function phan:game/1/player/item/strong_light_projectile

#heavy proj
execute if score @s bufferInput3 matches 1.. if score @s inputCooldownB matches ..0 if entity @s[scores={energy=2..}] run function phan:game/1/player/item/strong_heavy_projectile

#ender eye
#execute if score @s bufferInput4 matches 1.. if score @s inputCooldownC matches ..0 if entity @s[scores={enderEyes=1..}] run function phan:game/1/player/item/ender_eye