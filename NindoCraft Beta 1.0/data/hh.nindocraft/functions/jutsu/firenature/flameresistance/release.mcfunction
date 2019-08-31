tellraw @s ["",{"text":"Deactivated ","bold":true,"color":"red"},{"text":"Fire Style: Flame Resistance Technique","bold":true,"color":"red"},{"text":"!","bold":true,"color":"red"}]
playsound minecraft:custom.naruto.initjutsu player @s ~ ~ ~ 0.4 1
playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.4 1
effect clear @s fire_resistance
scoreboard players set @s hh.timer 0
tag @s remove hh.flameresistant