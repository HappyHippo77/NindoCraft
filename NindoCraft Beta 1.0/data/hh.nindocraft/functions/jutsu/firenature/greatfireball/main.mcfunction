execute as @a[distance=..6] if score @s du_uuid = @e[tag=hh.fireballstand,sort=nearest,limit=1] du_uuid run tag @s add hh.caster
scoreboard players add @s hh.timer 1
execute as @a if score @e[tag=hh.fireballstand,sort=nearest,limit=1] du_uuid = @s du_uuid rotated as @s run tp @e[tag=hh.fireballstand,sort=nearest,limit=1] ^ ^ ^0.8
execute if score @s hh.timer matches 60.. run kill @s
particle minecraft:flame ~ ~1 ~ 0.6 0.6 0.6 0 30 force


playsound minecraft:entity.creeper.death player @a ~ ~ ~ 1 0.5

execute if entity @e[type=#du:living,tag=!du_click_entity,tag=!hh.caster,distance=..4] run summon minecraft:fireball ~ ~ ~ {direction:[0.0d,-4.0d,0.0d],ExplosionPower:4}
execute if entity @e[type=#du:living,tag=!du_click_entity,tag=!hh.caster,distance=..4] run kill @s
execute unless block ~ ~0.5 ~ #du:non-solid run summon minecraft:fireball ~ ~ ~ {direction:[0.0d,-4.0d,0.0d],ExplosionPower:4}
execute unless block ~ ~0.5 ~ #du:non-solid run kill @s