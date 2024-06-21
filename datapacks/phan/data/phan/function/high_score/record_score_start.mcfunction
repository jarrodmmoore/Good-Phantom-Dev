#run by player

#score is stored in @s scoreShow

#################
#assist mode is on? notify the player and kick out of this function
execute if score #assist_enabled value matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"[ ! ]","color":"#DD33FF","bold":true},{"text":" "},{"translate":"gp.assist.info.scores_will_not_be_saved","with":[{"translate":"gp.assist.assist_mode","color":"#DD33FF","bold":false,"italic":false}],"bold":false,"italic":false},{"text":"\n"}]
execute if score #assist_enabled value matches 1.. run return 0
#################

#a score is getting recorded! count up the number of times this has happened.
execute if score #scoresRecorded value matches ..2147483646 run scoreboard players add #scoresRecorded value 1

#get player name
tag @s add self
data modify storage phan:data tag.name set value '{"selector":"@a[limit=1,tag=self]","color":"white"}'

#get score
scoreboard players operation #inputScore value = @s scoreShow

#get playerID
scoreboard players operation #inputID value = @s playerID

#get rank
scoreboard players set #inputRank value 4
execute if score @s scoreShow > #scoreRankCT value run scoreboard players set #inputRank value 3
execute if score @s scoreShow > #scoreRankBT value run scoreboard players set #inputRank value 2
execute if score @s scoreShow > #scoreRankAT value run scoreboard players set #inputRank value 1
execute if score @s scoreShow > #scoreRankST value run scoreboard players set #inputRank value 0

#run comparisons and record data on the corresponding level armor_stand
execute if score #chosenLevel value matches 1 as @e[type=armor_stand,tag=randomize,scores={r=1}] positioned 214 -16 106 run function phan:high_score/record_score_marker
execute if score #chosenLevel value matches 2 as @e[type=armor_stand,tag=randomize,scores={r=2}] positioned 213 -16 106 run function phan:high_score/record_score_marker
execute if score #chosenLevel value matches 3 as @e[type=armor_stand,tag=randomize,scores={r=3}] positioned 212 -16 106 run function phan:high_score/record_score_marker
execute if score #chosenLevel value matches 4 as @e[type=armor_stand,tag=randomize,scores={r=4}] positioned 211 -16 106 run function phan:high_score/record_score_marker
execute if score #chosenLevel value matches 5 as @e[type=armor_stand,tag=randomize,scores={r=5}] positioned 210 -16 106 run function phan:high_score/record_score_marker
execute if score #chosenLevel value matches 6 as @e[type=armor_stand,tag=randomize,scores={r=6}] positioned 209 -16 106 run function phan:high_score/record_score_marker
execute if score #chosenLevel value matches 7 as @e[type=armor_stand,tag=randomize,scores={r=7}] positioned 208 -16 106 run function phan:high_score/record_score_marker
execute if score #chosenLevel value matches 8 as @e[type=armor_stand,tag=randomize,scores={r=8}] positioned 207 -16 106 run function phan:high_score/record_score_marker
execute if score #chosenLevel value matches 9 as @e[type=armor_stand,tag=randomize,scores={r=9}] positioned 206 -16 106 run function phan:high_score/record_score_marker
execute if score #chosenLevel value matches 10 as @e[type=armor_stand,tag=randomize,scores={r=10}] positioned 205 -16 106 run function phan:high_score/record_score_marker

#clean up tags
tag @s remove self