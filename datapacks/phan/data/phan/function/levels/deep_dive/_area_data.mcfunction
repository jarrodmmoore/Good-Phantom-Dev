#deep dive

#time attack times
scoreboard players set #timeBronze value 8500
scoreboard players set #timeSilver value 6200
scoreboard players set #timeGold value 5100
scoreboard players set #timeDiamond value 4500

#pearls, time limit, and score for each area

#act 1
scoreboard players set @s[tag=playing,scores={pCurrentArea=1}] pPearlsNeeded 16
scoreboard players set @s[tag=playing,scores={pCurrentArea=1}] pTimeRemaining 2509
scoreboard players set #scoreRankS1 value 75000
scoreboard players set #scoreRankA1 value 60000
scoreboard players set #scoreRankB1 value 35000
scoreboard players set #scoreRankC1 value 20000
scoreboard players set #targetTimeAct1 value 90

#act 2
scoreboard players set @s[tag=playing,scores={pCurrentArea=2}] pPearlsNeeded 20
scoreboard players set @s[tag=playing,scores={pCurrentArea=2}] pTimeRemaining 3019
scoreboard players set #scoreRankS2 value 80000
scoreboard players set #scoreRankA2 value 65000
scoreboard players set #scoreRankB2 value 42500
scoreboard players set #scoreRankC2 value 27500
scoreboard players set #targetTimeAct2 value 120

#act 3
scoreboard players set @s[tag=playing,scores={pCurrentArea=3}] pPearlsNeeded 24
scoreboard players set @s[tag=playing,scores={pCurrentArea=3}] pTimeRemaining 2609
scoreboard players set #scoreRankS3 value 70000
scoreboard players set #scoreRankA3 value 55000
scoreboard players set #scoreRankB3 value 30000
scoreboard players set #scoreRankC3 value 15000
scoreboard players set #targetTimeAct3 value 100


#skybox
#default skybox (visible in act 1) is sky
scoreboard players set @a skyboxSet 1
#underwater skybox is used in act 3
scoreboard players set @a[scores={pCurrentArea=3..}] skyboxSet 2