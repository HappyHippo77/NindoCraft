replaceitem entity @s armor.head minecraft:clock{du_click_detect:3b,NindoCraftID:7,CustomModelData:7700013,display:{Name:"\"Taki Headband\"",Lore:["\"Right click to wear!\""]}}
execute as @a[tag=du_right_click,nbt={SelectedItem:{id:"minecraft:clock",tag:{NindoCraftID:7}}}] at @s run clear @s clock{NindoCraftID:7} 1