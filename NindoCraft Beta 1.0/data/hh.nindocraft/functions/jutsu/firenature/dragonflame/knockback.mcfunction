# Position BH
execute store result score holeX hh.pos run data get entity @s Pos[0] 1000000
execute store result score holeY hh.pos run data get entity @s Pos[1] 1000000
execute store result score holeZ hh.pos run data get entity @s Pos[2] 1000000
# Position Entities
execute as @s at @s run execute as @e[type=#du:living,tag=!du_click_entity,distance=..2] store result score @s hh.posX run data get entity @s Pos[0] 1000000
execute as @s at @s run execute as @e[type=#du:living,tag=!du_click_entity,distance=..2] store result score @s hh.posY run data get entity @s Pos[1] 1000000
execute as @s at @s run execute as @e[type=#du:living,tag=!du_click_entity,distance=..2] store result score @s hh.posZ run data get entity @s Pos[2] 1000000
# Find distance
execute as @s at @s run scoreboard players operation @e[type=#du:living,tag=!du_click_entity,distance=..2] hh.posX -= holeX hh.pos
execute as @s at @s run scoreboard players operation @e[type=#du:living,tag=!du_click_entity,distance=..2] hh.posY -= holeY hh.pos
execute as @s at @s run scoreboard players operation @e[type=#du:living,tag=!du_click_entity,distance=..2] hh.posZ -= holeZ hh.pos
# Correct for amplification
scoreboard players set negOne hh.int 1
execute as @s at @s run scoreboard players operation @e[type=#du:living,tag=!du_click_entity,distance=..2] hh.posX *= negOne hh.int
execute as @s at @s run scoreboard players operation @e[type=#du:living,tag=!du_click_entity,distance=..2] hh.posY *= negOne hh.int
execute as @s at @s run scoreboard players operation @e[type=#du:living,tag=!du_click_entity,distance=..2] hh.posZ *= negOne hh.int
# Set motion
scoreboard players set motionMult hh.int 50
execute as @s at @s run scoreboard players operation @e[type=#du:living,tag=!du_click_entity,distance=..2] hh.posX /= motionMult hh.int
execute as @s at @s run scoreboard players operation @e[type=#du:living,tag=!du_click_entity,distance=..2] hh.posY /= motionMult hh.int
execute as @s at @s run scoreboard players operation @e[type=#du:living,tag=!du_click_entity,distance=..2] hh.posZ /= motionMult hh.int
execute as @s at @s run execute as @e[type=#du:living,tag=!du_click_entity,distance=..2,sort=nearest,limit=1] store result entity @s Motion[0] double 0.000010 run scoreboard players get @s hh.posX
execute as @s at @s run execute as @e[type=#du:living,tag=!du_click_entity,distance=..2,sort=nearest,limit=1] store result entity @s Motion[1] double 0.000010 run scoreboard players get @s hh.posY
execute as @s at @s run execute as @e[type=#du:living,tag=!du_click_entity,distance=..2,sort=nearest,limit=1] unless score @s du_uuid = @e[tag=hh.dragonflamestand,sort=nearest,limit=1] du_uuid store result entity @s Motion[2] double 0.000010 run scoreboard players get @s hh.posZ