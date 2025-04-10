tellraw @s ["",{text:"(event: enter/cancel improv flight)",italic:true}]
execute unless score @s AIBC_modifier matches 1 unless score @s AIBC_modifier matches -3..-1 run tellraw @s ["",{text:"(enter improv)",italic:true}]
execute if score @s AIBC_modifier matches 1 run tellraw @s ["",{text:"(cancel improv)",italic:true}]