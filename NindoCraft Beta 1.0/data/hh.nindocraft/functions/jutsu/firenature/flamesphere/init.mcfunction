tellraw @s ["",{"text":"Activated ","bold":true,"color":"green"},{"text":"Fire Style: Flame Sphere Technique","bold":true,"color":"red"},{"text":"!","bold":true,"color":"green"}]
playsound minecraft:custom.naruto.initjutsu player @s ~ ~ ~ 0.4 1
playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 0.3 1
scoreboard players add @s hh.narutoExp 5
tag @s add hh.flamesphereing
tag @s remove hh.flamesphere