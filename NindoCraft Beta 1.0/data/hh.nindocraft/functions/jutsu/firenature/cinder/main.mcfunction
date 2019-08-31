scoreboard players add @s hh.timer 1
tp @s[scores={hh.timer=..4}] ^ ^ ^0.5
tp @s[scores={hh.timer=4..8}] ^ ^ ^0.3
tp @s[scores={hh.timer=8..12}] ^ ^ ^0.1

execute if block ~ ~1 ~ furnace run setblock ~ 255 ~ furnace
execute if block ~ ~1 ~ furnace run data modify block ~ 255 ~ Items set from block ~ ~1 ~ Items
execute if block ~ ~1 ~ furnace[facing=north] run setblock ~ ~1 ~ furnace[facing=north,lit=true]
execute if block ~ ~1 ~ furnace[facing=south] run setblock ~ ~1 ~ furnace[facing=south,lit=true]
execute if block ~ ~1 ~ furnace[facing=east] run setblock ~ ~1 ~ furnace[facing=east,lit=true]
execute if block ~ ~1 ~ furnace[facing=west] run setblock ~ ~1 ~ furnace[facing=west,lit=true]
execute if block ~ ~1 ~ furnace run data merge block ~ ~1 ~ {BurnTime:160s,CookTimeTotal:200s}
execute if block ~ ~1 ~ furnace run data modify block ~ ~1 ~ Items set from block ~ 255 ~ Items
execute if block ~ ~1 ~ furnace run setblock ~ 255 ~ air

execute as @e[distance=..2] at @s unless score @s du_uuid = @e[tag=hh.cinderray,sort=nearest,limit=1] du_uuid run effect give @s minecraft:resistance 1 3 true
execute as @e[distance=..2,type=!#du:undead] at @s unless score @s du_uuid = @e[tag=hh.cinderray,sort=nearest,limit=1] du_uuid run effect give @s minecraft:instant_damage 1 0 true
execute as @e[distance=..2,type=#du:undead] at @s unless score @s du_uuid = @e[tag=hh.cinderray,sort=nearest,limit=1] du_uuid run effect give @s minecraft:instant_health 1 0 true
particle minecraft:flame ~ ~1 ~ 0 0 0 0.002 4 normal
execute if block ~ ~ ~ hay_block if block ~ ~1 ~ #du:air run setblock ~ ~1 ~ fire
execute if block ~ ~ ~ #minecraft:wool if block ~ ~1 ~ #du:air run setblock ~ ~1 ~ fire
execute if block ~ ~-1 ~ hay_block if block ~ ~ ~ #du:air run setblock ~ ~ ~ fire
execute if block ~ ~-1 ~ #minecraft:wool if block ~ ~ ~ #du:air run setblock ~ ~ ~ fire
execute if block ~ ~1 ~ hay_block if block ~ ~2 ~ #du:air run setblock ~ ~2 ~ fire
execute if block ~ ~1 ~ #minecraft:wool if block ~ ~2 ~ #du:air run setblock ~ ~2 ~ fire
execute if block ~ ~ ~ #minecraft:leaves if block ~ ~1 ~ #du:air run setblock ~ ~1 ~ fire
execute if block ~ ~-1 ~ #minecraft:leaves if block ~ ~ ~ #du:air run setblock ~ ~ ~ fire
execute if block ~ ~1 ~ #minecraft:leaves if block ~ ~2 ~ #du:air run setblock ~ ~2 ~ fire

execute as @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1,distance=..2] unless score @s du_uuid = @e[tag=hh.cinderray,sort=nearest,limit=1] du_uuid run kill @e[tag=hh.cinderray,sort=nearest,limit=1]
execute unless block ~ ~1 ~ #du:non-solid run kill @s
execute if score @s hh.timer matches 12.. run kill @s