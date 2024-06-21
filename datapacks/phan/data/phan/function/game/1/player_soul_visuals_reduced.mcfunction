#delay particles to account for tp interpolation
summon area_effect_cloud ~ ~ ~ {Tags:["soulNeedsInterp","soulVisualsReduced","summonAfterImages"],Duration:10}

#particles
execute if score #5Hz value matches 1 run particle end_rod ~ ~ ~ 0.3 0.3 0.3 0 1 force @a

#shrinking border after images (CUT due to client renderer being uncooperative)
#execute if score #10Hz value matches 1 run summon item_display ~ ~ ~ {Tags:["setme","soulNeedsInterp"]}
#scoreboard players set @e[tag=setme] lifespan 20
#tag @e[tag=setme] remove setme