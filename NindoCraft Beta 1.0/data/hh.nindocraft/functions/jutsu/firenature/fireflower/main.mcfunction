execute as @a[distance=..6] if score @s du_uuid = @e[tag=hh.fireflowerstand,sort=nearest,limit=1] du_uuid run tag @s add hh.caster
scoreboard players add @s hh.timer 1
execute as @a if score @e[tag=hh.fireflowerstand,sort=nearest,limit=1] du_uuid = @s du_uuid unless entity @e[distance=..5,type=#du:living,tag=!du_click_entity,tag=!hh.caster] rotated as @s run tp @e[tag=hh.fireflowerstand,sort=nearest,limit=1] ^ ^ ^0.5
execute unless block ~ ~0.5 ~ #du:non-solid run kill @s
execute if score @s hh.timer matches 60.. run kill @s
particle minecraft:flame ~ ~0.5 ~ 0.2 0.2 0.2 0 30 normal

execute if entity @e[type=#du:living,tag=!du_click_entity,tag=!hh.caster,distance=..5] run tp @s ^ ^ ^0.4 facing entity @e[type=#du:living,tag=!du_click_entity,tag=!hh.caster,sort=nearest,limit=1] feet

playsound minecraft:entity.creeper.death player @a ~ ~ ~ 1 0.5

execute as @e[type=#du:living,tag=!du_click_entity,tag=!hh.caster,distance=..2] run tag @s add hh.addfire
execute as @e[distance=..2,type=#du:living,type=!#du:undead,tag=!du_click_entity] at @s unless score @s du_uuid = @e[tag=hh.fireflowerstand,sort=nearest,limit=1] du_uuid run effect clear @s instant_damage
execute as @e[distance=..2,type=#du:living,type=#du:undead,tag=!du_click_entity] at @s unless score @s du_uuid = @e[tag=hh.fireflowerstand,sort=nearest,limit=1] du_uuid run effect clear @s instant_health
execute as @e[distance=..2,type=#du:living,type=!#du:undead,tag=!du_click_entity] at @s unless score @s du_uuid = @e[tag=hh.fireflowerstand,sort=nearest,limit=1] du_uuid run effect give @s instant_damage 1 0 true
execute as @e[distance=..2,type=#du:living,type=#du:undead,tag=!du_click_entity] at @s unless score @s du_uuid = @e[tag=hh.fireflowerstand,sort=nearest,limit=1] du_uuid run effect give @s instant_health 1 0 true
execute if entity @e[type=#du:living,tag=!du_click_entity,tag=!hh.caster,distance=..2] run particle minecraft:explosion ~ ~0.5 ~ 0.1 0.1 0.1 0.1 1 normal
execute if entity @e[type=#du:living,tag=!du_click_entity,tag=!hh.caster,distance=..2] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1
execute if entity @e[type=#du:living,tag=!du_click_entity,tag=!hh.caster,distance=..2] run function hh.nindocraft:jutsu/firenature/fireflower/knockback
execute if entity @e[type=#du:living,tag=!du_click_entity,tag=!hh.caster,distance=..2] run kill @s