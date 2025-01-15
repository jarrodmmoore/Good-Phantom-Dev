#remember which GP is selected
scoreboard players operation #tvChosenGP value = #tvMenuState1 value
scoreboard players add #tvChosenGP value 1000

#do a load impulse
scoreboard players set #tvLoadImpulse value 1
scoreboard players set #tvMenuPage value 7

#clean up inputs, quick!
scoreboard players set #tvInputJumpImpulse value 0