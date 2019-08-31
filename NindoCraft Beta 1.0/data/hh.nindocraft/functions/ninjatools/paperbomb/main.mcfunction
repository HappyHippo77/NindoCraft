scoreboard players add @e[tag=hh.paperbomb] hh.paprBombTimer 0
scoreboard players add @e[tag=hh.paperbomb,scores={hh.paprBombTimer=..80}] hh.paprBombTimer 1
scoreboard players add @e[tag=hh.paperbomb,tag=hh.primed,scores={hh.paprBombTimer=80..}] hh.paprBombTimer 1
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:12}}}] at @s run summon armor_stand ~ ~ ~ {Tags:["hh.paperbomb"],NoGravity:1,Marker:1,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700005}}],DisabledSlots:2039583}
execute as @e[tag=hh.paperbomb] at @s if score @s hh.paprBombTimer matches ..1 store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0] 1
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:12}}}] at @s run clear @s clock{NindoCraftID:12} 1

execute as @e[tag=hh.paperbomb] at @s if block ~ ~ ~ fire run tag @s add hh.primed
execute as @e[tag=hh.paperbomb,tag=hh.primed] at @s if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute as @e[tag=hh.paperbomb,tag=hh.primed] at @s run particle minecraft:smoke ~ ~0.1 ~ 0 0 0 0.01 2 normal
execute as @e[tag=hh.paperbomb,tag=hh.primed,scores={hh.paprBombTimer=280..}] at @s run summon tnt ~ ~ ~
execute as @e[tag=hh.paperbomb,tag=hh.primed,scores={hh.paprBombTimer=280..}] at @s run kill @s
execute as @e[tag=hh.paperbomb,scores={hh.paprBombTimer=80..}] at @s if entity @e[tag=!hh.paperbomb,tag=!hh.narutocrafter,distance=..1] run summon tnt ~ ~ ~
execute as @e[tag=hh.paperbomb,scores={hh.paprBombTimer=80..}] at @s if entity @e[tag=!hh.paperbomb,distance=..1] run kill @s

execute as @e[tag=hh.paperbomb] at @s if block ~ ~-0.1 ~ #du:air run tp @s ~ ~-0.1 ~