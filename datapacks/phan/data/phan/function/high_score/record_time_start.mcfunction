#executed by player

#score is stored in @s rawTime

#=====
#assist mode is on? notify the player and kick out of this function
execute if score #assist_enabled_scoreattack value matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"[ ! ]","color":"#DD33FF","bold":true},{"text":" "},{"translate":"gp.assist.info.scores_will_not_be_saved","with":[{"translate":"gp.assist.assist_mode","color":"#DD33FF","bold":false,"italic":false}],"bold":false,"italic":false},{"text":"\n"}]
execute if score #assist_enabled_scoreattack value matches 1.. run return 0
#=====

#a score is getting recorded! count up the number of times this has happened.
execute if score #scoresRecorded value matches ..2147483646 run scoreboard players add #scoresRecorded value 1

#get player name
tag @s add self
data modify storage phan:data tag.name set value '{"selector":"@a[limit=1,tag=self]","color":"white"}'

#get score
scoreboard players operation #inputScore value = @s rawTime

#get playerID
scoreboard players operation #inputID value = @s playerID

#get rank (what medal we got)
scoreboard players set #inputRank value 5
execute if score @s rawTime <= #timeBronze value run scoreboard players set #inputRank value 4
execute if score @s rawTime <= #timeSilver value run scoreboard players set #inputRank value 3
execute if score @s rawTime <= #timeGold value run scoreboard players set #inputRank value 2
execute if score @s rawTime <= #timeDiamond value run scoreboard players set #inputRank value 1

#record what medal we got as an individual player
scoreboard players operation @s rankFinal = #inputRank value
execute if score #assist_enabled_scoreattack value matches 0 run function phan:levels/_index_record_best_medal

#run comparisons and record data on the corresponding level armor_stand
execute if score #chosenLevel value matches 1 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1}] positioned 214 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 2 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=2}] positioned 213 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 3 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=3}] positioned 212 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 4 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=4}] positioned 211 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 5 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=5}] positioned 210 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 6 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=6}] positioned 209 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 7 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=7}] positioned 208 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 8 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=8}] positioned 207 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 9 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=9}] positioned 206 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 10 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=10}] positioned 205 -16 118 run function phan:high_score/record_time_marker

execute if score #chosenLevel value matches 1001 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1001}] positioned 189 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 1002 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1002}] positioned 190 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 1003 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1003}] positioned 191 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 1004 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1004}] positioned 192 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 1005 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1005}] positioned 193 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 1006 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1006}] positioned 194 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 1007 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1007}] positioned 195 -16 118 run function phan:high_score/record_time_marker
execute if score #chosenLevel value matches 1008 as @e[type=armor_stand,tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,scores={levelUID=1008}] positioned 196 -16 118 run function phan:high_score/record_time_marker

#clean up tags
tag @s remove self