kill @e[tag=hh.watershieldstand,sort=nearest,limit=1]
particle minecraft:falling_water ~ ~1 ~ 0.4 0.4 0.4 1 80 normal
playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1 1
playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1 1
tag @s remove hh.watershielding 