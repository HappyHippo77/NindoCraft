setblock ~ ~ ~ dropper[facing=up]{CustomName:"\"Naruto Crafting Table\""}
setblock ~ 0 ~ dropper[facing=up]
setblock ~ 1 ~ bedrock
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~1 ~ {Tags:["hh.narutoCrafter"],NoGravity:1,Marker:1,DisabledSlots:2039583,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700003}}]}
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~-0.5 ~ {Tags:["hh.narutoCrafter.activator"],NoGravity:1,DisabledSlots:2035471,Invisible:1,ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b,tag:{CustomModelData:7700018,display:{Name:"\"\""},Lore:["\"PLACEHOLDER\""]}}]}
clear @s minecraft:clock{du_click_detect:1b,du_block_id:2380,NindoCraftID:14} 1