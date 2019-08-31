execute store result score @s hh.count0 run data get block ~ ~-1 ~ Items[{Slot:0b}].Count
execute store result score @s hh.count1 run data get block ~ ~-1 ~ Items[{Slot:1b}].Count
execute store result score @s hh.count2 run data get block ~ ~-1 ~ Items[{Slot:2b}].Count
execute store result score @s hh.count3 run data get block ~ ~-1 ~ Items[{Slot:3b}].Count
execute store result score @s hh.count4 run data get block ~ ~-1 ~ Items[{Slot:4b}].Count
execute store result score @s hh.count5 run data get block ~ ~-1 ~ Items[{Slot:5b}].Count
execute store result score @s hh.count6 run data get block ~ ~-1 ~ Items[{Slot:6b}].Count
execute store result score @s hh.count7 run data get block ~ ~-1 ~ Items[{Slot:7b}].Count
execute store result score @s hh.count8 run data get block ~ ~-1 ~ Items[{Slot:8b}].Count

scoreboard players operation #hh.temporary hh.slotTemp > @s hh.count0
scoreboard players operation #hh.temporary hh.slotTemp > @s hh.count1
scoreboard players operation #hh.temporary hh.slotTemp > @s hh.count2
scoreboard players operation #hh.temporary hh.slotTemp > @s hh.count3
scoreboard players operation #hh.temporary hh.slotTemp > @s hh.count4
scoreboard players operation #hh.temporary hh.slotTemp > @s hh.count5
scoreboard players operation #hh.temporary hh.slotTemp > @s hh.count6
scoreboard players operation #hh.temporary hh.slotTemp > @s hh.count7
scoreboard players operation #hh.temporary hh.slotTemp > @s hh.count8
scoreboard players operation @s hh.count = #hh.temporary hh.slotTemp

execute if score @s hh.count0 matches 1.. unless score #hh.temporary hh.slotTemp = @s hh.count0 run function hh.nindocraft:craftingtable/callback
execute if score @s hh.count1 matches 1.. unless score #hh.temporary hh.slotTemp = @s hh.count1 run function hh.nindocraft:craftingtable/callback
execute if score @s hh.count2 matches 1.. unless score #hh.temporary hh.slotTemp = @s hh.count2 run function hh.nindocraft:craftingtable/callback
execute if score @s hh.count3 matches 1.. unless score #hh.temporary hh.slotTemp = @s hh.count3 run function hh.nindocraft:craftingtable/callback
execute if score @s hh.count4 matches 1.. unless score #hh.temporary hh.slotTemp = @s hh.count4 run function hh.nindocraft:craftingtable/callback
execute if score @s hh.count5 matches 1.. unless score #hh.temporary hh.slotTemp = @s hh.count5 run function hh.nindocraft:craftingtable/callback
execute if score @s hh.count6 matches 1.. unless score #hh.temporary hh.slotTemp = @s hh.count6 run function hh.nindocraft:craftingtable/callback
execute if score @s hh.count7 matches 1.. unless score #hh.temporary hh.slotTemp = @s hh.count7 run function hh.nindocraft:craftingtable/callback
execute if score @s hh.count8 matches 1.. unless score #hh.temporary hh.slotTemp = @s hh.count8 run function hh.nindocraft:craftingtable/callback

execute unless entity @e[tag=hh.narutoCrafter.activator,limit=1,distance=..2] run summon armor_stand ~ ~-1.5 ~ {Tags:["hh.narutoCrafter.activator"],NoGravity:1,DisabledSlots:2035471,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700018,display:{Name:"\"\""},Lore:["\"PLACEHOLDER\""]}}]}

execute as @e[tag=hh.narutoCrafter] at @s unless block ~ ~-1 ~ dropper run setblock ~ 0 ~ bedrock
execute as @e[tag=hh.narutoCrafter] at @s unless block ~ ~-1 ~ dropper run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:clock",Count:1b,tag:{du_click_detect:1b,du_block_id:2380,NindoCraftID:14,CustomModelData:7700003,display:{Name:"{\"text\":\"Naruto Crafting Table\"}",Lore:["\"Craft Naruto items here!\""]}}}}
execute as @e[tag=hh.narutoCrafter] at @s unless block ~ ~-1 ~ dropper run kill @e[tag=hh.narutoCrafter.activator,sort=nearest,limit=1]
execute as @e[tag=hh.narutoCrafter] at @s unless block ~ ~-1 ~ dropper run kill @s

execute as @e[tag=hh.narutoCrafter] at @s run data modify block ~ 0 ~ Items set from block ~ ~-1 ~ Items
execute as @e[tag=hh.narutoCrafter] at @s run setblock ~ ~-1 ~ minecraft:dropper[triggered=true,facing=up]
execute as @e[tag=hh.narutoCrafter] at @s run data modify block ~ ~-1 ~ Items set from block ~ 0 ~ Items

execute as @e[tag=hh.narutoCrafter] at @s if data block ~ ~-1 ~ Items[{Slot:0b}].id run scoreboard players set @s hh.slot0 1
execute as @e[tag=hh.narutoCrafter] at @s unless data block ~ ~-1 ~ Items[{Slot:0b}].id run scoreboard players set @s hh.slot0 0

execute as @e[tag=hh.narutoCrafter] at @s if data block ~ ~-1 ~ Items[{Slot:1b}].id run scoreboard players set @s hh.slot1 1
execute as @e[tag=hh.narutoCrafter] at @s unless data block ~ ~-1 ~ Items[{Slot:1b}].id run scoreboard players set @s hh.slot1 0

execute as @e[tag=hh.narutoCrafter] at @s if data block ~ ~-1 ~ Items[{Slot:2b}].id run scoreboard players set @s hh.slot2 1
execute as @e[tag=hh.narutoCrafter] at @s unless data block ~ ~-1 ~ Items[{Slot:2b}].id run scoreboard players set @s hh.slot2 0

execute as @e[tag=hh.narutoCrafter] at @s if data block ~ ~-1 ~ Items[{Slot:3b}].id run scoreboard players set @s hh.slot3 1
execute as @e[tag=hh.narutoCrafter] at @s unless data block ~ ~-1 ~ Items[{Slot:3b}].id run scoreboard players set @s hh.slot3 0

execute as @e[tag=hh.narutoCrafter] at @s if data block ~ ~-1 ~ Items[{Slot:4b}].id run scoreboard players set @s hh.slot4 1
execute as @e[tag=hh.narutoCrafter] at @s unless data block ~ ~-1 ~ Items[{Slot:4b}].id run scoreboard players set @s hh.slot4 0

execute as @e[tag=hh.narutoCrafter] at @s if data block ~ ~-1 ~ Items[{Slot:5b}].id run scoreboard players set @s hh.slot5 1
execute as @e[tag=hh.narutoCrafter] at @s unless data block ~ ~-1 ~ Items[{Slot:5b}].id run scoreboard players set @s hh.slot5 0

execute as @e[tag=hh.narutoCrafter] at @s if data block ~ ~-1 ~ Items[{Slot:6b}].id run scoreboard players set @s hh.slot6 1
execute as @e[tag=hh.narutoCrafter] at @s unless data block ~ ~-1 ~ Items[{Slot:6b}].id run scoreboard players set @s hh.slot6 0

execute as @e[tag=hh.narutoCrafter] at @s if data block ~ ~-1 ~ Items[{Slot:7b}].id run scoreboard players set @s hh.slot7 1
execute as @e[tag=hh.narutoCrafter] at @s unless data block ~ ~-1 ~ Items[{Slot:7b}].id run scoreboard players set @s hh.slot7 0

execute as @e[tag=hh.narutoCrafter] at @s if data block ~ ~-1 ~ Items[{Slot:8b}].id run scoreboard players set @s hh.slot8 1
execute as @e[tag=hh.narutoCrafter] at @s unless data block ~ ~-1 ~ Items[{Slot:8b}].id run scoreboard players set @s hh.slot8 0

execute as @e[tag=hh.narutoCrafter.activator] at @s unless data entity @s ArmorItems[].id run function hh.nindocraft:craftingtable/activate
execute as @e[tag=hh.narutoCrafter.activator] at @s unless data entity @s ArmorItems[].id run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700018,display:{Name:"\"\""},Lore:["\"PLACEHOLDER\""]}}]}

scoreboard players reset #hh.temporary hh.slotTemp




#You have to
#1) Copy one active slot count to temporary scoreboard
#2) loop through all slots
#3) if current slot count is 0 then don't do anything
#4) If current slot count is 1.. then check if current score is equal to temporary scoreboard
#To get that starting active slot you could loop through every slots and use scoreboard players operation A m > B n to find the largest score.


