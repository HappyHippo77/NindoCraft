scoreboard players add @s hh.timer 1
execute if score @s hh.chakra matches 1.. run effect give @s fire_resistance 1 0 true
execute if score @s hh.timer matches 20.. run scoreboard players remove @s hh.chakra 1
execute if score @s hh.timer matches 20.. run scoreboard players set @s hh.timer 0