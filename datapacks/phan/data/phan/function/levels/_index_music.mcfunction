#this only gets run in score attack mode

#we'll just go with whatever act 1's song is. this probably won't actually get used
execute store result score #bgm value run data get storage phan_dream_active:sa_act_1 music_track

#old, hard-coded
#execute if score #chosenLevel value matches 1 run scoreboard players set #bgm value 1
#execute if score #chosenLevel value matches 2 run scoreboard players set #bgm value 2
#execute if score #chosenLevel value matches 3 run scoreboard players set #bgm value 3
#execute if score #chosenLevel value matches 4 run scoreboard players set #bgm value 10
#execute if score #chosenLevel value matches 5 run scoreboard players set #bgm value 9