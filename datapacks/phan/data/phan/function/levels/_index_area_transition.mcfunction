execute if score #chosenLevel value matches 1 run function phan:levels/pastel_palace/_area_transitions
execute if score #chosenLevel value matches 2 run function phan:levels/moonlit_mountains/_area_transitions
execute if score #chosenLevel value matches 3 run function phan:levels/shattered_city/_area_transitions
execute if score #chosenLevel value matches 4 run function phan:levels/neon_nightway/_area_transitions
execute if score #chosenLevel value matches 5 run function phan:levels/deep_dive/_area_transitions

#count up how far we've gone
scoreboard players add #pTransitionProgress value 1

#progress 140? done.
execute if score #pCurrentArea value matches 4.. if score #pTransitionProgress value matches 100140 run scoreboard players set #pGameTime value 100140