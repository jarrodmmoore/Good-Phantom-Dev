tellraw @s ["",{text:"(event: enter/cancel flight)",italic:true}]
execute unless score @s AIBC_modifier matches 1..3 unless score @s AIBC_modifier matches -3..-1 run tellraw @s ["",{text:"(enter flight)",italic:true}]
execute if score @s AIBC_modifier matches 1 run tellraw @s ["",{text:"(enter flight, spam jump)",italic:true}]
execute if score @s AIBC_modifier matches 2 run tellraw @s ["",{text:"(enter flight at next ledge)",italic:true}]
execute if score @s AIBC_modifier matches 3 run tellraw @s ["",{text:"(cancel flight)",italic:true}]

execute if score @s AIBC_modifier matches -1 run tellraw @s ["",{text:"(enter flight, vault upwards)",italic:true}]
execute if score @s AIBC_modifier matches -2 run tellraw @s ["",{text:"(enter flight, vault upwards, spam jump)",italic:true}]
execute if score @s AIBC_modifier matches -3 run tellraw @s ["",{text:"(enter flight & vault upwards at ledge)",italic:true}]