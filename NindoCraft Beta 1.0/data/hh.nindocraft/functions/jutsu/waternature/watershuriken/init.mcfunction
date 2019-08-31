execute unless score @s hh.chakra matches 5.. run tellraw @s {"text":"Not enough chakra! minimum of 3 is required!","bold":true,"color":"red"}
execute if score @s hh.chakra matches 5.. run summon armor_stand ~ ~ ~ {Tags:["hh.watershurikenicon"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700006}}]}
execute if score @s hh.chakra matches 5.. run summon armor_stand ~ ~ ~ {Tags:["hh.watershurikenray"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 5.. run scoreboard players operation @e[tag=hh.watershurikenray,sort=nearest,limit=1] du_uuid = @s du_uuid
execute if score @s hh.chakra matches 5.. run tp @e[tag=hh.watershurikenray,sort=nearest,limit=1] @s
execute if score @s hh.chakra matches 5.. run tp @e[tag=hh.watershurikenray,sort=nearest,limit=1] ~ ~0.8 ~

execute if score @s hh.chakra matches 5.. run playsound minecraft:entity.player.splash player @a ~ ~ ~ 1 1

execute if score @s hh.chakra matches 5.. run scoreboard players remove @s hh.chakra 5

tag @s remove hh.watershuriken