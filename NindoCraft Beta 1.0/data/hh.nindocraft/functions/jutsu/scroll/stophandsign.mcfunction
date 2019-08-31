# Assuming current location is at @p and @s is the armor stand
setblock ~ 255 ~ shulker_box
# Copying hotbar to shulker box
data modify block ~ 255 ~ Items set from entity @s ArmorItems[-1].tag.ucit.hotbar
# The loading process
# "hotbar.0 9" is very important, the "hotbar.0" is the starting slot and "9" is the size of the payload.
loot replace entity @p hotbar.0 9 mine ~ 255 ~ iron_pickaxe{ucit: {id: "inventory_modifier"}}

data modify block ~ 255 ~ Items set from entity @s ArmorItems[-1].tag.ucit.backpack
loot replace entity @p inventory.0 27 mine ~ 255 ~ iron_pickaxe{ucit: {id: "inventory_modifier"}}

data modify block ~ 255 ~ Items set from entity @s ArmorItems[-1].tag.ucit.armor
loot replace entity @p armor.feet 4 mine ~ 255 ~ iron_pickaxe{ucit: {id: "inventory_modifier"}}

setblock ~ 255 ~ air

kill @s
scoreboard players set @p hh.scrolltimer 1
tag @p remove hh.handsigning
execute as @p at @p run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1
tellraw @p {"text":"You have exited handsign mode!","bold":true,"color":"red"}
execute as @e[tag=hh.chestFinder] at @p if score @s du_uuid = @p du_uuid run kill @s