#4x4's
execute if score @s editArg1 matches 3 unless score @s editArg2 matches 1 run clone from overworld 197 -24 139 200 -19 142 to the_end ~ ~ ~
execute if score @s editArg1 matches 2 unless score @s editArg2 matches 1 run clone from overworld 197 -24 147 200 -19 150 to the_end ~ ~ ~
execute if score @s editArg1 matches 1 unless score @s editArg2 matches 1 run clone from overworld 197 -24 143 200 -19 146 to the_end ~ ~ ~

#5x5's
execute if score @s editArg1 matches 3 if score @s editArg2 matches 1 run clone from overworld 202 -24 139 206 -19 143 to the_end ~ ~ ~
execute if score @s editArg1 matches 2 if score @s editArg2 matches 1 run clone from overworld 202 -24 149 206 -19 153 to the_end ~ ~ ~
execute if score @s editArg1 matches 1 if score @s editArg2 matches 1 run clone from overworld 202 -24 144 206 -19 148 to the_end ~ ~ ~

#i didn't know this /clone syntax existed until i looked it up just now
#and thank god it does. wow. getting the podium into another dimension would SUCK otherwise