# Position BH
execute store result score holeX hh.pos run data get entity @e[tag=hh.flamesphereing,limit=1] Pos[0] 1000000
execute store result score holeY hh.pos run data get entity @e[tag=hh.flamesphereing,limit=1] Pos[1] 1000000
execute store result score holeZ hh.pos run data get entity @e[tag=hh.flamesphereing,limit=1] Pos[2] 1000000
# Position Entities
execute as @e[tag=hh.flamesphereing] at @s run execute as @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..5] store result score @s hh.posX run data get entity @s Pos[0] 1000000
execute as @e[tag=hh.flamesphereing] at @s run execute as @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..5] store result score @s hh.posY run data get entity @s Pos[1] 1000000
execute as @e[tag=hh.flamesphereing] at @s run execute as @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..5] store result score @s hh.posZ run data get entity @s Pos[2] 1000000
# Find distance
execute as @e[tag=hh.flamesphereing] at @s run scoreboard players operation @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..3] hh.posX -= holeX hh.pos
execute as @e[tag=hh.flamesphereing] at @s run scoreboard players operation @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..3] hh.posY -= holeY hh.pos
execute as @e[tag=hh.flamesphereing] at @s run scoreboard players operation @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..3] hh.posZ -= holeZ hh.pos
# Correct for amplification
scoreboard players set negOne hh.int 2
execute as @e[tag=hh.flamesphereing] at @s run scoreboard players operation @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..3] hh.posX *= negOne hh.int
execute as @e[tag=hh.flamesphereing] at @s run scoreboard players operation @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..3] hh.posY *= negOne hh.int
execute as @e[tag=hh.flamesphereing] at @s run scoreboard players operation @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..3] hh.posZ *= negOne hh.int
# Set motion
scoreboard players set motionMult hh.int 50
execute as @e[tag=hh.flamesphereing] at @s run scoreboard players operation @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..3] hh.posX /= motionMult hh.int
execute as @e[tag=hh.flamesphereing] at @s run scoreboard players operation @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..3] hh.posY /= motionMult hh.int
execute as @e[tag=hh.flamesphereing] at @s run scoreboard players operation @e[tag=!hh.flamesphereing,type=!armor_stand,type=!item,distance=..3] hh.posZ /= motionMult hh.int
execute as @e[tag=hh.flamesphereing] at @s run execute as @e[tag=!hh.flamesphereing,distance=..3,sort=nearest,limit=1] store result entity @s Motion[0] double 0.000010 run scoreboard players get @s hh.posX
execute as @e[tag=hh.flamesphereing] at @s run execute as @e[tag=!hh.flamesphereing,distance=..3,sort=nearest,limit=1] store result entity @s Motion[1] double 0.000010 run scoreboard players get @s hh.posY
execute as @e[tag=hh.flamesphereing] at @s run execute as @e[tag=!hh.flamesphereing,distance=..3,sort=nearest,limit=1] unless score @s du_uuid = @e[tag=hh.flamesphereing,sort=nearest,limit=1] du_uuid store result entity @s Motion[2] double 0.000010 run scoreboard players get @s hh.posZ