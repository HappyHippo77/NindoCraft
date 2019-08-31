tellraw @s ["",{"text":"Activated ","bold":true,"color":"green"},{"text":"Fire Style: Shuriken Technique","bold":true,"color":"red"},{"text":"!","bold":true,"color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
tag @s add hh.fireshurikening
tag @s remove hh.fireshuriken