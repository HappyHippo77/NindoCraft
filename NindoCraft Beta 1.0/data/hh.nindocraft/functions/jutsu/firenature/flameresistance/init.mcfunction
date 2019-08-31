tellraw @s ["",{"text":"Activated ","bold":true,"color":"green"},{"text":"Fire Style: Flame Resistance Technique","bold":true,"color":"red"},{"text":"!","bold":true,"color":"green"}]
playsound minecraft:custom.naruto.initjutsu player @s ~ ~ ~ 0.4 1
playsound minecraft:entity.ghast.shoot player @s ~ ~ ~ 0.3 1
tag @s add hh.flameresistant
tag @s remove hh.flameresistance