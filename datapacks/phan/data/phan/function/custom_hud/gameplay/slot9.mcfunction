#possible values are 9, 16, 23, 30, 37, 44, 51, 58, 65

#(this is very silly)
#big negative space in an effort to balance the HUD in the middle
execute if score #hudRightDebt value matches ..9 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF011\\uF019","italic":false}'}
execute if score #hudRightDebt value matches 10..16 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF012\\uF019","italic":false}'}
execute if score #hudRightDebt value matches 17..23 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF013\\uF019","italic":false}'}
execute if score #hudRightDebt value matches 24..30 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF014\\uF019","italic":false}'}
execute if score #hudRightDebt value matches 31..37 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF015\\uF019","italic":false}'}
execute if score #hudRightDebt value matches 38..44 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF016\\uF019","italic":false}'}
execute if score #hudRightDebt value matches 45..51 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF017\\uF019","italic":false}'}
execute if score #hudRightDebt value matches 52..58 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF006\\uF019","italic":false}'}
execute if score #hudRightDebt value matches 59.. run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:'{"text":"\\uF018\\uF019","italic":false}'}

#store previous value
scoreboard players operation #hudPrev9 value = #hudRightDebt value