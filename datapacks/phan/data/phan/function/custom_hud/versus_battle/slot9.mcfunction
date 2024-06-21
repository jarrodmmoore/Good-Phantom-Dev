#possible values are 62, 76, 90

#(this is very silly)
#big negative space in an effort to balance the HUD in the middle
execute if score #hudRightDebt value matches ..62 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF023","italic":false}'}
execute if score #hudRightDebt value matches 63..76 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF023\\uF010\\uF010","italic":false}'}
execute if score #hudRightDebt value matches 77.. run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF023\\uF010\\uF010\\uF010\\uF010","italic":false}'}

#store previous value
scoreboard players operation #hudPrev9 value = #hudRightDebt value