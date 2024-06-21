#7 = tiny slash + player count

#position
execute if score #hudPeakPlayers value matches ..19 run function phan:custom_hud/versus_race/slot7_2digit_10_19
execute if score #hudPeakPlayers value matches 20..32 run function phan:custom_hud/versus_race/slot7_2digit_20_32

#store previous value
scoreboard players operation #hudPrev7 value = #hudPeakPlayers value