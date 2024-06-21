#fail if admin required and we're not admin
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run function phan:game/0/admin_required
execute if score #requireAdmin value matches 1 unless entity @s[tag=admin] run return 0

#set song for all players NOT in the practice area
$scoreboard players set #bgm value $(song)
execute as @a[tag=!playing] run function phan:bgm/adopt_global_music_track
execute as @a[tag=!playing] run function phan:bgm/set_self_bgm_delayed_3

#start showing jukebox particles
scoreboard players set #lobbyJukebox value 1

#feedback noise
execute positioned 200 -7 136 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 3