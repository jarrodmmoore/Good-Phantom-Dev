#remember which act is selected
scoreboard players operation #tvChosenLevel value = #test value

#do a load impulse
scoreboard players set #tvLoadImpulse value 1
scoreboard players set #tvMenuPage value 5

#clean up inputs, quick!
scoreboard players set #tvInputJumpImpulse value 0

#sound
function phan:phantom_racer/menu/click_sound_effect