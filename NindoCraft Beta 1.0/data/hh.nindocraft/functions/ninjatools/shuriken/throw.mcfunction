summon armor_stand ~ ~ ~ {Tags:["hh.shurikenicon"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700002}}]}
summon armor_stand ~ ~ ~ {Tags:["hh.shuriken"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583}
scoreboard players operation @e[tag=hh.shuriken,sort=nearest,limit=1] du_uuid = @s du_uuid
tp @e[tag=hh.shuriken,sort=nearest,limit=1] @s
tp @e[tag=hh.shuriken,sort=nearest,limit=1] ~ ~0.8 ~
execute if entity @s[tag=hh.fireshurikening] unless score @s hh.chakra matches 5.. run tellraw @s {"text":"Could not coat shuriken in fire because you don't have enough chakra! minimum of 5 is required!","bold":true,"color":"red"}
execute if entity @s[tag=hh.fireshurikening] if score @s hh.chakra matches 5.. run tag @e[tag=hh.shuriken,sort=nearest,limit=1] add hh.flaming
execute if entity @s[tag=hh.fireshurikening] if score @s hh.chakra matches 5.. run scoreboard players remove @s hh.chakra 5
tag @s remove hh.shurikenthrown