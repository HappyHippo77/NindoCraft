scoreboard players add @s hh.timer 1
tp @s ^ ^ ^0.2
playsound minecraft:entity.creeper.death player @a ~ ~ ~ 1 0.6

execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid run tag @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] add hh.addfire

particle minecraft:flame ~ ~1.45 ~ 0 0 0 0 3 normal
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid unless score @s hh.timer matches 8.. run effect give @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] resistance 1 2 true
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid unless score @s hh.timer matches 8.. run effect give @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] instant_damage 1 0 true
execute if score @s hh.timer matches 8.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^-0.15 ^1.45 ^-0.25 0 0 0 0 3 normal
execute if score @s hh.timer matches 8.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^-0.25 ^1.45 ^-0.45 0 0 0 0 3 normal
execute if score @s hh.timer matches 8.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^0.15 ^1.45 ^-0.25 0 0 0 0 3 normal
execute if score @s hh.timer matches 8.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^0.25 ^1.45 ^-0.45 0 0 0 0 3 normal
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid if score @s hh.timer matches 8..13 run effect give @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] resistance 1 1 true
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid if score @s hh.timer matches 8..13 run effect give @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] instant_damage 1 0 true

execute if score @s hh.timer matches 14.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^-0.25 ^1.45 ^-0.45 0 0 0 0 3 normal
execute if score @s hh.timer matches 14.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^-0.45 ^1.45 ^-0.65 0 0 0 0 3 normal
execute if score @s hh.timer matches 14.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^0.25 ^1.45 ^-0.45 0 0 0 0 3 normal
execute if score @s hh.timer matches 14.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^0.45 ^1.45 ^-0.65 0 0 0 0 3 normal
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid if score @s hh.timer matches 14..17 run effect give @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] resistance 1 1 true
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid if score @s hh.timer matches 14..17 run effect give @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] instant_damage 1 1 true

execute if score @s hh.timer matches 18.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^-0.45 ^1.45 ^-0.65 0 0 0 0 3 normal
execute if score @s hh.timer matches 18.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^-0.65 ^1.45 ^-0.85 0 0 0 0 3 normal
execute if score @s hh.timer matches 18.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^0.45 ^1.45 ^-0.65 0 0 0 0 3 normal
execute if score @s hh.timer matches 18.. run execute rotated as @s rotated ~ 0 run particle minecraft:flame ^0.65 ^1.45 ^-0.85 0 0 0 0 3 normal
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid if score @s hh.timer matches 18.. run effect give @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] resistance 1 0 true
execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid if score @s hh.timer matches 18.. run effect give @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] instant_damage 1 1 true

execute if entity @e[type=#du:living,tag=!du_click_entity,distance=..2] unless score @e[type=#du:living,tag=!du_click_entity,sort=nearest,limit=1] du_uuid = @s du_uuid run kill @s
execute unless block ~ ~1.45 ~ #du:non-solid run kill @s

execute if score @s hh.timer matches 24.. run kill @s