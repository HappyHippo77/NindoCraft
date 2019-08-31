effect clear @s minecraft:weakness
effect clear @s minecraft:jump_boost
effect clear @s minecraft:slowness
effect clear @s minecraft:invisibility
effect clear @s minecraft:resistance

particle minecraft:splash ~ ~1 ~ 0.1 0.5 0.1 0.1 50 normal
playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 1 1
kill @e[tag=hh.waterpuddlestand,sort=nearest,limit=1]

tag @s remove hh.isAPuddle