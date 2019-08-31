scoreboard players add @s hh.timer 1
execute if score @s hh.chakra matches 3.. run particle minecraft:flame ~ ~1 ~ 0.9 0.9 0.9 0 20 normal
execute if score @s hh.chakra matches 3.. run effect give @s slowness 1 255 true
execute if score @s hh.chakra matches 3.. run effect give @s jump_boost 1 200 true
execute if score @s hh.chakra matches 3.. run effect give @s resistance 1 255 true
execute if score @s hh.chakra matches 3.. run execute as @e[type=#du:living,tag=!du_click_entity,distance=..3] at @s unless score @s du_uuid = @e[tag=hh.flamesphereing,sort=nearest,limit=1] du_uuid run tag @s add hh.addfire
execute if score @s hh.chakra matches 3.. run execute as @e[type=#du:living,tag=!du_click_entity,distance=..3] at @s unless score @s du_uuid = @e[tag=hh.flamesphereing,sort=nearest,limit=1] du_uuid run execute as @e[tag=hh.flamesphereing,sort=nearest,limit=1] at @s run function hh.nindocraft:jutsu/firenature/flamesphere/knockback

execute if score @s hh.timer matches 20.. run scoreboard players remove @s hh.chakra 3
execute if score @s hh.timer matches 20.. run scoreboard players set @s hh.timer 0