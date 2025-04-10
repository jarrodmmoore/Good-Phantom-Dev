#set the active track to whatever was selected in the menu

#name of chosen level should be discovered now
function phan:levels/_index_discover_dream

#set game parameters
scoreboard players set #grandPrixActive value -1
scoreboard players set #freePlay value 1
scoreboard players operation #freePlayAct value = #vAct value

#multiplayer: snitch on who did this
execute store result score #test value run execute if entity @a[tag=doneWithIntro]
execute as @e[type=armor_stand,tag=gameControllerPlayerHolder,distance=..10] on passengers if entity @s[tag=debugMultiplayer] run scoreboard players set #test value 2
execute if score #test value matches 2.. as @e[type=armor_stand,tag=gameControllerPlayerHolder,distance=..10] on passengers run tellraw @a[tag=doneWithIntro] ["",{text:"(",color:"gray"},{selector:"@s",color:"gray"},{text:")",color:"gray"},{text:" "},{translate:"gp.phantom_racer.started_a_race",color:"white"}]

#send players to the place
function phan:game/2/_2_init
scoreboard players operation #showActNumber value = #freePlayAct value
function phan:game/2/start_mode_versus