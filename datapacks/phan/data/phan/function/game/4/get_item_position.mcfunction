#get position among finished players
scoreboard players operation @s itemPosition = @s racePosDisplay
scoreboard players operation @s itemPosition -= #positionAssignMin value
scoreboard players add @s itemPosition 1