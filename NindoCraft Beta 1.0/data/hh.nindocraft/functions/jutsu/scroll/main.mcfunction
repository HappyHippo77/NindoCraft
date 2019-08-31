execute as @a unless score @s hh.scrolltimer matches ..0 run scoreboard players remove @a hh.scrolltimer 1
scoreboard players set @a[scores={hh.scrolltimer=..0}] hh.scrolltimer 0

execute as @e[tag=hh.inventoryKeeper] at @a if score @s du_uuid = @p du_uuid run tp @s ~ ~255 ~

execute at @e[tag=hh.handsigning] as @e[type=item,distance=..2] run data merge entity @s {PickupDelay:10s}

kill @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{NindoCraftID:0}}}]
execute as @a[tag=hh.handsigning] at @s run function hh.nindocraft:jutsu/scroll/replaceinventory

execute as @a[tag=hh.handsigning] at @s anchored eyes positioned ^ ^ ^0.1 run function hh.nindocraft:jutsu/scroll/findchest

# Hand Seals
scoreboard players add @a hh.handsign1 0
scoreboard players add @a hh.handsign2 0
scoreboard players add @a hh.handsign3 0
scoreboard players add @a hh.handsign4 0
scoreboard players add @a hh.handsign5 0
scoreboard players add @a hh.handsign6 0
scoreboard players add @a hh.handsign7 0
scoreboard players add @a hh.handsign8 0
scoreboard players add @a hh.handsign9 0
scoreboard players add @a hh.handsign10 0
scoreboard players add @a hh.hsSuccess 0
scoreboard players add @a hh.handsigntimer 0
execute as @a[tag=du_right_click,tag=du_sneaking,nbt={SelectedItem:{id:"minecraft:clock",tag:{du_click_detect:5b,NindoCraftID:2}}}] at @s unless score @s hh.scrolltimer matches 1.. run function hh.nindocraft:jutsu/scroll/rightclick
execute as @a[tag=du_left_click,tag=du_sneaking,nbt={SelectedItem:{id:"minecraft:clock",tag:{du_click_detect:5b,NindoCraftID:2}}}] at @s run function hh.nindocraft:jutsu/scroll/leftclick
scoreboard players add @a[scores={hh.handsigntimer=1..}] hh.handsigntimer 1

execute as @a[scores={hh.handsigntimer=40..}] run function hh.nindocraft:jutsu/scroll/canceljutsu

execute as @a at @s if entity @s[nbt={SelectedItemSlot:0}] run scoreboard players set @s hh.previousSlot 1
execute as @a at @s if entity @s[nbt={SelectedItemSlot:1}] run scoreboard players set @s hh.previousSlot 2
execute as @a at @s if entity @s[nbt={SelectedItemSlot:2}] run scoreboard players set @s hh.previousSlot 3
execute as @a at @s if entity @s[nbt={SelectedItemSlot:3}] run scoreboard players set @s hh.previousSlot 4
execute as @a at @s if entity @s[nbt={SelectedItemSlot:4}] run scoreboard players set @s hh.previousSlot 5
execute as @a at @s if entity @s[nbt={SelectedItemSlot:5}] run scoreboard players set @s hh.previousSlot 6
execute as @a at @s if entity @s[nbt={SelectedItemSlot:6}] run scoreboard players set @s hh.previousSlot 7
execute as @a at @s if entity @s[nbt={SelectedItemSlot:7}] run scoreboard players set @s hh.previousSlot 8
execute as @a at @s if entity @s[nbt={SelectedItemSlot:8}] run scoreboard players set @s hh.previousSlot 9

execute as @a[tag=hh.handsigning] at @s unless score @s hh.currentSlot = @s hh.previousSlot run function hh.nindocraft:jutsu/scroll/getslotchange

execute as @a at @s if entity @s[nbt={SelectedItemSlot:0}] run scoreboard players set @s hh.currentSlot 1
execute as @a at @s if entity @s[nbt={SelectedItemSlot:1}] run scoreboard players set @s hh.currentSlot 2
execute as @a at @s if entity @s[nbt={SelectedItemSlot:2}] run scoreboard players set @s hh.currentSlot 3
execute as @a at @s if entity @s[nbt={SelectedItemSlot:3}] run scoreboard players set @s hh.currentSlot 4
execute as @a at @s if entity @s[nbt={SelectedItemSlot:4}] run scoreboard players set @s hh.currentSlot 5
execute as @a at @s if entity @s[nbt={SelectedItemSlot:5}] run scoreboard players set @s hh.currentSlot 6
execute as @a at @s if entity @s[nbt={SelectedItemSlot:6}] run scoreboard players set @s hh.currentSlot 7
execute as @a at @s if entity @s[nbt={SelectedItemSlot:7}] run scoreboard players set @s hh.currentSlot 8
execute as @a at @s if entity @s[nbt={SelectedItemSlot:8}] run scoreboard players set @s hh.currentSlot 9

execute as @a[tag=hh.jutsuCast] at @s run function hh.nindocraft:jutsu/scroll/castjutsu

# Non-Hand Seals
scoreboard players add @a hh.scrollCurrent 0
scoreboard players add @a hh.scrollMax 0
execute as @a[tag=du_right_click,tag=!du_sneaking,nbt={SelectedItem:{id:"minecraft:clock",tag:{du_click_detect:5b,NindoCraftID:2}}}] at @s run function hh.nindocraft:jutsu/scroll/nohandseals/rightclick
execute as @a[tag=du_left_click,tag=!du_sneaking,nbt={SelectedItem:{id:"minecraft:clock",tag:{du_click_detect:5b,NindoCraftID:2}}}] at @s run function hh.nindocraft:jutsu/scroll/nohandseals/leftclick

# Elementless
execute as @a[tag=du_left_click,tag=du_sneaking,tag=!hh.handsigning,nbt={SelectedItem:{id:"minecraft:clock",tag:{du_click_detect:5b,NindoCraftID:2}}}] at @s if score @s hh.scrollCurrent = @s hh.chakractrl run playsound minecraft:custom.naruto.initjutsu player @s ~ ~ ~ 0.4 1
execute as @a[tag=du_left_click,tag=du_sneaking,tag=!hh.handsigning,nbt={SelectedItem:{id:"minecraft:clock",tag:{du_click_detect:5b,NindoCraftID:2}}}] at @s if score @s hh.scrollCurrent = @s hh.chakractrl run tag @s add hh.chakracontrol

execute as @a[tag=du_left_click,tag=du_sneaking,tag=!hh.handsigning,nbt={SelectedItem:{id:"minecraft:clock",tag:{du_click_detect:5b,NindoCraftID:2}}}] at @s if score @s hh.scrollCurrent = @s hh.transform unless entity @s[tag=hh.transformed] run tag @s add hh.transform

# Fire Style
execute as @a[tag=du_left_click,tag=du_sneaking,tag=!hh.handsigning,nbt={SelectedItem:{id:"minecraft:clock",tag:{du_click_detect:5b,NindoCraftID:2}}}] at @s if score @s hh.scrollCurrent = @s hh.fireshuriken run tag @s add hh.fireshuriken