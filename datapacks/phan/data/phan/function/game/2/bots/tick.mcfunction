execute if score #requireAdmin value matches 1 as @a[tag=admin,tag=doneWithIntro] run function phan:game/2/bots/player_hotbar_menu
execute if score #requireAdmin value matches 1 as @a[tag=!admin,tag=doneWithIntro] run function phan:game/2/bots/player_hotbar_menu_empty
execute unless score #requireAdmin value matches 1 as @a[tag=doneWithIntro] run function phan:game/2/bots/player_hotbar_menu