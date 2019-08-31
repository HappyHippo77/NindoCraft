execute unless score @s hh.chakra matches 30.. run tellraw @s {"text":"Not enough chakra! minimum of 30 is required!","bold":true,"color":"red"}
execute if score @s hh.chakra matches 30.. run summon armor_stand ~ ~ ~ {Tags:["hh.flashfanstand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 30.. run scoreboard players operation @e[tag=hh.flashfanstand,sort=nearest,limit=1] du_uuid = @s du_uuid
execute if score @s hh.chakra matches 30.. run tp @e[tag=hh.flashfanstand,sort=nearest,limit=1] @s
execute if score @s hh.chakra matches 30.. run scoreboard players remove @s hh.chakra 30
execute if score @s hh.chakra matches 30.. run scoreboard players add @s hh.narutoExp 10
tag @s remove hh.flashfan