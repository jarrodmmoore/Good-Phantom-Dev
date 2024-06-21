scoreboard players add @s combo 1
scoreboard players set @s[scores={comboTime=..39}] comboTime 40
execute if score #assist_combos value matches 1.. run scoreboard players set @s[scores={comboTime=..59}] comboTime 60

#keep track of what our highest combo is
execute if score @s combo > @s highestCombo run scoreboard players operation @s highestCombo = @s combo