summon minecraft:armor_stand ~ ~ ~ {Tags:["hh.inventoryKeeper"],NoGravity:1,Invisible:1}
scoreboard players operation @e[tag=hh.inventoryKeeper,sort=nearest,limit=1] du_uuid = @s du_uuid
data merge entity @e[tag=hh.inventoryKeeper,sort=nearest,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b}]}
data modify entity @e[tag=hh.inventoryKeeper,sort=nearest,limit=1] ArmorItems[-1].tag.ucit.raw_inventory set from entity @s Inventory
execute as @e[tag=hh.inventoryKeeper,sort=nearest,limit=1] at @s run function hh.nindocraft:jutsu/scroll/initiatehandsign
scoreboard players operation @s hh.previousSlot = @s hh.currentSlot
tag @s add hh.handsigning
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s {"text":"You are now in handsign mode!","bold":true,"color":"green"}
clear @s
scoreboard players set @s hh.scrolltimer 1

scoreboard players operation @e[tag=hh.chestFinder,sort=nearest,limit=89] du_uuid = @s du_uuid

#execute as @s if entity @s[tag=!hh.handsigning] run function hh.nindocraft:jutsu/scroll/initiatehandsign
#execute if score @s hh.handsigntimer matches 2.. unless score @s hh.handsign1 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/1
#execute if score @s hh.handsigntimer matches 2.. if score @s hh.handsign1 matches 1.. unless score @s hh.handsign2 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/2
#execute if score @s hh.handsigntimer matches 2.. if score @s hh.handsign2 matches 1.. unless score @s hh.handsign3 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/3
#execute if score @s hh.handsigntimer matches 2.. if score @s hh.handsign3 matches 1.. unless score @s hh.handsign4 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/4
#execute if score @s hh.handsigntimer matches 2.. if score @s hh.handsign4 matches 1.. unless score @s hh.handsign5 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/5
#execute if score @s hh.handsigntimer matches 2.. if score @s hh.handsign5 matches 1.. unless score @s hh.handsign6 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/6
#execute if score @s hh.handsigntimer matches 2.. if score @s hh.handsign6 matches 1.. unless score @s hh.handsign7 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/7
#execute if score @s hh.handsigntimer matches 2.. if score @s hh.handsign7 matches 1.. unless score @s hh.handsign8 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/8
#execute if score @s hh.handsigntimer matches 2.. if score @s hh.handsign8 matches 1.. unless score @s hh.handsign9 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/9
#execute if score @s hh.handsigntimer matches 2.. if score @s hh.handsign9 matches 1.. unless score @s hh.handsign10 matches 1.. unless score @s hh.hsSuccess matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick/10
#execute if score @s hh.hsSuccess matches 1 run playsound minecraft:custom.naruto.handsign player @s ~ ~ ~ 0.75 1
#scoreboard players set @s hh.hsSuccess 0
#scoreboard players set @s hh.scrolltimer 3
#execute if score @s hh.handsign1 matches 1.. run scoreboard players set @s hh.handsigntimer 1