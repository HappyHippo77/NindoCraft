scoreboard players add @s hh.timer 1
effect give @s minecraft:weakness 1 255 true
effect give @s minecraft:jump_boost 1 200 true
#effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:invisibility 1 255 true
effect give @s minecraft:resistance 1 255 true

execute at @e[tag=hh.waterpuddlestand] if score @e[sort=nearest,limit=1] du_uuid = @s du_uuid align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

execute if block ~ ~ ~ #du:air run setblock ~ ~ ~ water[level=7]
execute if block ~ ~ ~ #du:flowers run setblock ~ ~ ~ water[level=7]
execute if block ~ ~ ~ grass run setblock ~ ~ ~ water[level=7]
execute if block ~ ~ ~ tall_grass run setblock ~ ~ ~ water[level=7]

execute if entity @s[nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:2}}}] run effect clear @s weakness

execute if score @s hh.timer matches 20.. run scoreboard players remove @s hh.chakra 1
execute if score @s hh.timer matches 20.. run scoreboard players set @s hh.timer 0