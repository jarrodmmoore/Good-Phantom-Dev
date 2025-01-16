scoreboard players set #tvLoadImpulse value 1
scoreboard players set #tvMenuPage value 1
scoreboard players set #tvCooldown value 20
scoreboard players set #tvInputJumpImpulse value 0

#particle
particle dust{color:[1,1,0],scale:0.66f} ~ ~-.4 ~ 0.1 0.1 0.66 1 10

#sound
function phan:phantom_racer/menu/click_sound_effect
playsound minecraft:custom_sfx/pickup1 master @a ~ ~ ~ 1 1.2