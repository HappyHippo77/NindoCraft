scoreboard players add @s hh.timer 1
tp @s ^ ^ ^0.5
particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.01 20 normal
execute as @e[distance=..2] at @s unless score @s du_uuid = @e[tag=hh.veilray,sort=nearest,limit=1] du_uuid run effect give @s blindness 5 1 true
execute as @e[distance=..2] at @s unless score @s du_uuid = @e[tag=hh.veilray,sort=nearest,limit=1] du_uuid run effect give @s night_vision 5 1 true
execute unless block ~ ~ ~ #du:non-solid unless block ~ ~1 ~ #du:non-solid run kill @s
execute if score @s hh.timer matches 20.. run kill @s