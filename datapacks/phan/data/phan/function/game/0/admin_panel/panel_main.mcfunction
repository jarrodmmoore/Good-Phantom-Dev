#this used to be an index for multiple pages, but now there's just one page.
#Free Play mode was moved out of the admin menu. locking it behind admin was pretty dumb

execute if score @s enderChestMenu matches ..1 run function phan:game/0/admin_panel/panel_primary_menu
#...