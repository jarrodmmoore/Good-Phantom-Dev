#executed by the player that just got hit with a reflected projectile
scoreboard players operation #getID2 value = @s attackerID
execute as @a[tag=doneWithIntro] if score @s playerID = #getID2 value unless score @s playerID = #getID3 value run advancement grant @s only phan:portal_race/return_to_sender