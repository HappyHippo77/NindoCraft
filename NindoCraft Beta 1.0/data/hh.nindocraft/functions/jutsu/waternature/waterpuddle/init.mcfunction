tag @s add hh.isAPuddle

playsound minecraft:entity.player.splash.high_speed player @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.1 0.5 0.1 0.1 50 normal
summon armor_stand ~ ~ ~ {Tags:["hh.waterpuddlestand"],Invisible:1,Marker:1,NoGravity:1,DisabledSlots:2039583}
scoreboard players operation @e[tag=hh.waterpuddlestand,sort=nearest,limit=1] du_uuid = @s du_uuid

tag @s remove hh.waterpuddle