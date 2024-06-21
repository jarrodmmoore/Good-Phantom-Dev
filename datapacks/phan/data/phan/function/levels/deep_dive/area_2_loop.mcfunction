#remove night vision from previous act
execute if score #5Hz value matches 2 run effect clear @a[tag=playing,scores={pCurrentArea=2}] night_vision