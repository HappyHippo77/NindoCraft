scoreboard players set @s hh.handsign1 0
scoreboard players set @s hh.handsign2 0
scoreboard players set @s hh.handsign3 0
scoreboard players set @s hh.handsign4 0
scoreboard players set @s hh.handsign5 0
scoreboard players set @s hh.handsign6 0
scoreboard players set @s hh.handsign7 0
scoreboard players set @s hh.handsign8 0
scoreboard players set @s hh.handsign9 0
scoreboard players set @s hh.handsign10 0
tellraw @s {"text":"You stop weaving signs","bold":true,"color":"red"}
playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1
tag @s remove hh.signweaving
scoreboard players set @s hh.handsigntimer 0