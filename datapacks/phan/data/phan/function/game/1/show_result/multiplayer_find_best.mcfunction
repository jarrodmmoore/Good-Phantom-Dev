#this is in its own function to avoid an execution context bug (???)
execute if score @s multiplayerNumber > #best value run scoreboard players operation #best value = @s multiplayerNumber