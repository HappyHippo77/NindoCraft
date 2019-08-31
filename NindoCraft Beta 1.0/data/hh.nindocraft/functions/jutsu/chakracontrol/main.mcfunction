scoreboard players add @a[tag=hh.chakracontrol] hh.cctimer 1
scoreboard players remove @a[tag=hh.chakracontrol,scores={hh.cctimer=20..}] hh.chakra 1
scoreboard players set @a[tag=hh.chakracontrol,scores={hh.cctimer=20..}] hh.cctimer 0
execute as @a[tag=hh.chakracontrol,scores={hh.chakra=1..}] at @s run particle minecraft:dust 0.4 1 1 1 ~ ~0.2 ~ 0.1 0.1 0.1 1 2 normal
execute as @a[tag=hh.chakracontrol,scores={hh.chakra=1..}] at @s run effect give @s speed 1 2 true
execute as @a[tag=hh.chakracontrol,scores={hh.chakra=1..}] at @s run effect give @s jump_boost 1 1 true
#    WalkOnWater
execute as @a[tag=hh.chakracontrol,scores={hh.chakra=1..}] at @s if block ~ ~-0.01 ~ water run tp @s ~ ~0.1 ~
execute as @a[tag=hh.chakracontrol,scores={hh.chakra=1..}] at @s if block ~ ~ ~ water run tp @s ~ ~0.1 ~
execute as @a[tag=hh.chakracontrol,scores={hh.chakra=1..}] at @s if block ~ ~-0.1 ~ water run effect give @s levitation 1 255 true
execute as @a[tag=hh.chakracontrol] at @s unless block ~ ~-0.1 ~ water run effect clear @s levitation
#    WallWalk
execute as @e[tag=hh.chakracontrol,nbt={SelectedItemSlot:1},scores={hh.chakra=1..}] at @s rotated as @s rotated ~ 0 unless block ^ ^ ^0.4 #du:non-solid unless block ^ ^ ^0.4 #du:air run effect give @s levitation 1 3 true
execute as @e[tag=hh.chakracontrol] at @s unless block ~ ~-1 ~ water unless block ~ ~ ~ water rotated as @s rotated ~ 0 if block ^ ^ ^0.4 #du:non-solid run effect clear @s levitation