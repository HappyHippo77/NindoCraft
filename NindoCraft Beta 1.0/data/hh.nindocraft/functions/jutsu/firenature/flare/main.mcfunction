scoreboard players add @s hh.timer 1
execute unless block ~ ~ ~ torch unless block ~ ~-1 ~ #du:non-solid unless score @s hh.timer matches 20.. run setblock ~ ~ ~ torch
kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:torch"}}]
execute if score @s hh.timer matches 20.. if block ~ ~ ~ torch run setblock ~ ~ ~ air
execute if score @s hh.timer matches 20.. run kill @s