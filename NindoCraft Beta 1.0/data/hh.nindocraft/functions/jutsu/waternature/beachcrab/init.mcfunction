execute unless score @s hh.chakra matches 25.. run tellraw @s {"text":"Not enough chakra! minimum of 25 is required!","bold":true,"color":"red"}
execute if score @s hh.chakra matches 25.. run summon armor_stand ~ ~ ~ {Tags:["hh.beachcrabray"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 25.. run scoreboard players operation @e[tag=hh.beachcrabray,sort=nearest,limit=1] du_uuid = @s du_uuid
execute if score @s hh.chakra matches 25.. run tp @e[tag=hh.beachcrabray,sort=nearest,limit=1] @s
execute if score @s hh.chakra matches 25.. run tp @e[tag=hh.beachcrabray,sort=nearest,limit=1] ~ ~1 ~
execute if score @s hh.chakra matches 25.. run scoreboard players remove @s hh.chakra 25
tag @s remove hh.beachcrab