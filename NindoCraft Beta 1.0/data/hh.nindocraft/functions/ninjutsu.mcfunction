# Level 1
execute if score @s hh.ninjutsu matches 1 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Transformation","bold":true,"color":"aqua"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 5\n- Description: Allows players to select a mob, and then transform into it!\n- Combo: None (Released by 2)","bold":true,"color":"aqua"}]
execute if score @s hh.ninjutsu matches 1 run scoreboard players add @s hh.scrollMax 1
execute if score @s hh.ninjutsu matches 1 run scoreboard players operation @s hh.transform = @s hh.scrollMax

# Level 2
execute if score @s hh.ninjutsu matches 2 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Chakra Control","bold":true,"color":"aqua"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 1 per second\n- Description: Allows players to perform actions such as walking on water!\n- Combo: None (Released by 2)","bold":true,"color":"aqua"}]
execute if score @s hh.ninjutsu matches 2 run scoreboard players add @s hh.scrollMax 1
execute if score @s hh.ninjutsu matches 2 run scoreboard players operation @s hh.chakractrl = @s hh.scrollMax
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 2 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Cinder Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 3\n- Description: The user ignites a small spark which can be used to light furnaces and easily burned items on fire!\n- Combo: 1","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 2 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Water Style: Fish Spit","bold":true,"color":"blue"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 5\n- Description: The user spits out a small stream of water which slows down the target!\n- Combo: 3-2","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 2 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 2 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 3

# Level 4
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 4 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Flare Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 5\n- Description: The user expells a small burst of flame, lighting up the surrounding area for a moment!\n- Combo: 1-2","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 4 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 5
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 5 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Shuriken Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 5 per thrown shuriken\n- Description: The user coats a shuriken which they have thrown in fire, causing the target to burn on impact!\n- Combo: None (Released by 2)","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 5 run scoreboard players add @s hh.scrollMax 1
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 5 run scoreboard players operation @s hh.fireshuriken = @s hh.scrollMax
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 5 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Water Style: Water Pellet","bold":true,"color":"blue"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 25\n- Description: A more complex version of the Fish Spit technique, this jutsu deals more damage, more slowness, and looks cooler too!\n- Combo: 1-3","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 5 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 5 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 6
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 6 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Water Style: Water Shuriken","bold":true,"color":"blue"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 5\n- Description: The user fires a shuriken made of water, damaging and stunning the target!\n- Combo: 1-3-2","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 6 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 7
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 7 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Veil Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 15\n- Description: The user fires a beam of hot white light, blinding everyone it hits!\n- Combo: 2-1-2","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 7 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 8
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 8 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Flame Resistance Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 1 per second\n- Description: Ther user coats their body in chakra, preventing flames from damaging them!\n- Combo: 1-2-1 (Released by 2)","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 8 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Water Style: Water Puddle","bold":true,"color":"blue"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 1 per second\n- Description: The user transforms into a puddle of water, effective for hiding!\n- Combo: 3-1-2-3 (Released by 2)","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 8 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 8 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 9

# Level 10
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 10 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Flash Fan Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 30\n- Description: The user shoots a short-lived wave of fire which grows as it moves, damaging and burning the target!\n- Combo: 2-3-1-2","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 10 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 10 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Water Style: Beach Crab","bold":true,"color":"blue"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 25\n- Description: Two crab pincers reach up from the ground, pulling the target below the surface! This technique is only effective above loose ground.\n- Combo: 1-2-1-3","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 10 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 11

# Level 12
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 12 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Mythical Fire Flower Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 50\n- Description: The user fires five small balls of fire, which will gravitate towards entities within 5 blocks of them, damaging and burning them!\n- Combo: 2-1-2-3-1-2","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 12 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 12 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Water Style: Water Shield Technique","bold":true,"color":"blue"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 3 per second\n- Description: The user makes a cylindrical shield of solid water around them, which is effective against physical attacks and projectiles! This technique is not effective against ninjutsu.\n- Combo: 1-2-1-2 (Released by 2)","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=2}] if score @s hh.ninjutsu matches 12 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 13
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 13 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Flame Sphere Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 3 per second\n- Description: The user surrounds themselves in fire, shielding them from attack! (Note: You cannot move when in this state. If you are damaged, the jutsu is released.)\n- Combo: 2-1-3-2","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 13 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 14

# Level 15

# Level 16
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 16 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Great Fireball Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 65\n- Description: The user exhales a massive ball of fire which explodes on impact with the target!\n- Combo: 1-2-1-4-2-1","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 16 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

# Level 17

# Level 18
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 18 run tellraw @s ["",{"text":"You unlocked the ","bold":true,"color":"green"},{"text":"Fire Style: Dragon Flame Technique","bold":true,"color":"red"},{"text":" jutsu!","bold":true,"color":"green"},{"text":"\n"},{"text":"- Chakra Cost: 75\n- Description: The user breaths out fire in a stream, inflicting the enemy with excruciating burns!\n- Combo: 3-2-4-1-3-1-2","bold":true,"color":"aqua"}]
execute if entity @s[scores={hh.chakraNature1=1}] if score @s hh.ninjutsu matches 18 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

scoreboard players set @s an.success 0