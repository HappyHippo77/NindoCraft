scoreboard players add @s hh.timer 1
execute if score @s hh.timer matches 30.. run kill @s
execute unless block ~ ~0.5 ~ #du:non-solid run kill @s

particle minecraft:splash ~ ~0.5 ~ 0 0 0 0 20 force
particle minecraft:dripping_water ~ ~0.5 ~ 0.1 0.1 0.1 0 20 force
tp @s ^ ^ ^0.8
playsound minecraft:entity.player.swim player @a ~ ~ ~ 1 1

execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..1] run data merge entity @s {Item:{id:"minecraft:potion",tag:{Potion:water}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:bucket"}},distance=..1] run data merge entity @s {Item:{id:"minecraft:water_bucket"}}

execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] unless score @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] du_uuid = @s du_uuid run playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 1 1
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] unless score @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] du_uuid = @s du_uuid run function hh.nindocraft:jutsu/hh.waternature/fishspit/knockback
execute if entity @e[type=#du:living,type=!#du:undead,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] unless score @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] du_uuid = @s du_uuid run effect give @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] instant_damage 1 0 true
execute if entity @e[type=#du:living,type=#du:undead,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] unless score @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] du_uuid = @s du_uuid run effect give @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] instant_health 1 0 true
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] unless score @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] du_uuid = @s du_uuid run effect give @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] slowness 5 3 true
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] unless score @e[type=#du:living,tag=!du_click_entity,distance=..1,sort=nearest,limit=1] du_uuid = @s du_uuid run kill @s