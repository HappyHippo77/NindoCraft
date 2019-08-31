clear @a[distance=..6] clock{CustomModelData:7700018,display:{Name:"\"\""},Lore:["\"PLACEHOLDER\""]} 1
playsound minecraft:custom.naruto.poof1 block @a ~ ~ ~ 0.2 1
particle minecraft:cloud ~ ~1.5 ~ 0 0 0 0.2 20 normal
particle minecraft:explosion ~ ~1.5 ~ 0 0 0 0.1 1 normal
execute as @e[tag=hh.narutoCrafter] at @s positioned ~ ~-1 ~ unless score @s hh.count matches 0 run function hh.nindocraft:craftingtable/recipes