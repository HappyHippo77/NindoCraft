execute unless score @s hh.chakra matches 5.. run tellraw @s {"text":"Not enough chakra! minimum of 5 is required!","bold":true,"color":"red"}
execute if score @s hh.chakra matches 5.. run summon armor_stand ~ ~ ~ {Tags:["hh.flarestand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 5.. run execute at @e[tag=hh.flarestand,sort=nearest,limit=1] if block ~ ~ ~ #du:air unless block ~ ~-1 ~ #du:non-solid run setblock ~ ~ ~ torch

execute if score @s hh.chakra matches 5.. run playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 0.5 0.75
execute if score @s hh.chakra matches 5.. run playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 1 0.55
execute if score @s hh.chakra matches 5.. run particle minecraft:flame ^ ^1.4 ^0.7 0.1 0.1 0.1 0.01 20 normal

execute if score @s hh.chakra matches 5.. run scoreboard players remove @s hh.chakra 5
execute if score @s hh.chakra matches 5.. run scoreboard players add @s hh.narutoExp 5

tag @s remove hh.flare