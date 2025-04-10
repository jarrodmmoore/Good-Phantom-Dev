#my first thought was to use the built-in text backgrounds as an easy way to indicate what's selected
#but unfortunately this causes render problems with the tv model behind it

#ok, time for plan b (enter shikari)

#text_display with item_display (highlight) as passenger

execute positioned ~ ~.7 ~1.6 run summon text_display ~ ~ ~ {Tags:["lobbyProp","tvText","tvGrandPrix","tvProp"],alignment:"center",text:["",{translate:"gp.phantom_racer.grand_prix"}],transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},background:16777215,Passengers:[{id:"item_display",Tags:["lobbyProp","tvProp","tvTextHighlight"],item:{id:"stone",components:{"item_model":"gp/tv_gui/square"}},transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0.02f,0.145f,0f],scale:[0.0f,0.25f,1.0f]}}]}

execute positioned ~ ~.2 ~1.6 run summon text_display ~ ~ ~ {Tags:["lobbyProp","tvText","tvFreePlay","tvProp"],alignment:"center",text:["",{translate:"gp.phantom_racer.free_play"}],transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},background:16777215,Passengers:[{id:"item_display",Tags:["lobbyProp","tvProp","tvTextHighlight"],item:{id:"stone",components:{"item_model":"gp/tv_gui/square"}},transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0.02f,0.145f,0f],scale:[0.0f,0.25f,1.0f]}}]}

#copy-paste this whenever text needs an assigned highlight:
# ,Passengers:[{id:"item_display",Tags:["lobbyProp","tvProp","tvTextHighlight"],item:{id:"stone",components:{"item_model":"gp/tv_gui/square_animated"}},transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0.02f,0.145f,0f],scale:[0.0f,0.25f,1.0f]}}]
