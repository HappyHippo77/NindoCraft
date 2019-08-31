execute if score @s hh.statPoints matches 0 run tellraw @s {"text":"You don't have any Stat Points!!!","bold":true,"color":"red"}
execute if score @s hh.ninjutsu matches 18.. run tellraw @s {"text":"You have reached the current max for this type of stat, more will come in future updates","bold":true,"color":"red"}
execute if score @s hh.statPoints matches 1.. unless score @s hh.ninjutsu matches 19.. run scoreboard players add @s hh.ninjutsu 1
execute if score @s hh.statPoints matches 1.. unless score @s hh.ninjutsu matches 19.. run scoreboard players set @s an.success 1
execute if score @s hh.statPoints matches 1.. unless score @s hh.ninjutsu matches 19.. run scoreboard players remove @s hh.statPoints 1
execute as @s run function hh.nindocraft:statgui