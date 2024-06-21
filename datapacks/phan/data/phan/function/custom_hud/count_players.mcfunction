scoreboard players set #hudPlayerCount value 0
execute as @a[tag=playing] run scoreboard players add #hudPlayerCount value 1
execute as @a[tag=playerReservation,tag=!playing] run scoreboard players add #hudPlayerCount value 1
#to avoid any issues due to player disconnects, we're going to use the peak player count, not the current player count
execute if score #hudPlayerCount value > #hudPeakPlayers value run scoreboard players operation #hudPeakPlayers value = #hudPlayerCount value
scoreboard players set #posDisplayDigits value 1
#use 2 digits when there's more than 10 players
execute if score #hudPeakPlayers value matches 10.. run scoreboard players set #posDisplayDigits value 2