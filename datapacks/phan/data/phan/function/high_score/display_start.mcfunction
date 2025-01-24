#re-summon leaderboards
kill @e[tag=leaderboardDisplay,type=text_display]

#show obsolete scores?
execute if score #scoresRecorded value matches 1.. if score #showUniqueScores value matches 0 run summon text_display 194 -10 125 {Tags:["lobbyProp","leaderboardDisplay","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'{"translate":"gp.leaderboard.obsolete_scores","fallback":"Obsolete scores: shown","with":[{"translate":"gp.leaderboard.shown","color":"yellow"}],"color":"white"}'}
execute if score #scoresRecorded value matches 1.. if score #showUniqueScores value matches 1 run summon text_display 194 -10 125 {Tags:["lobbyProp","leaderboardDisplay","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'{"translate":"gp.leaderboard.obsolete_scores","fallback":"Obsolete scores: hidden","with":[{"translate":"gp.leaderboard.hidden","color":"yellow"}],"color":"white"}'}
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~5 ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText




#v1.0 DREAMS

#pastel palace
#score
execute if score #showUniqueScores value matches 0 positioned 214 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream1Completed value matches 1 as 00000000-0000-0328-0000-000000000001 positioned 200 3 135 positioned ~ ~ ~0.5 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 214 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream1Completed value matches 1 as 00000000-0000-0328-0000-000000000001 positioned 200 3 135 positioned ~ ~ ~0.5 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ -90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 214 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream1Completed value matches 1 as 00000000-0000-0328-0000-000000000001 positioned 209 3 135 positioned ~ ~ ~0.5 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 214 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream1Completed value matches 1 as 00000000-0000-0328-0000-000000000001 positioned 209 3 135 positioned ~ ~ ~0.5 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#moonlit mountains
#score
execute if score #showUniqueScores value matches 0 positioned 213 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream2Completed value matches 1 as 00000000-0000-0328-0000-000000000002 positioned 209 3 100 positioned ~ ~ ~0.5 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 213 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream2Completed value matches 1 as 00000000-0000-0328-0000-000000000002 positioned 209 3 100 positioned ~ ~ ~0.5 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 213 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream2Completed value matches 1 as 00000000-0000-0328-0000-000000000002 positioned 200 3 100 positioned ~ ~ ~0.5 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 213 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream2Completed value matches 1 as 00000000-0000-0328-0000-000000000002 positioned 200 3 100 positioned ~ ~ ~0.5 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ -90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#shattered city
#score
execute if score #showUniqueScores value matches 0 positioned 212 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream3Completed value matches 1 as 00000000-0000-0328-0000-000000000003 positioned 219 3 122 positioned ~0.5 ~-0.5 ~ unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 212 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream3Completed value matches 1 as 00000000-0000-0328-0000-000000000003 positioned 219 3 122 positioned ~0.5 ~-0.5 ~ unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 212 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream3Completed value matches 1 as 00000000-0000-0328-0000-000000000003 positioned 219 3 114 positioned ~0.5 ~-0.5 ~ unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 212 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream3Completed value matches 1 as 00000000-0000-0328-0000-000000000003 positioned 219 3 114 positioned ~0.5 ~-0.5 ~ unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#neon nightway
#score
execute if score #showUniqueScores value matches 0 positioned 211 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream4Completed value matches 1 as 00000000-0000-0328-0000-000000000004 positioned 200 -4 135 positioned ~0.6 ~ ~0.5 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 211 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream4Completed value matches 1 as 00000000-0000-0328-0000-000000000004 positioned 200 -4 135 positioned ~0.6 ~ ~0.5 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ -90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 211 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream4Completed value matches 1 as 00000000-0000-0328-0000-000000000004 positioned 209 -4 135 positioned ~ ~ ~0.5 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 211 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream4Completed value matches 1 as 00000000-0000-0328-0000-000000000004 positioned 209 -4 135 positioned ~ ~ ~0.5 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#deep dive
#score
execute if score #showUniqueScores value matches 0 positioned 210 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream5Completed value matches 1 as 00000000-0000-0328-0000-000000000005 positioned 209 -4 100 positioned ~ ~ ~0.5 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 210 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream5Completed value matches 1 as 00000000-0000-0328-0000-000000000005 positioned 209 -4 100 positioned ~ ~ ~0.5 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 210 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 if score #dream5Completed value matches 1 as 00000000-0000-0328-0000-000000000005 positioned 200 -4 100 positioned ~ ~ ~0.5 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 210 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 if score #dream5Completed value matches 1 as 00000000-0000-0328-0000-000000000005 positioned 200 -4 100 positioned ~ ~ ~0.5 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ -90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText




#bonus dreams

#phantom forest
#score
execute if score #showUniqueScores value matches 0 positioned 209 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000006 positioned 227 -6 92 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 209 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000006 positioned 227 -6 92 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 209 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000006 positioned 227 -6 99 positioned ~0.5 ~0.5 ~0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 209 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000006 positioned 227 -6 99 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#afterlife
#score
execute if score #showUniqueScores value matches 0 positioned 208 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000010 positioned 245 -6 99 positioned ~0.5 ~0.5 ~0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 208 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000010 positioned 245 -6 99 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 208 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000010 positioned 245 -6 92 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 208 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000010 positioned 245 -6 92 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText



#CUSTOM

#custom 1
#score
execute if score #showUniqueScores value matches 0 positioned 189 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000010 positioned 245 -6 144 positioned ~0.5 ~0.5 ~0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 189 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000010 positioned 245 -6 144 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 189 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000010 positioned 245 -6 137 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 189 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000010 positioned 245 -6 137 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#custom 2
#score
execute if score #showUniqueScores value matches 0 positioned 190 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000011 positioned 245 -6 157 positioned ~0.5 ~0.5 ~0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 190 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000011 positioned 245 -6 157 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 190 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000011 positioned 245 -6 150 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 190 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000011 positioned 245 -6 150 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#custom 3
#score
execute if score #showUniqueScores value matches 0 positioned 191 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000012 positioned 245 -6 170 positioned ~0.5 ~0.5 ~0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 191 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000012 positioned 245 -6 170 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 191 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000012 positioned 245 -6 163 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 191 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000012 positioned 245 -6 163 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#custom 4
#score
execute if score #showUniqueScores value matches 0 positioned 192 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000013 positioned 245 -6 183 positioned ~0.5 ~0.5 ~0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 192 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000013 positioned 245 -6 183 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 192 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000013 positioned 245 -6 176 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 192 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000013 positioned 245 -6 176 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#custom 5
#score
execute if score #showUniqueScores value matches 0 positioned 193 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000014 positioned 227 -6 137 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 193 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000014 positioned 227 -6 137 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 193 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000014 positioned 227 -6 144 positioned ~0.5 ~0.5 ~0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 193 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000014 positioned 227 -6 144 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#custom 6
#score
execute if score #showUniqueScores value matches 0 positioned 194 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000015 positioned 227 -6 150 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 194 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000015 positioned 227 -6 150 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 194 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000015 positioned 227 -6 157 positioned ~0.5 ~0.5 ~0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 194 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000015 positioned 227 -6 157 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#custom 7
#score
execute if score #showUniqueScores value matches 0 positioned 195 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000016 positioned 227 -6 163 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 195 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000016 positioned 227 -6 163 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 195 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000016 positioned 227 -6 170 positioned ~0.5 ~0.5 ~0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 195 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000016 positioned 227 -6 170 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#custom 8
#score
execute if score #showUniqueScores value matches 0 positioned 196 -16 106 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000017 positioned 227 -6 176 positioned ~0.5 ~0.5 ~-0.45 unless score @s bestScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score
execute if score #showUniqueScores value matches 1 positioned 196 -16 112 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000017 positioned 227 -6 176 positioned ~0.5 ~0.5 ~-0.45 unless score @s uniqueScore1 matches -1 run function phan:high_score/display_summon_leaderboard_score_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 0 ~
tag @e[tag=rotateText,type=text_display] remove rotateText
#time
execute if score #showUniqueScores value matches 0 positioned 196 -16 118 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 0 as 00000000-0000-0328-0000-000000000017 positioned 227 -6 183 positioned ~0.5 ~0.5 ~0.45 unless score @s bestTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time
execute if score #showUniqueScores value matches 1 positioned 196 -16 124 run function phan:high_score/fetch_sign_strings
execute if score #showUniqueScores value matches 1 as 00000000-0000-0328-0000-000000000017 positioned 227 -6 183 positioned ~0.5 ~0.5 ~0.45 unless score @s uniqueTime1 matches 2147483647 run function phan:high_score/display_summon_leaderboard_time_unique
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~ ~ 180 ~
tag @e[tag=rotateText,type=text_display] remove rotateText