tp @e[tag=hh.watershurikenicon,sort=nearest,limit=1] @s
scoreboard players add @e[tag=hh.watershurikenicon] hh.timer1 1
scoreboard players add @e[tag=hh.watershurikenray] hh.timer2 1
tp @s ^ ^ ^1
execute at @e[tag=hh.watershurikenicon,sort=nearest,limit=1] run particle minecraft:falling_water ~ ~0.8 ~ 0.05 0.05 0.05 0 2 normal
execute as @e[tag=!hh.watershurikenray,type=#du:living,tag=!du_click_entity,distance=..1,limit=1] at @s unless score @s du_uuid = @e[tag=hh.watershurikenray,sort=nearest,limit=1] du_uuid run effect give @s resistance 1 0 true
execute as @e[tag=!hh.watershurikenray,type=#du:living,tag=!du_click_entity,distance=..1,limit=1] at @s unless score @s du_uuid = @e[tag=hh.watershurikenray,sort=nearest,limit=1] du_uuid run effect give @s slowness 2 1 true
execute as @e[tag=!hh.watershurikenray,type=#du:living,type=!#du:undead,tag=!du_click_entity,distance=..1,limit=1] at @s unless score @s du_uuid = @e[tag=hh.watershurikenray,sort=nearest,limit=1] du_uuid run effect give @s instant_damage 1 0 true
execute as @e[tag=!hh.watershurikenray,type=#du:living,type=#du:undead,tag=!du_click_entity,distance=..1,limit=1] at @s unless score @s du_uuid = @e[tag=hh.watershurikenray,sort=nearest,limit=1] du_uuid run effect give @s instant_health 1 0 true
execute if entity @e[tag=!hh.watershurikenray,type=#du:living,tag=!du_click_entity,distance=..1,limit=1] run function hh.nindocraft:jutsu/waterstyle/watershurikenray/knockback
execute as @e[tag=!hh.watershurikenray,type=#du:living,tag=!du_click_entity,distance=..1,limit=1] at @s unless score @s du_uuid = @e[tag=hh.watershurikenray,sort=nearest,limit=1] du_uuid run kill @e[tag=hh.watershurikenray,sort=nearest,limit=1]
execute unless block ~ ~ ~ #du:non-solid unless block ~ ~1 ~ #du:non-solid run kill @s

execute as @e[tag=hh.watershurikenicon,scores={hh.timer1=5}] at @s run data merge entity @s {Rotation:[0.0f,0.0f]}
execute as @e[tag=hh.watershurikenicon,scores={hh.timer1=10..}] at @s run data merge entity @s {Rotation:[180f,0.0f]}
execute as @e[tag=hh.watershurikenicon,scores={hh.timer1=10..}] at @s run scoreboard players set @s hh.timer1 0
execute as @e[tag=hh.watershurikenray,scores={hh.timer2=120..}] run kill @s

execute as @e[tag=hh.watershurikenicon] at @s unless entity @e[tag=hh.watershurikenray,distance=..2] run kill @s