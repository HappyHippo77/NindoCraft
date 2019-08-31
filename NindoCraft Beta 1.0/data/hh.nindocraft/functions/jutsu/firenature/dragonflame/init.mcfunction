execute unless score @s hh.chakra matches 75.. run tellraw @s {"text":"Not enough chakra! minimum of 75 is required!","bold":true,"color":"red"}
execute if score @s hh.chakra matches 75.. run tag @s add hh.dragonflaming
execute if score @s hh.chakra matches 75.. run scoreboard players remove @s hh.chakra 75
execute if score @s hh.chakra matches 75.. run scoreboard players add @s hh.narutoExp 30
tag @s remove hh.dragonflame