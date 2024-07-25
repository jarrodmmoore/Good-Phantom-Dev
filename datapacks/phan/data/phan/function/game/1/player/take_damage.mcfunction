execute if entity @e[tag=hurtful,distance=..5] run scoreboard players set @s hurtfulTime 1
scoreboard players set #getGot value 0
execute on attacker if entity @s[type=player,tag=playing] run scoreboard players set #getGot value 1
execute on attacker if entity @s[tag=ai] run scoreboard players set #getGot value 1
execute on attacker if entity @s[tag=hurtful] run scoreboard players set #getGot value 1
execute if score #getGot value matches 1.. run scoreboard players set @s hurtfulTime 1

#lose 3sec for getting hit in score attack mode
execute if score #gameState value matches 0..1 run scoreboard players remove @s[scores={hurtfulTime=1..,hitstun=..0}] timerAdd 3
execute if score #gameState value matches 0..1 run scoreboard players set @s[scores={hurtfulTime=1..,hitstun=..0}] timerAddDelay 20

#check if we got hurt by a player
scoreboard players set #findAttacker value -1
execute on attacker if entity @s[type=player,tag=playing] run scoreboard players operation #findAttacker value = @s playerID
execute on attacker if entity @s[tag=ai] run scoreboard players operation #findAttacker value = @s playerID
execute if score #findAttacker value matches 1.. run scoreboard players operation @s attackerID = #findAttacker value

#play hitsound for player that hit us
scoreboard players operation #attackerID value = @s attackerID
execute if entity @s[scores={hurtfulTime=1..,attackTime=1..}] unless score @s playerID = @s attackerID as @a[tag=playing] if score @s playerID = #attackerID value at @s run playsound minecraft:custom_sfx/hitsound master @s ~ 100000 ~ 100000 1.5

#portal race mode: lose velocity if we're gliding and got hit with something hurtful
execute if score #gameState value matches 4 if entity @s[scores={hurtfulTime=1..,fallFlying=1..}] at @s run tp @s @s
execute if score #gameState value matches 4 if entity @s[tag=ai,scores={hurtfulTime=1..,fallFlying=1..}] on vehicle if entity @s[tag=botElytraHeightFix] on vehicle if entity @s[tag=botElytra] run function phan:bots/movement/2_gliding/lose_momentum

#battle mode: got hit by a player? die.
execute if score #gameState value matches 4 if score #vGameType value matches 2 if score @s hurtfulTime matches 1.. run function phan:game/4/battle/die_from_attack

#count how many times we've taken damage
scoreboard players add @s[scores={hurtfulTime=1..}] timesBeenHit 1

#slow and invulnerable for 1.5 sec
scoreboard players set @s[scores={hurtfulTime=1..}] hitstun 30