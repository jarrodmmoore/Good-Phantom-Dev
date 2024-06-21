#conditions
time set 6000
weather clear

#skybox
#default skybox (visible in act 1) is sky
scoreboard players set @a skyboxSet 1
#underwater skybox is used in act 3
scoreboard players set @a[scores={pCurrentArea=3..}] skyboxSet 2

#music stops upon entering portal 1 in singleplayer
scoreboard players set #portal1StopsMusic value 1