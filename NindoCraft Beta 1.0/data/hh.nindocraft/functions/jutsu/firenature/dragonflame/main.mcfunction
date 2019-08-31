scoreboard players add @s hh.timer1 1

summon armor_stand ~ ~ ~ {Tags:["hh.dragonflamestand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
scoreboard players operation @e[tag=hh.dragonflamestand,sort=nearest,limit=1] du_uuid = @s du_uuid
tp @e[tag=hh.dragonflamestand,sort=nearest,limit=1] @s

execute if score @s hh.timer1 matches 80.. run tag @s remove hh.dragonflaming
execute if score @s hh.timer1 matches 80.. run scoreboard players set @s hh.timer1 0