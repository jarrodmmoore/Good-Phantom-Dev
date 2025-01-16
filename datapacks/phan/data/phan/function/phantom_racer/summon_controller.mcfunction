#clear old controller if it exists
kill @e[type=item,tag=gameController]

#summon it
execute positioned 238 -8 118 positioned ~.5 ~.5 ~ run summon item ~ ~ ~ {Tags:["stay","gameController","lobbyProp"],PickupDelay:32767,Invulnerable:true,Item:{id:"stone",components:{"item_model":"gp/object/console_controller"}}}