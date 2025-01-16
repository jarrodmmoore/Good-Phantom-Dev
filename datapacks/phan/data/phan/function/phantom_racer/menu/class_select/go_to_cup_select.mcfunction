scoreboard players set #tvLoadImpulse value 1
scoreboard players set #tvMenuPage value 3
scoreboard players set #tvAnimation value 0
$scoreboard players set #grandPrixClass value $(class)

#sound
function phan:phantom_racer/menu/click_sound_effect
execute if score #grandPrixClass value matches 5 run playsound minecraft:entity.vex.charge master @a ~ ~ ~ 1 0.75
execute if score #grandPrixClass value matches 6 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1