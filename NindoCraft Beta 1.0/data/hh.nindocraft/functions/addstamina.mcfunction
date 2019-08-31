execute if score @s hh.statPoints matches 0 run tellraw @s {"text":"You don't have any Stat Points!!!","bold":true,"color":"red"}
execute if score @s hh.statPoints matches 1.. run scoreboard players add @s hh.maxStamina 25
execute if score @s hh.statPoints matches 1.. run scoreboard players remove @s hh.statPoints 1
execute as @s run function hh.nindocraft:statgui