execute if score @s hh.chakra matches 1.. run execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["hh.watershieldstand"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700021}}]}
execute if score @s hh.chakra matches 1.. run scoreboard players operation @e[tag=hh.watershieldstand,sort=nearest,limit=1] du_uuid = @s du_uuid
execute if score @s hh.chakra matches 1.. run playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1 1
execute if score @s hh.chakra matches 1.. run playsound minecraft:entity.entity.ghast.shoot player @a ~ ~ ~ 0.4 1
execute if score @s hh.chakra matches 1.. run particle minecraft:splash ~ ~1 ~ 0.4 0.4 0.4 1 30 normal
execute if score @s hh.chakra matches 1.. run tag @s add hh.watershielding
tag @s remove hh.watershield