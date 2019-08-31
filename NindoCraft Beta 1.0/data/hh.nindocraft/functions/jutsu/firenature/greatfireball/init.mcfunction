execute unless score @s hh.chakra matches 65.. run tellraw @s {"text":"Not enough chakra! minimum of 65 is required!","bold":true,"color":"red"}
execute if score @s hh.chakra matches 65.. run execute as @s at @s rotated as @s rotated ~ 0 run summon armor_stand ^ ^1.5 ^2 {Tags:["hh.fireballstand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 65.. run scoreboard players operation @e[tag=hh.fireballstand,sort=nearest,limit=5] du_uuid = @s du_uuid
execute if score @s hh.chakra matches 65.. run scoreboard players remove @s hh.chakra 65
execute if score @s hh.chakra matches 65.. run scoreboard players add @s hh.narutoExp 25

tag @s remove hh.fireball