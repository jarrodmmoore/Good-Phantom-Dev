#re-summon leaderboards
kill @e[tag=leaderboardDisplay,type=text_display]

#show obsolete scores?
execute if score #scoresRecorded value matches 1.. if score #showUniqueScores value matches 0 run summon text_display 194 -10 125 {Tags:["lobbyProp","leaderboardDisplay","rotateText"],line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'{"translate":"gp.leaderboard.obsolete_scores","fallback":"Obsolete scores: shown","with":[{"translate":"gp.leaderboard.shown","color":"yellow"}],"color":"white"}'}
execute if score #scoresRecorded value matches 1.. if score #showUniqueScores value matches 1 run summon text_display 194 -10 125 {Tags:["lobbyProp","leaderboardDisplay","rotateText"],line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'{"translate":"gp.leaderboard.obsolete_scores","fallback":"Obsolete scores: hidden","with":[{"translate":"gp.leaderboard.hidden","color":"yellow"}],"color":"white"}'}
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~5 ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#pastel palace
#score
execute if score #showUniqueScores value matches 0 positioned 214 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream1Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=1}] positioned 200 3 135 positioned ~ ~ ~0.5 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 214 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream1Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=1}] positioned 200 3 135 positioned ~ ~ ~0.5 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ -90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 214 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream1Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=1}] positioned 209 3 135 positioned ~ ~ ~0.5 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 214 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream1Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=1}] positioned 209 3 135 positioned ~ ~ ~0.5 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#moonlit mountains
#score
execute if score #showUniqueScores value matches 0 positioned 213 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream2Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=2}] positioned 209 3 100 positioned ~ ~ ~0.5 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 213 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream2Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=2}] positioned 209 3 100 positioned ~ ~ ~0.5 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 213 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream2Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=2}] positioned 200 3 100 positioned ~ ~ ~0.5 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 213 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream2Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=2}] positioned 200 3 100 positioned ~ ~ ~0.5 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ -90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#shattered city
#score
execute if score #showUniqueScores value matches 0 positioned 212 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream3Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=3}] positioned 219 3 122 positioned ~0.5 ~-0.5 ~ unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 212 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream3Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=3}] positioned 219 3 122 positioned ~0.5 ~-0.5 ~ unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 212 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream3Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=3}] positioned 219 3 114 positioned ~0.5 ~-0.5 ~ unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 212 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream3Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=3}] positioned 219 3 114 positioned ~0.5 ~-0.5 ~ unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#neon nightway
#score
execute if score #showUniqueScores value matches 0 positioned 211 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream4Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=4}] positioned 200 -4 135 positioned ~0.6 ~ ~0.5 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 211 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream4Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=4}] positioned 200 -4 135 positioned ~0.6 ~ ~0.5 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ -90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 211 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream4Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=4}] positioned 209 -4 135 positioned ~ ~ ~0.5 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 211 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream4Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=4}] positioned 209 -4 135 positioned ~ ~ ~0.5 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#deep dive
#score
execute if score #showUniqueScores value matches 0 positioned 210 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream5Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=5}] positioned 209 -4 100 positioned ~ ~ ~0.5 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 210 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream5Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=5}] positioned 209 -4 100 positioned ~ ~ ~0.5 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 210 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream5Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=5}] positioned 200 -4 100 positioned ~ ~ ~0.5 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 210 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream5Completed value matches 1 as @e[tag=randomize,type=armor_stand,scores={r=5}] positioned 200 -4 100 positioned ~ ~ ~0.5 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ -90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText