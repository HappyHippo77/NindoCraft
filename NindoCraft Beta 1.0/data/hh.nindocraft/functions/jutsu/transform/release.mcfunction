tag @s remove hh.transformed
tp @e[tag=hh.transformmob,sort=nearest,limit=1] ~ ~-400 ~
kill @e[tag=hh.transformmob,sort=nearest,limit=1]
effect clear @s minecraft:invisibility 
playsound minecraft:custom.naruto.poof1 player @a ~ ~ ~ 0.75 1
particle minecraft:explosion ~ ~1 ~ 0.1 0.1 0.1 0.1 5 normal
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.2 20 normal