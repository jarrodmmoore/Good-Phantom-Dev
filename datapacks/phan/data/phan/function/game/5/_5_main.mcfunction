#count up gameTime
scoreboard players add #gameTime value 1

#run the podium sequence!
function phan:game/5/podium_sequence

#night vision?
execute if score #nightVision value matches 1 unless score #gameState value matches 0 run effect give @a[tag=doneWithIntro] night_vision infinite 1 true