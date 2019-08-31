#execute if score @s hh.statPoints matches 0 run tellraw @s {"text":"You don't have any Stat Points!!!","bold":true,"color":"red"}
#execute if score @s hh.taijutsu matches 10.. run tellraw @s {"text":"You have reached the current max for this type of stat, more will come in future updates","bold":true,"color":"red"}
#execute if score @s hh.statPoints matches 1.. unless score @s hh.taijutsu matches 10.. run scoreboard players add @s hh.taijutsu 1
#execute if score @s hh.statPoints matches 1.. unless score @s hh.taijutsu matches 10.. run scoreboard players remove @s hh.statPoints 1
#execute as @s run function hh.nindocraft:statgui
tellraw @s {"text":"Sorry, this feature isn't implemented yet. Stay tuned for future updates!","bold":true,"color":"aqua"}
execute as @s run function hh.nindocraft:statgui