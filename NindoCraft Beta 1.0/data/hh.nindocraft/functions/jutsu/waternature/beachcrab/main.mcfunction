scoreboard players add @s hh.timer2 1
effect give @s slowness 1 255 true

execute if score @s hh.timer2 matches ..1 run summon armor_stand ~0.9 ~-2 ~ {Tags:["hh.beachcrabclaw1"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700019}}]}
execute if score @s hh.timer2 matches ..1 run summon armor_stand ~-0.9 ~-2 ~ {Tags:["hh.beachcrabclaw2"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700019}}],Pose:{Head:[0f,180f,0f]}}
execute if score @s hh.timer2 matches ..1 run playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 0.25 1
execute if score @s hh.timer2 matches ..1 run playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1 1.5
execute if score @s hh.timer2 matches ..1 run particle minecraft:splash ~ ~ ~ 0.3 0.3 0.3 1 60 normal

execute as @e[tag=hh.beachcrabclaw1] at @s unless block ~ ~-0.55 ~ #du:non-solid run tp @s ~ ~0.3 ~
execute as @e[tag=hh.beachcrabclaw2] at @s unless block ~ ~-0.2 ~ #du:non-solid run tp @s ~ ~0.3 ~

execute if score @s hh.timer2 matches 15.. run execute as @e[tag=hh.beachcrabclaw1,sort=nearest,limit=1] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700020}}]}
execute if score @s hh.timer2 matches 15.. run execute as @e[tag=hh.beachcrabclaw2,sort=nearest,limit=1] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700020}}]}

execute if score @s hh.timer2 matches 25.. run execute as @e[tag=hh.beachcrabclaw1,sort=nearest,limit=1] at @s run tp @s ~ ~-0.5 ~
execute if score @s hh.timer2 matches 25.. run execute as @e[tag=hh.beachcrabclaw2,sort=nearest,limit=1] at @s run tp @s ~ ~-0.5 ~
execute if score @s hh.timer2 matches 25.. run tp @s ~ ~-0.5 ~
execute if score @s hh.timer2 matches 25.. unless block ~ ~1 ~ #du:non-solid run kill @e[tag=hh.beachcrabclaw1,sort=nearest,limit=1]
execute if score @s hh.timer2 matches 25.. unless block ~ ~1 ~ #du:non-solid run kill @e[tag=hh.beachcrabclaw2,sort=nearest,limit=1]
execute if score @s hh.timer2 matches 25 run playsound minecraft:entity.generic.swim player @a ~ ~ ~ 0.8 0.1
execute if score @s hh.timer2 matches 25 run playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 0.5 0.7
execute if score @s hh.timer2 matches 25 run playsound minecraft:entity.generic.splash player @a ~ ~ ~ 0.9 1
execute if score @s hh.timer2 matches 25 run particle minecraft:splash ~ ~ ~ 0.3 0.3 0.3 1 60 normal
execute if score @s hh.timer2 matches 25 run particle minecraft:falling_water ~ ~ ~ 0.4 0.4 0.4 1 40 normal
execute if score @s hh.timer2 matches 30.. run tag @s remove hh.beachcrabbed
execute if score @s hh.timer2 matches 30.. run scoreboard players reset @s hh.timer2