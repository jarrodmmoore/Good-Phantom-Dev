#flash the grade we just got in its proper color
scoreboard players operation #test value = @s hudFlashTime
scoreboard players operation #test value %= #4 value
scoreboard players add @s currentGrade 0

#set number
execute if score @s scoreDigit1 matches ..100 run data modify storage phan:hud_grade digit set value "uE922"
execute if score @s scoreDigit1 matches 101 run data modify storage phan:hud_grade digit set value "uE923"
execute if score @s scoreDigit1 matches 102 run data modify storage phan:hud_grade digit set value "uE924"
execute if score @s scoreDigit1 matches 103 run data modify storage phan:hud_grade digit set value "uE925"
execute if score @s scoreDigit1 matches 104 run data modify storage phan:hud_grade digit set value "uE926"
execute if score @s scoreDigit1 matches 105 run data modify storage phan:hud_grade digit set value "uE927"
execute if score @s scoreDigit1 matches 106 run data modify storage phan:hud_grade digit set value "uE928"
execute if score @s scoreDigit1 matches 107 run data modify storage phan:hud_grade digit set value "uE929"
execute if score @s scoreDigit1 matches 108 run data modify storage phan:hud_grade digit set value "uE930"
execute if score @s scoreDigit1 matches 109 run data modify storage phan:hud_grade digit set value "uE931"
execute if score @s scoreDigit1 matches 110 run data modify storage phan:hud_grade digit set value "uE932"
execute if score @s scoreDigit1 matches 111 run data modify storage phan:hud_grade digit set value "uE933"
execute if score @s scoreDigit1 matches 112 run data modify storage phan:hud_grade digit set value "uE934"
execute if score @s scoreDigit1 matches 113 run data modify storage phan:hud_grade digit set value "uE935"
execute if score @s scoreDigit1 matches 114 run data modify storage phan:hud_grade digit set value "uE936"
execute if score @s scoreDigit1 matches 115 run data modify storage phan:hud_grade digit set value "uE937"
execute if score @s scoreDigit1 matches 116 run data modify storage phan:hud_grade digit set value "uE938"
execute if score @s scoreDigit1 matches 117 run data modify storage phan:hud_grade digit set value "uE939"
execute if score @s scoreDigit1 matches 118 run data modify storage phan:hud_grade digit set value "uE940"
execute if score @s scoreDigit1 matches 119.. run data modify storage phan:hud_grade digit set value "uE941"

#currentGrade
#..0 = S
#1 = A
#2 = B
#3 = C
#4 = D
#5.. = F
execute if score #test value matches 2.. run data modify storage phan:hud_grade letter set value "uE920"
execute if score @s currentGrade matches 5.. if score #test value matches ..1 run data modify storage phan:hud_grade letter set value "uA929"
execute if score @s currentGrade matches 4 if score #test value matches ..1 run data modify storage phan:hud_grade letter set value "uE952"
execute if score @s currentGrade matches 3 if score #test value matches ..1 run data modify storage phan:hud_grade letter set value "uE951"
execute if score @s currentGrade matches 2 if score #test value matches ..1 run data modify storage phan:hud_grade letter set value "uE950"
execute if score @s currentGrade matches 1 if score #test value matches ..1 run data modify storage phan:hud_grade letter set value "uE949"
execute if score @s currentGrade matches ..0 if score #test value matches ..1 run data modify storage phan:hud_grade letter set value "uA928"

#now do the thing!
function phan:custom_hud/gameplay/slot16_show_grade_macro with storage phan:hud_grade

#macro performance hit should be small since there's only 3 players running this in the worst case scenario

#now that we're done with scoreDigit1, we super mess with the value so it's different every time
scoreboard players operation @s scoreDigit1 *= #100 value
scoreboard players operation @s scoreDigit1 *= @s hudFlashTime