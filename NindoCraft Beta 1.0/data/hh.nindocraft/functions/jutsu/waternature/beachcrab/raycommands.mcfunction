scoreboard players add @s hh.timer 1
tp @s ^ ^ ^1
execute if score @s hh.timer matches 10.. run kill @s
execute unless block ~ ~0.5 ~ #du:non-solid run kill @s


execute at @a if score @p du_uuid = @s du_uuid run execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0 0 0 0.1 1 normal @p

execute at @e[type=#du:living,tag=!du_click_entity,distance=..1] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid if block ~ ~-1 ~ #hh.nindocraft:loose run tag @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] add hh.beachcrabbed
execute at @e[type=#du:living,tag=!du_click_entity,distance=..1] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid run kill @s