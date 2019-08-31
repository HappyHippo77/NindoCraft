# Levels
execute as @a[scores={hh.narutoExp=50..}] at @s run scoreboard players add @s hh.narutoLvl 1
execute as @a[scores={hh.narutoExp=50..}] at @s run scoreboard players add @s hh.statPoints 2
execute as @a[scores={hh.narutoExp=50..}] at @s run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1 1.5
execute as @a[scores={hh.narutoExp=50..}] at @s run tellraw @s ["",{"text":"You are now level ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"hh.narutoLvl"},"bold":true,"color":"gold"}]
execute as @a[scores={hh.narutoExp=50..}] at @s run scoreboard players remove @s hh.narutoExp 50

scoreboard players add @a hh.ninjutsu 0
scoreboard players add @a hh.genjutsu 0
scoreboard players add @a hh.taijutsu 0
scoreboard players add @a hh.statPoints 0
scoreboard players add @a ninprog 0
scoreboard players add @a hh.taiProg 0
scoreboard players add @a hh.taiProg2 0
scoreboard players add @a hh.healthProg 0
scoreboard players add @a hh.maxHealth 0
scoreboard players enable @a hh.cmdTrigger
execute as @a[scores={hh.cmdTrigger=1..1}] at @s run function hh.nindocraft:addstamina
execute as @a[scores={hh.cmdTrigger=2..2}] at @s run function hh.nindocraft:addninjutsu
execute as @a[scores={hh.cmdTrigger=3..3}] at @s run function hh.nindocraft:addgenjutsu
execute as @a[scores={hh.cmdTrigger=4..4}] at @s run function hh.nindocraft:addtaijutsu
execute as @a[scores={hh.cmdTrigger=5..5}] at @s run function hh.nindocraft:addhealth
scoreboard players set @a hh.cmdTrigger 0

# Health
#execute as @a[scores={hh.maxHealth=2..,hh.healthProg=0}] run effect give @s health_boost 125000 0 true
#execute as @a[scores={hh.maxHealth=2..,hh.healthProg=0}] run scoreboard players set @s hh.healthProg 1
#execute as @a[scores={hh.maxHealth=4..,hh.healthProg=1}] run effect give @s health_boost 125000 1 true
#execute as @a[scores={hh.maxHealth=4..,hh.healthProg=1}] run scoreboard players set @s hh.healthProg 2
#execute as @a[scores={hh.maxHealth=6..,hh.healthProg=2}] run effect give @s health_boost 125000 2 true
#execute as @a[scores={hh.maxHealth=6..,hh.healthProg=2}] run scoreboard players set @s hh.healthProg 3
#execute as @a[scores={hh.maxHealth=8..,hh.healthProg=3}] run effect give @s health_boost 125000 3 true
#execute as @a[scores={hh.maxHealth=8..,hh.healthProg=3}] run scoreboard players set @s hh.healthProg 4
#execute as @a[scores={hh.maxHealth=10..,hh.healthProg=4}] run effect give @s health_boost 125000 4 true
#execute as @a[scores={hh.maxHealth=10..,hh.healthProg=4}] run scoreboard players set @s hh.healthProg 5
#execute as @a[scores={hh.maxHealth=12..,hh.healthProg=5}] run effect give @s health_boost 125000 5 true
#execute as @a[scores={hh.maxHealth=12..,hh.healthProg=5}] run scoreboard players set @s hh.healthProg 6
#execute as @a[scores={hh.maxHealth=14..,hh.healthProg=6}] run effect give @s health_boost 125000 6 true
#execute as @a[scores={hh.maxHealth=14..,hh.healthProg=6}] run scoreboard players set @s hh.healthProg 7
#execute as @a[scores={hh.maxHealth=16..,hh.healthProg=7}] run effect give @s health_boost 125000 7 true
#execute as @a[scores={hh.maxHealth=16..,hh.healthProg=7}] run scoreboard players set @s hh.healthProg 8
#execute as @a[scores={hh.maxHealth=18..,hh.healthProg=8}] run effect give @s health_boost 125000 8 true
#execute as @a[scores={hh.maxHealth=18..,hh.healthProg=8}] run scoreboard players set @s hh.healthProg 9
#execute as @a[scores={hh.maxHealth=20..,hh.healthProg=9}] run effect give @s health_boost 125000 9 true
#execute as @a[scores={hh.maxHealth=20..,hh.healthProg=9}] run scoreboard players set @s hh.healthProg 10

# Taijutsu
#execute as @a[scores={hh.taijutsu=2..,hh.taiProg=0}] run effect give @s strength 125000 0 true
#execute as @a[scores={hh.taijutsu=2..,hh.taiProg=0}] run scoreboard players set @s hh.taiProg 1
#execute as @a[scores={hh.taijutsu=6..,hh.taiProg=1}] run effect give @s strength 125000 1 true
#execute as @a[scores={hh.taijutsu=6..,hh.taiProg=1}] run scoreboard players set @s hh.taiProg 2
#execute as @a[scores={hh.taijutsu=10..,hh.taiProg=2}] run effect give @s strength 125000 2 true
#execute as @a[scores={hh.taijutsu=10..,hh.taiProg=2}] run scoreboard players set @s hh.taiProg 3
#execute as @a[scores={hh.taijutsu=14..,hh.taiProg=3}] run effect give @s strength 125000 3 true
#execute as @a[scores={hh.taijutsu=14..,hh.taiProg=3}] run scoreboard players set @s hh.taiProg 4
#execute as @a[scores={hh.taijutsu=18..,hh.taiProg=4}] run effect give @s strength 125000 4 true
#execute as @a[scores={hh.taijutsu=18..,hh.taiProg=4}] run scoreboard players set @s hh.taiProg 5

# Ninjutsu
execute as @a[scores={an.success=1}] at @s run function hh.nindocraft:ninjutsu
#====================================================================

# Stat GUI
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:13}}}] at @s run function hh.nindocraft:statgui