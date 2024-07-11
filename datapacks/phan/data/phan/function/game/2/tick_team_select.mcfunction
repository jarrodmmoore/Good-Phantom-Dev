#if an item gets picked up, that means we selected that thing
execute as @a if items entity @s hotbar.* *[custom_data~{modeSelectCabin:1b}] at @s run function phan:game/2/try_return_to_cabin

#stop spectating admin if they exist
execute if score #forceSpecAdmin value matches 1 positioned 198 -30 118 run function phan:game/2/force_spectate_admin_exit

#players check what they're standing on
execute as @a[tag=doneWithIntro] at @s run function phan:game/2/player_check_team_request

#particles to indicate player team request
execute as @a[limit=4,sort=random,scores={teamRequest=1}] at @s run particle dust{color:[0.8,0.0,1.0],scale:1} ~ ~1 ~ 0.2 0.4 0.2 1 1 force @a[tag=doneWithIntro]
execute as @a[limit=4,sort=random,scores={teamRequest=2}] at @s run particle dust{color:[0.2,0.5,1.0],scale:1} ~ ~1 ~ 0.2 0.4 0.2 1 1 force @a[tag=doneWithIntro]

#portal race: can add bots!
execute if score #desiredGamemode value matches 3 run function phan:game/2/bots/tick
scoreboard players set @e[tag=botPreviewEntity,type=zombie] lifespan 5
execute as @e[tag=botPreviewEntity,type=zombie,limit=4,sort=random] at @s run particle dust{color:[0.2,0.5,1.0],scale:1} ~ ~1 ~ 0.2 0.4 0.2 1 1 force @a[tag=doneWithIntro]

#if there's at least one player, start counting down to game start
execute store result score #countPlayers value run execute if entity @a
execute if entity @a[tag=doneWithIntro,scores={teamRequest=2}] run scoreboard players remove #timeUntilStart value 1
execute if score #countPlayers value matches 1 if entity @a[tag=doneWithIntro,scores={teamRequest=2}] run scoreboard players remove #timeUntilStart value 1
execute if score #10Hz value matches 0 if score #timeUntilStart value matches ..199 unless entity @a[tag=doneWithIntro,scores={teamRequest=2}] run scoreboard players add #timeUntilStart value 1
execute if score #timeUntilStart value matches ..19 unless entity @a[tag=doneWithIntro,scores={teamRequest=2}] run scoreboard players set #timeUntilStart value 20
execute store result bossbar general_bossbar value run scoreboard players get #timeUntilStart value

#figure out who's gonna play
execute if score #timeUntilStart value matches ..0 run function phan:game/2/finalize_teams

#return to cabin thing must always exist!
execute if score #gameState value matches 2 unless entity @e[type=item,tag=modeSelect] run summon item 191 -29 118 {Tags:["stay","lobbyProp","modeSelect"],PickupDelay:40,Age:-32768,NoGravity:1b,Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_name":'{"translate":"gp.mode_select.return_to_cabin","color":"dark_green","italic":false}',"minecraft:hide_additional_tooltip":{},"minecraft:custom_data":{modeSelectCabin:1b}}}}