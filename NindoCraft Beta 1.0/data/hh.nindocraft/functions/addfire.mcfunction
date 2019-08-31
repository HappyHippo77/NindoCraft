#execute as @e[tag=hh.addfirestand,distance=..1] at @s run scoreboard players set @s hh.timer 0
execute if block ~ ~ ~ #du:air run setblock ~ ~ ~ fire
execute if block ~ ~ ~ #du:flowers run setblock ~ ~ ~ fire
execute if block ~ ~ ~ grass run setblock ~ ~ ~ fire
execute if block ~ ~ ~ tall_grass run setblock ~ ~ ~ fire
summon armor_stand ~ ~ ~ {Tags:["hh.addfirestand"],NoGravity:1,Invisible:1,Marker:1,DisabledSlots:2039583}
tag @s remove hh.addfire