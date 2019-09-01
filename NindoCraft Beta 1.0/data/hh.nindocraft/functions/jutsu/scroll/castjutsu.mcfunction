# Elementless
execute if entity @s[scores={hh.handsign1=2,hh.handsign2=0,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0},tag=hh.chakracontrol] run function hh.nindocraft:jutsu/chakracontrol/release
execute if entity @s[scores={hh.handsign1=2,hh.handsign2=0,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0},tag=hh.transformed] run function hh.nindocraft:jutsu/transform/release
execute if entity @s[scores={hh.handsign1=2,hh.handsign2=0,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0},tag=hh.fireshurikening] run function hh.nindocraft:jutsu/firenature/shuriken/release
execute if entity @s[scores={hh.handsign1=2,hh.handsign2=0,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0},tag=hh.flameresistant] run function hh.nindocraft:jutsu/firenature/flameresistance/release
execute if entity @s[scores={hh.handsign1=2,hh.handsign2=0,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0},tag=hh.flamesphereing] run function hh.nindocraft:jutsu/firenature/flamesphere/release
execute if entity @s[scores={hh.handsign1=2,hh.handsign2=0,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0},tag=hh.isAPuddle] run function hh.nindocraft:jutsu/waternature/waterpuddle/release
execute if entity @s[scores={hh.handsign1=2,hh.handsign2=0,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0},tag=hh.watershielding] run function hh.nindocraft:jutsu/waternature/watershield/release

# Fire Style
execute if entity @s[scores={hh.handsign1=1,hh.handsign2=0,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=2..,hh.chakraNature1=1},tag=!hh.flamesphereing] run tag @s add hh.cinder

execute if entity @s[scores={hh.handsign1=1,hh.handsign2=2,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=4..,hh.chakraNature1=1},tag=!hh.flamesphereing] run tag @s add hh.flare

execute if entity @s[scores={hh.handsign1=2,hh.handsign2=1,hh.handsign3=2,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=7..,hh.chakraNature1=1},tag=!hh.flamesphereing] run tag @s add hh.veil

execute if entity @s[scores={hh.handsign1=1,hh.handsign2=2,hh.handsign3=1,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=8..,hh.chakraNature1=1},tag=!hh.flamesphereing] run tag @s add hh.flameresistance

execute if entity @s[scores={hh.handsign1=2,hh.handsign2=3,hh.handsign3=1,hh.handsign4=2,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=10..,hh.chakraNature1=1},tag=!hh.flamesphereing] run tag @s add hh.flashfan

execute if entity @s[scores={hh.handsign1=2,hh.handsign2=1,hh.handsign3=2,hh.handsign4=3,hh.handsign5=1,hh.handsign6=2,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=12..,hh.chakraNature1=1},tag=!hh.flamesphereing] run tag @s add hh.fireflower

execute if entity @s[scores={hh.handsign1=2,hh.handsign2=1,hh.handsign3=3,hh.handsign4=2,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=13..,hh.chakraNature1=1},tag=!hh.flamesphereing] run tag @s add hh.flamesphere

execute if entity @s[scores={hh.handsign1=1,hh.handsign2=2,hh.handsign3=1,hh.handsign4=4,hh.handsign5=2,hh.handsign6=1,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=16..,hh.chakraNature1=1},tag=!hh.flamesphereing] run tag @s add hh.fireball

execute if entity @s[scores={hh.handsign1=3,hh.handsign2=2,hh.handsign3=4,hh.handsign4=1,hh.handsign5=3,hh.handsign6=1,hh.handsign7=2,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=18..,hh.chakraNature1=1},tag=!hh.flamesphereing] run tag @s add hh.dragonflame

# Water style
execute if entity @s[scores={hh.handsign1=3,hh.handsign2=2,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=2..,hh.chakraNature1=2},tag=!hh.isAPuddle] run tag @s add hh.fishspit

execute if entity @s[scores={hh.handsign1=1,hh.handsign2=3,hh.handsign3=0,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=5..,hh.chakraNature1=2},tag=!hh.isAPuddle] run tag @s add hh.waterpellet

execute if entity @s[scores={hh.handsign1=1,hh.handsign2=3,hh.handsign3=2,hh.handsign4=0,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=6..,hh.chakraNature1=2},tag=!hh.isAPuddle] run tag @s add hh.watershuriken

execute if entity @s[scores={hh.handsign1=3,hh.handsign2=1,hh.handsign3=2,hh.handsign4=3,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=8..,hh.chakraNature1=2},tag=!hh.isAPuddle] run tag @s add hh.waterpuddle

execute if entity @s[scores={hh.handsign1=1,hh.handsign2=2,hh.handsign3=1,hh.handsign4=3,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=10..,hh.chakraNature1=2},tag=!hh.isAPuddle] run tag @s add hh.beachcrab

execute if entity @s[scores={hh.handsign1=1,hh.handsign2=2,hh.handsign3=1,hh.handsign4=2,hh.handsign5=0,hh.handsign6=0,hh.handsign7=0,hh.handsign8=0,hh.handsign9=0,hh.handsign10=0,hh.ninjutsu=12..,hh.chakraNature1=2},tag=!hh.isAPuddle] run tag @s add hh.watershield

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
tellraw @s {"text":"Casting jutsu!","bold":true,"color":"green"}
playsound minecraft:custom.naruto.initjutsu player @a ~ ~ ~ 0.5 1
tag @s remove hh.signweaving
tag @s remove hh.jutsuCast
scoreboard players set @s hh.handsigntimer 0