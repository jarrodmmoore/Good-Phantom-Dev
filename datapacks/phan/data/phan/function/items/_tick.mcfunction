#main loop for "multiplayer" items
#(i say multiplayer, but these items are also given in other modes sometimes because they're fun)

#=====
#handle item right clicks
execute as @a[tag=doneWithIntro,gamemode=adventure,scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{rightclick:1b}] at @s run function phan:items/use/_index
#yeah it's a bit redundant having a second item usage handler but I wanted to put all the multiplayer items in here for organization
#=====

#deal with all items drops
execute as @e[type=item] run function phan:items/item_entity_check


#cooldowns for getting certain items from chests
execute if score #gameState value matches 4 run function phan:items/random/pick_cooldowns


#tnt
execute as @e[type=tnt] at @s run function phan:items/tnt


#keep track of whether an enderman thief is active
execute if score #activeEnderman value matches 1.. run scoreboard players remove #activeEnderman value 1


#various ticking objects
execute as @e[tag=tickObject] run function phan:items/object_tick


#ender pearl particles and logic
execute as @e[type=ender_pearl] at @s run function phan:items/ender_pearl_generic