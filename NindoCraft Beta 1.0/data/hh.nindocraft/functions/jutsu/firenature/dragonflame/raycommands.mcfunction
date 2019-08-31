scoreboard players add @s hh.timer 1
tp @s ^ ^ ^0.5

particle minecraft:flame ~ ~1.45 ~ 0 0 0 0.01 2 force
playsound minecraft:entity.creeper.death player @a ~ ~ ~ 1 0

execute unless block ~ ~1.45 ~ #du:non-solid run kill @s

execute as @e[type=#du:living,tag=!du_click_entity,distance=..2] at @s unless score @s du_uuid = @e[tag=hh.dragonflamestand,sort=nearest,limit=1] du_uuid run tag @s add hh.addfire
execute as @e[type=#du:living,tag=!du_click_entity,distance=..2] at @s unless score @s du_uuid = @e[tag=hh.dragonflamestand,sort=nearest,limit=1] du_uuid run execute as @e[tag=hh.dragonflamestand,sort=nearest,limit=1] at @s run function hh.nindocraft:jutsu/firenature/dragonflame/knockback
execute as @e[type=#du:living,tag=!du_click_entity,distance=..2] at @s unless score @s du_uuid = @e[tag=hh.dragonflamestand,sort=nearest,limit=1] du_uuid run effect give @s resistance 1 0 true
execute as @e[type=#du:living,type=!#du:undead,tag=!du_click_entity,distance=..2] at @s unless score @s du_uuid = @e[tag=hh.dragonflamestand,sort=nearest,limit=1] du_uuid run effect give @s instant_damage 1 0 true
execute as @e[type=#du:living,type=#du:undead,tag=!du_click_entity,distance=..2] at @s unless score @s du_uuid = @e[tag=hh.dragonflamestand,sort=nearest,limit=1] du_uuid run effect give @s instant_health 1 0 true
execute as @e[type=#du:living,tag=!du_click_entity,distance=..2] at @s unless score @s du_uuid = @e[tag=hh.dragonflamestand,sort=nearest,limit=1] du_uuid run 
execute as @e[type=#du:living,tag=!du_click_entity,distance=..2] at @s unless score @s du_uuid = @e[tag=hh.dragonflamestand,sort=nearest,limit=1] du_uuid run kill @e[tag=hh.dragonflamestand,sort=nearest,limit=1]

execute if score @s hh.timer matches 20.. run kill @s