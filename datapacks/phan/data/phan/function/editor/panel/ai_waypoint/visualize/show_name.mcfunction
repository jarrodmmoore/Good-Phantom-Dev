#these aecs die fast and never get scores so hopefully they won't bloat scoreboard.dat or entity region files

#show name
$summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"waypoint $(number)","color":"red"}]'}

#show other slower particles while we're in here
execute if entity @s[tag=AIBC_midAir] run particle cloud ~ ~ ~ 0.25 0.25 0.25 0.05 1 force
execute if entity @s[tag=AIBC_requireGround] run particle block{block_state:"minecraft:stone"} ~ ~-.1 ~ 0.25 0 0.25 0 3 force

#hook
execute if entity @s[tag=AIBC_hookLeft,tag=!AIBC_hookRight] run return run summon area_effect_cloud ~ ~-.2 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"<-","color":"white"}]'}
execute if entity @s[tag=!AIBC_hookLeft,tag=AIBC_hookRight] run return run summon area_effect_cloud ~ ~-.2 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"->","color":"white"}]'}
execute if entity @s[tag=AIBC_hookLeft,tag=AIBC_hookRight] run summon area_effect_cloud ~ ~-.2 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"<- ->","color":"white"}]'}
