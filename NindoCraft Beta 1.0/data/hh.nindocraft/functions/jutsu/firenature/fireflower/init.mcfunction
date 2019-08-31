execute unless score @s hh.chakra matches 50.. run tellraw @s {"text":"Not enough chakra! minimum of 50 is required!","bold":true,"color":"red"}
execute if score @s hh.chakra matches 50.. run execute as @s at @s rotated as @s rotated ~ 0 run summon armor_stand ^ ^1.5 ^2 {Tags:["hh.fireflowerstand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 50.. run execute as @s at @s rotated as @s rotated ~ 0 run summon armor_stand ^2 ^3 ^2 {Tags:["hh.fireflowerstand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 50.. run execute as @s at @s rotated as @s rotated ~ 0 run summon armor_stand ^-2 ^3 ^2 {Tags:["hh.fireflowerstand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 50.. run execute as @s at @s rotated as @s rotated ~ 0 run summon armor_stand ^2 ^ ^2 {Tags:["hh.fireflowerstand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 50.. run execute as @s at @s rotated as @s rotated ~ 0 run summon armor_stand ^-2 ^ ^2 {Tags:["hh.fireflowerstand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
execute if score @s hh.chakra matches 50.. run scoreboard players operation @e[tag=hh.fireflowerstand,sort=nearest,limit=5] du_uuid = @s du_uuid
execute if score @s hh.chakra matches 50.. run scoreboard players remove @s hh.chakra 50
execute if score @s hh.chakra matches 50.. run scoreboard players add @s hh.narutoExp 15

tag @s remove hh.fireflower