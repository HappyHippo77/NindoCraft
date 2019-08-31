execute unless entity @s[tag=hh.signweaving] run scoreboard players set @s hh.hsSuccess 1
execute if score @s hh.handsign1 matches 0 run tag @s add hh.signweaving
execute if score @s hh.handsign1 matches 0 if entity @s[tag=hh.signweaving] if score @s hh.hsSuccess matches 1 run tellraw @s {"text":"You start weaving signs","bold":true,"color":"green"}
execute if score @s hh.handsign1 matches 0 if entity @s[tag=hh.signweaving] if score @s hh.hsSuccess matches 1 run scoreboard players set @s hh.handsigntimer 1
execute if entity @s[tag=hh.signweaving] unless score @s hh.handsign1 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/1
execute if entity @s[tag=hh.signweaving] if score @s hh.handsign1 matches 1.. unless score @s hh.handsign2 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/2
execute if entity @s[tag=hh.signweaving] if score @s hh.handsign2 matches 1.. unless score @s hh.handsign3 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/3
execute if entity @s[tag=hh.signweaving] if score @s hh.handsign3 matches 1.. unless score @s hh.handsign4 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/4
execute if entity @s[tag=hh.signweaving] if score @s hh.handsign4 matches 1.. unless score @s hh.handsign5 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/5
execute if entity @s[tag=hh.signweaving] if score @s hh.handsign5 matches 1.. unless score @s hh.handsign6 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/6
execute if entity @s[tag=hh.signweaving] if score @s hh.handsign6 matches 1.. unless score @s hh.handsign7 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/7
execute if entity @s[tag=hh.signweaving] if score @s hh.handsign7 matches 1.. unless score @s hh.handsign8 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/8
execute if entity @s[tag=hh.signweaving] if score @s hh.handsign8 matches 1.. unless score @s hh.handsign9 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/9
execute if entity @s[tag=hh.signweaving] if score @s hh.handsign9 matches 1.. unless score @s hh.handsign10 matches 1.. unless score @s hh.hsSuccess matches 1 run function hh.nindocraft:jutsu/scroll/2/10
scoreboard players set @s hh.hsSuccess 0
execute if score @s hh.handsign1 matches 1.. run scoreboard players set @s hh.handsigntimer 1
execute if score @s hh.handsign1 matches 1.. run playsound minecraft:custom.naruto.handsign player @a ~ ~ ~ 0.75 1