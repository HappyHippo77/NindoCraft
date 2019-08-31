execute unless score @s hh.chakra matches 3.. run tellraw @s {"text":"Not enough chakra! minimum of 3 is required!","bold":true,"color":"red"}
execute if score @s hh.chakra matches 3.. run summon armor_stand ~ ~ ~ {Tags:["hh.cinderray"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 3.. run scoreboard players operation @e[tag=hh.cinderray,sort=nearest,limit=1] du_uuid = @s du_uuid
execute if score @s hh.chakra matches 3.. run tp @e[tag=hh.cinderray,sort=nearest,limit=1] @s

execute if score @s hh.chakra matches 3.. run particle minecraft:lava ~ ~0.5 ~ 0 0 0 0.001 2 normal
execute if score @s hh.chakra matches 3.. run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 6 normal
execute if score @s hh.chakra matches 3.. run playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1 1
execute if score @s hh.chakra matches 3.. run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.3 0

execute if score @s hh.chakra matches 3.. run scoreboard players remove @s hh.chakra 3
execute if score @s hh.chakra matches 3.. run scoreboard players add @s hh.narutoExp 3
tag @s remove hh.cinder