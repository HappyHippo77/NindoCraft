execute unless score @s hh.chakra matches 15.. run tellraw @s {"text":"Not enough chakra! minimum of 15 is required!","bold":true,"color":"red"}
execute if score @s hh.chakra matches 15.. run summon armor_stand ~ ~ ~ {Tags:["hh.veilray"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 15.. run scoreboard players operation @e[tag=hh.veilray,sort=nearest,limit=1] du_uuid = @s du_uuid
tp @e[tag=hh.veilray,sort=nearest,limit=1] @s
execute if score @s hh.chakra matches 15.. run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0.65
execute if score @s hh.chakra matches 15.. run scoreboard players remove @s hh.chakra 15
execute if score @s hh.chakra matches 15.. run scoreboard players add @s hh.narutoExp 5
tag @s remove hh.veil