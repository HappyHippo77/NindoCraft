scoreboard players add @s hh.timer3 1
execute at @e[tag=hh.watershieldstand] if score @e[sort=nearest,limit=1] du_uuid = @s du_uuid align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
function hh.nindocraft:jutsu/waternature/watershield/knockback
kill @e[tag=hh.shuriken,distance=..2]
kill @e[type=#du:projectiles,distance=..2]
particle minecraft:falling_water ~ ~1 ~ 0.4 0.4 0.4 1 2 normal
playsound minecraft:block.water.ambient player @a ~ ~ ~ 1 1
execute if score @s hh.timer3 matches 20.. run scoreboard players remove @s hh.chakra 3
execute if score @s hh.timer3 matches 20.. run scoreboard players set @s hh.timer3 0
execute if score @s hh.chakra matches ..0 run function hh.nindocraft:jutsu/waternature/watershield/release