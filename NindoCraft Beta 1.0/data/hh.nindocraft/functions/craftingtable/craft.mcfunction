summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:clock",Count:1b,tag:{du_click_detect:1b,du_block_id:2380,NindoCraftID:14,CustomModelData:7700003,display:{Name:"{\"text\":\"Naruto Crafting Table\"}",Lore:["\"Craft Naruto items here!\""]}}}}
playsound minecraft:custom.naruto.poof1 block @a ~ ~ ~ 0.2 1
particle minecraft:cloud ~ ~ ~ 0 0 0 0.2 20 normal
particle minecraft:explosion ~ ~ ~ 0 0 0 0.1 1 normal
kill @e[type=item,nbt={Item:{id:"minecraft:dispenser",Count:1b}},distance=..2,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}},distance=..2,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:paper",Count:1b}},distance=..2,sort=nearest,limit=1]