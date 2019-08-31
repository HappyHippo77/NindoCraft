execute if entity @s[nbt={SelectedItemSlot:0}] run function hh.nindocraft:jutsu/scroll/1/evaluate
execute if entity @s[nbt={SelectedItemSlot:1}] run function hh.nindocraft:jutsu/scroll/2/evaluate
execute if entity @s[nbt={SelectedItemSlot:2}] run function hh.nindocraft:jutsu/scroll/3/evaluate
execute if entity @s[nbt={SelectedItemSlot:3}] run function hh.nindocraft:jutsu/scroll/4/evaluate

execute if entity @s[nbt={SelectedItemSlot:4},tag=hh.signweaving] run tag @s add hh.jutsuCast
execute if entity @s[nbt={SelectedItemSlot:5},tag=hh.signweaving] run function hh.nindocraft:jutsu/scroll/canceljutsu

execute if entity @s[nbt={SelectedItemSlot:8}] run execute as @e[tag=hh.inventoryKeeper] if score @s du_uuid = @p du_uuid run function hh.nindocraft:jutsu/scroll/stophandsign