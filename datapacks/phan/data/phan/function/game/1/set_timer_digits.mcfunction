#split our timer into 3 digits so the HUD can use it
scoreboard players operation #timeRemSec value = #timeRemaining value
scoreboard players operation #timeRemSec value /= #20 value

scoreboard players operation #timeRem10 value = #timeRemSec value
scoreboard players operation #timeRem10 value %= #100 value
scoreboard players operation #timeRem10 value /= #10 value

scoreboard players operation #timeRem100 value = #timeRemSec value
scoreboard players operation #timeRem100 value %= #1000 value
scoreboard players operation #timeRem100 value /= #100 value

scoreboard players operation #timeRemSec value %= #10 value

#HUD timer caps at 999
execute if score #timeRemaining value matches 19980.. run scoreboard players set #timeRem100 value 9
execute if score #timeRemaining value matches 19980.. run scoreboard players set #timeRem10 value 9
execute if score #timeRemaining value matches 19980.. run scoreboard players set #timeRemSec value 9

#HUD time counter should stop at 0
execute if score #timeRemaining value matches ..10 run scoreboard players set #timeRemSec value 0
execute if score #timeRemaining value matches ..10 run scoreboard players set #timeRem10 value 0
execute if score #timeRemaining value matches ..10 run scoreboard players set #timeRem100 value 0

#for red flashing
scoreboard players operation #timeRemMsec value = #timeRemaining value
scoreboard players operation #timeRemMsec value %= #20 value