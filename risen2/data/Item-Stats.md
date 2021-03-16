
## Disclaimer

This mostly started as a reference for my own use while playing the game. If I didn't encounter something, it probably didn't get filled in.

Also, even in single-player games like this, I don't tend to cheat much. The exceptions are things that I think are bugged / poorly designed (e.g. quest not giving the reward it said it was, final boss fight from the first Risen game that was basically some kind of platformer bs that didn't belong in an RPG, etc) -- e.g. not just to circumvent some challenge.

As such, most of the item codes I have matched up based purely on the name. Given that this game was *translated* to English and I am using the English language version, there could be mistakes (e.g. these weren't all tested). Obviously, if I did test something I did my best to correct any errors. Bottomline: the item codes are probably mostly correct but it is very possible that some things are not correct, especially where there is more room for mistakes like in the gun names (which were horribly translated and often have in-game display names that do not match their designated skill category) and some of the clothing names.

If you decide you try them out anyway, the instructions are:

1. Anywhere in game type in `pommes` quickly and it enables test mode, access console by pressing The tilde key \`
2. type `list` to show all commands
3. type `give Item_Code` to give 1 copy of the item or `give Item_Code n` to give n copies of the item. Note that all item codes are **case-sensitive**
4. If you want to remove an item (such as a quest item that didn't get removed) then you can type `take Item_Code` or `take Item_Code n` to remove the appropriate number of that item. This also works like gold (for example if you want to "buy" something out of thin air so you can RP getting it from a different merchant, you could do something like `take It_Gold 150` then `give It_SkinningKnife 1`)



## Items


### Permanent Potions

Note: While there is a potion for permanently increasing Toughness ('Leather Oil'), it does not appear to have a recipe in-game (or it is undocumented / named strangely)

| Item Name          | Buy  | Sell | Item Code            | Effects                                  |
|:------------------:|:----:|:----:|:--------------------:|:----------------------------------------:|
| Fool's Juice       | ???? | ???  | It_Po_Perm_Cunning   | Silver Tongue, Dirty Tricks, Thievery +2 |
| Graveroot Extract  | ???? | ???  | It_Po_Perm_Voodoo    | Black Magic, Death Cult, Ritual +2       |
| Leather Oil        | ???? | ???  | It_Po_Perm_Toughness | Bladeproof, Bulletproof, Intimidate +2   |
| Sharpeye Paste     | ???? | ???  | It_Po_Perm_Firearms  | Muskets, Pistols, & Shotguns +2          |
| Swordthorn Essence | ???? | ???  | It_Po_Perm_Blades    | Piercing, Slashing, & Throwing +2        |



### Temporary Potions

Note: These potiosn become more effective with additional ranks of the Ritual skill (Voodoo). By default they all are +7. With Ritual 1, they become +13. With Ritual 2, they become +17. With Ritual 3, they become +??.

| Item Name            | Buy  | Sell | Item Code          | Duration | Skill(s) Effected            | Reg | Rit-1 | Rit-2 | Rit-3 | Who to buy it from?      |
|:--------------------:|:----:|:----:|:------------------:|:---------------------------------------:|:---:|:-----:|:-----:|:-----:|:---------------------------------:|
| Marksman's Potion    | 200  | 30   | It_Po_Firearms     | 30 sec   | Muskets, Pistols, Shotguns   | +7  | +13   | +17   | ??    | Badriya, Emma |
| Potion of Awe        | 150  | 20   | It_Po_Intimdate    | 30 sec   | Intimidate                   | +7  | +13   | +17   | ??    | Badriya, Emma |
| Potion of Blades     | 200  | 30   | It_Po_Blade        | 30 sec   | Throwing, Piercing, Slashing | +7  | +13   | +17   | ??    | Badriya, Emma |
| Potion of Persuasion | 150  | 20   | It_Po_Silvertongue | 30 sec   | Silver Tongue                | +7  | +13   | +17   | ??    | Badriya, Emma |
| Ritual Potion        | 175  | 25   | It_Po_Ritual       | 30 sec   | Ritual                       | +7  | +13   | +17   | ??    | Badriya, Emma |
| Spirit Essence       | 175  | 25   | It_Po_BlackMagic   | 30 sec   | Black Magic                  | +7  | +13   | +17   | ??    | Badriya, Emma |
| Thief's Potion       | 250  | 50   | It_Po_Thief        | 30 sec   | Thievery                     | +7  | +13   | +17   | ??    | Badriya, Emma |


Item Codes:

It_Po_AncestorsBlood
It_Po_FalseBlood_Tao
It_Po_FalseDead_Tao
It_Po_Health_02
It_Po_Speed
It_Potion_Health


### Alcohol

| Item Name   | Buy | Sell | Item Code        | Effects                          | Who to buy it from?      |
|:-----------:|:---:|:----:|:----------------:|:--------------------------------:|:----------------------------------------:|
| Grog        | 60  | 10   | It_Bo_Grog       | Blood +50                        | Osorio, Booze, Sophia |
| Bloody Mary | 75  | 20   | It_Bo_BloodyMary | Regeneration 100                 | Booze, Spencer |
| Rum         | 100 | 20   | It_Bo_Rum        | Blood +100                       | Osorio, Booze, Sophia |
| Painkiller  | 150 | 30   | It_Bo_PainKiller | Bladeproof +50, Bulletproof +50  | Booze |


Item Codes:

It_Rum
It_Painkiller


### Head

| Item Name            | Buy  | Sell | Item Code          | Stats and Effects                               | Who to buy it from?      |
|:--------------------:|:----:|:----:|:------------------:|:-----------------------------------------------:|:----------------------------------------:|
| Black Bandana        | 150  | 30   | It_Bandana_Black   | Bladeproof +2, Bulletproof +2, Intimidate +2    | Sophia |
| Striped Bandana      | 100  | 20   | It_Bandana_Striped | Bladeproof +2, Bulletproof +2                   | Flannigan |
| Old Bandana          | 100  | 20   | It_Bandana_Torn    | Bladeproof +2, Bulletproof +2                   | Carter, Flannigan |
| Old Bicorne Hat      | 100  | 20   | It_Bicorn_Torn     | Bladeproof +2, Bulletproof +2                   | Sophia |
| Pirate Bandana Largo | 100  | 20   | It_Bandana_Largo   | Bladeproof +5, Bulletproof +0, Intimidate +5    |  |
| Old Tricorne Hat     | 200  | 40   | It_Tricorn_Torn    | Bladeproof +3, Bulletproof +3                   | Sophia |
| Pirate Hat (DLC)     | 250  | 50   | It_Hat_DLC1        | Bladeproof +5, Bulletproof +5, Silver Tongue +5 |  |


Item Codes:

It_Tricorn_Gold
It_Tricorn_White
It_Bandana_Red
It_Bicorn_Black
It_Bicorn_Silver



### Body

| Item Name            | Buy  | Sell | Item Code         | Stats and Effects                                              | Who to buy it from?      |
|:--------------------:|:----:|:----:|:-----------------:|:--------------------------------------------------------------:|:--------------------------------:|
| Dirty Shirt          | 75   | 15   | ???               | Bladeproof +3, Bulletproof +3                                  |  |
| Old Shirt            | 75   | 15   | It_Shirt_Torn     | Bladeproof +3, Bulletproof +3                                  | Carter |
| Plain Shirt          | 100  | 20   | ???               | Bladeproof +5, Bulletproof +5                                  | Flannigan |
| Striped Shirt        | 100  | 20   | ???               | Bladeproof +5, Bulletproof +5                                  | Flannigan |
| Old Waistcoat        | 150  | 30   | It_GreatCoat_Torn | Bladeproof +8, Bulletproof +8                                  | Sophia |
| Largos Leather Shirt | 150  | 30   | It_Shirt_Largo    | Bladeproof +6, Bulletproof +5                                  | Carter |
| Leather Shirt        | 200  | 40   | It_Shirt_Leather  | Bladeproof +6, Bulletproof +6                                  | Sophia |
| Elegant Waistcoast   | 300  | 60   | ???               | Bladeproof +10, Bulletproof +10, Silver Tongue +5              | DiFuego |
| Old Coat             | 350  | 60   | It_Coat_Torn      | Bladeproof +12, Bulletproof +12                                | Sophia |
| Pirate Clothes (DLC) | 500  | 100  | It_Armor_DLC1     | Bladeproof +10, Bulletproof +5                                 |  |
| Silk Shirt           | 500  | 100  | ???               | Bladeproof +1, Bulletproof +1, Silver Tongue +10, Piercing +10 | DiFuego |



Item Codes:

It_Coat_Cloth
It_Coat_Inq
It_Coat_Leather
It_GreatCoat_Black
It_GreatCoat_Leather
It_GreatCoat_Striped

It_Shirt_Cloth
It_Shirt_Collar
It_Shirt_Striped
It_Shirt_White
It_Vest_Black
It_Vest_Leather
It_Vest_Silk
It_Vest_Torn


### Legs

| Item Name          | Buy  | Sell | Item Code       | Stats and Effects                               | Who to buy it from?                      |
|:------------------:|:----:|:----:|:---------------:|:-----------------------------------------------:|:----------------------------------------:|
| Colourful Trousers | 150  | 30  | ???              | Bladeproof +2, Bulletproof +2                   | Carter, Flannigan |
| Leather Trousers   | 150  | 30  | It_Pants_Leather | Bladeproof +2, Bulletproof +2                   | Sophia |
| Black Trousers     | 200  | 50  | It_Pants_Black   | Bladeproof +3, Bulletproof +3, Intimidate +3    | DiFuego |
| White Trousers     | 200  | 50  | It_Pants_White   | Bladeproof +3, Bulletproof +3, Silver Tongue +3 | DiFuego |



Item Codes:



It_Pants_Null
It_Pants_Striped
It_Pants_Studded


### Feet

| Item Name            | Buy  | Sell | Item Code            | Stats and Effects                               | Who to buy it from?      |
|:--------------------:|:----:|:----:|:--------------------:|:-----------------------------------------------:|:----------------------------------------:|
| ???                  | ???? | ???  | It_HighBoot_Normal   |  |  |
| ???                  | ???? | ???  | It_HighBoot_Polished |  |  |
| Elegant Shoes        | 400  | 80   | It_Shoes_Rich        | Bladeproof +5, Silver Tongue +5                 | DiFuego |
| Good Shoes           | 200  | 40   | It_Shoes_Polished    | Bladeproof +3, Silver Tongue +3                 | DiFuego, Sophia |
| Good Short Boots     | 300  | 60   | It_LowBoot_Polished  | Bladeproof +5, Bulletproof +5, Silver Tongue +2 | Sophia |
| Old Leather Boots    | 200  | 40   | It_HighBoot_Torn     | Bladeproof +5, Bulletproof +5                   | Sophia |
| Old Shoes            | 75   | 15   | It_Shoes_Torn        | Bladeproof +2, Silver Tongue +2                 | Flannigan |
| Old Short Boots      | 125  | 25   | It_LowBoot_Torn      | Bladeproof +5                                   | Flannigan |
| Pirate Boots (DLC)   | 250  | 50   | It_Shoes_DLC1        | Bladeproof +5, Bulletproof +5                   |  |
| Wornout Boots: Largo | 125  | ???  | It_LowBoot_Largo     | Bladeproof +5                                   |  |


Item Codes:
It_LowBoot_NPC_Largo



### Earrings

| Item Name          | Buy  | Sell | Item Code         | Stats and Effects         | Who to buy it from?      |
|:------------------:|:----:|:----:|:-----------------:|:----------------------- -:|:----------------------------------------:|
| Blackpearl         | 2000 | 400  | It_Ear_Largo      | Cunning +1                |  |
| Bloodthorn Earring | 200  | 40   | It_Ear_Bloodthorn | Ritual +5                 | Kapua |
| Duelist's Earring  | 250  | 50   | It_Ear_Duel       | Piercing +5               | DiFuego |
| Feather Earring    | ???? | ???  | ???               | ???                       |  |
| Jade Earring       | 250  | 50   | It_Ear_Jade       | Black Magic +5            | Emma |
| Pearl Earring      | 200  | 40   | It_Ear_Pearl      | Silver Tongue +5          | DiFuego |
| Rogues Earring     | 200  | 40   | It_Ear_Rogue      | Dirty Tricks +5           |  |
| Sailor's Earring   | 600  | 120  | It_Ear_Sailor     | Bladeproof +5             |  |
| Skull Earring      | 200  | 40   | It_Ear_Skull      | Intimidate +5             | Flannigan |
| Warrior's Earring  | 1000 | 200  | It_Ear_Warrior    | Bulletproof +5, Ritual +5 |  |


### Amulets

| Item Name          | Buy  | Sell | Item Code      | Stats and Effects                        | Who to buy it from?      |
|:------------------:|:----:|:----:|:--------------:|:----------------------------------------:|:----------------------------------------:|
| Ancestral Stone    | ???? | ???  |  |  |  |
| Bone Necklace      | ???? | ???  | It_Am_Bone     |  |  |
| Curse Stone        | 800  | 160  | It_Am_Curse    | Death Cult +5, Black Magic +10           |  |
| Hunter's Necklace  | ???? | ???  | ???            |     |  |
| Jade Pendant       | 750  | 150  | It_Am_Jade     | Black Magic +5, Death Cult +5, Ritual +5 | Emma |
| Lucky Charm        | 400  | 80   | It_Am_Luck     | Bulletproof +5                           |  |
| Skull Amulet       | ???? | ???  | It_Am_Skull    |  |  |
| Spirit Amulet      | 500  | 100  | ???            | Death Cult +5, Ritual +5                 | Emma |
| Soul Necklace      | ???? | ???  | It_Am_Soul     |  |  |
| Ti' Ha Ko          | 1000 | 200  | ???            | Death Cult +5, Black Magic +15           |  |
| Tribal Symbol      | 150  | 30   | It_Am_Tribe    | Ritual +5                                | Kapua |
| Warrior's Jewelery | 750  | ???  | It_Am_Warrior  | Ritual +15                               |  |
| Witche's Amulet    | 500  | 100  | ???            | Black Magic +5, Ritual +5                | Kapua |


Item Codes:

It_Am_Ghost
It_Am_Kiki
It_Am_Pirate
It_Am_Thief
It_Am_Tiwa


### Rings

Note: The DLC item "Master Scholar's Ring" cannot be sold and thus does not have a price.

| Item Name                   | Buy  | Sell | Item Code        | Stats and Effects                  | Who to buy it from?      |
|:---------------------------:|:----:|:----:|:----------------:|:----------------------------------:|:----------------------------------------:|
| Bone Ring                   | 500  | 100  | It_Ri_Bone       | Black Magic +5, Ritual +5          | Kapua |
| Hunter's Ring               | 500  | ???  | It_Ri_Hunter     | Muskets +5, Shotguns +5            |  |
| Inquisitor's Ring           | 600  | 120  | It_Ri_Inquisitor | Muskets +5, Bulletproof +5         |  |
| Iron Ring                   | 500  | 100  | It_Ri_Iron       | Throwing Weapons +5, Bladeproof +5 | Kapua |
| Jade Ring                   | 600  | 120  | It_Ri_Jade       | Ritual +10                         | Kapua |
| Master Scholar's Ring (DLC) | N/A  | N/A  | It_Ri_XP         | Glory Bonus +5%                    |  |
| Officer's Ring              | 250  | 75   | It_Ri_Officer    | Piercing +5, Pistols +5            | Ghiles |
| Poison Ring                 | 750  | ???  | It_Ri_Poison     | Dirty Tricks +20                   | Emma |
| Ring of Deception           | 600  | 120  | It_Ri_Deception  | Dirty Tricks +15, Silver Tongue +5 |  |
| Ring of Greed               | 1000 | ???  | It_Ri_Greed      | Thievery +15, Silver Tongue +5     |  |
| Rogue's Ring                | ???  | 100  | It_Ri_Rogue      | Dirty Tricks +10, Thievery +5      |  |
| Ruby Ring                   | 250  | 50   | It_Ri_Ruby       | Dirty Tricks +5, Silver Tongue +5  | Sophia |
| Skull Ring                  | ???? | 100  | It_Ri_Skull      | Slashing +5 , Intimidate +5        |  |
| Soul Ring                   | ???? | ???  | It_Ri_Soul       | ???                                |  |
| Sparkling Gold Ring         | 150  | 50   | It_Ri_Gold       | Silver Tongue +5                   | Flannigan, Sophia |
| Thief's Ring                | 600  | 120  | It_Ri_Thief      | Dirty Tricks +5, Thievery +10      | Emma |


Item Codes:

It_Ri_Blade






### Voodoo Dolls

| Item Name          | Buy | Sell | Item Code                  | Stats and Effects |
|:------------------:|:---:|:----:|:---------:|:----------------------------------------:|
| Curse Doll         | ??? | 20   |  |  |


Item Codes:

It_VoodooDoll

### Voodoo Sceptre

| Item Name        | Buy  | Sell | Item Code             | Stats and Effects |
|:----------------:|:----:|:----:|:---------------------:|:----------------------------------------:|
| Sceptre of Fear  | ???? | 200  | It_Scepter_Fear       |  |
| Sceptre of Power | ???? | 200  | It_ScepterTelekinesis |  |
| Skull Sceptre    | ???? | ???  | It_Scepter_Skull      |  |


Item Codes:
It_Scepter_Skull_SunkenOne



### Piercing Weapons

| Item Name          | Buy  | Sell | Item Code                  | Stats and Effects | Who to buy it from?      |
|:------------------:|:----:|:----:|:----------------:|:----------------------------------------:|:----------------------------------------:|
| Old Sword          | 150  | 30   | It_Pie_Old       | Dam 15-30, Talent +5                              |  |
| Crab Stabber       | 250  | ???  |  | Dam 15-30, Talent +10                             |  |
| Stormthorn         | 250  | 75   |  | Dam 20-30, Talent +15                             | Cooper |
| Corsair's Sword    | 250  | 240  |  | Dam 25-30, Talent +5                              |  |
| Officer's Sword    | 450  | 100  | It_Pie_Officer   | Dam 20-40, Talent +10                             | Cooper |
| Fencing Foil       | 600  | 120  | It_Pie_Fencing   | Dam 20-50, Talent +10                             |  |
| Epee               | 800  | 200  | It_Pie_Epee      | Dam 20-60, Talent +15                             | Cooper |
| Sword              | 1100 | 250  |  | Dam 30-65, Talent +10                             | Cooper |
| Duelling Epee      | 1500 | 300  | It_Pie_Duel      | Dam 30-70, Talent +15                             |  |
| Buchaneers Sword   | 1600 | ???  |  | Dam 35-80, Talent +5                              |  |
| Magnificient Sword | 1900 | ???  |  | Dam 35-80, Talent +20                             |  |
| Rapier             | 1750 | ???  | It_Pie_Rapier    | Dam 40-90, Talent +10                             |  |
| Elegant Scimitar   | 2250 | ???  |  | Dam 45-70, Talent +20                             |  |
| Death Knell        | 2250 | ???  | It_Pie_Deathblow | Dam 45-95, Talent +10                             |  |
| Admiral's Blade    | 2500 | ???  | It_Pie_Admiral   | Dam 45-100, Talent +15                            |  |
| King's Sword       | 2500 | ???  | It_Pie_King      | Dam 45-100, Talent +15                            |  |
| Soul Caller        | 2500 | ???  |  | Dam 45-100, Talent +15                            |  |


Item Codes:

It_Pie_LongSword
It_Pie_Pirate
It_Pie_Pomp
It_Thr_EarthTitanRock
It_Thr_Spear
It_Thr_Titan
It_Thr_Titan_Crow

### Slashing Weapons

| Item Name         | Buy  | Sell | Item Code                  | Stats and Effects | Who to buy it from?      |
|:-----------------:|:----:|:----:|:---------:|:----------------------------------------:|:----------------------------------------:|
| Sunken One's Axe  | 50   | ???  | It_Sla_SunkenOne    | Dam 15-25, Talent +10                             |  |
| Cutlass           | 250  | 50   | It_Sla_Cutlass      | Dam 25-30, Talent +5                              | Stone |
| Buccaneer's Knife | 250  | ???  |  | Dam 25-30, Talent +5                              |  |
| Machete           | 450  | 100  | It_Sla_Machete      | Dam 25-30, Talent +10                             | Stone |
| Sabre             | 550  | 120  | It_Sla_Sabre        | Dam 30-40, Talent +10                             | Stone |
| Scimitar          | 750  | 200  | It_Sla_Scimitar     | Dam 30-40, Talent +15                             | Cooper |
| Pirate's Sabre    | 1000 | 250  | It_Sla_PirateSabre  | Dam 35-50, Talent +10                             | Stone, Cooper |
| Prizetaker        | 1500 | ???  |  | Dam 35-50, Talent +15                             |  |
| Captain's Sabre   | 1500 | ???  |  | Dam 40-60, Talent +10                             |  |
| Reaper            | 1750 | ???  |  | Dam 40-60, Talent +10                             |  |
| Exotic Sabre      | 1875 | ???  |  | Dam 50-80, Talent +15                             |  |
| Stormwind         | 2000 | ???  |  | Dam 45-60, Talent +15                             |  |
| Plank Breaker     | 2100 | ???  | It_Sla_Plankbreaker | Dam 45-70, Talent +5                              |  |
| General (DLC)     | 2100 | ???  |  | Dam 50-80, Talent +20                             |  |
| Wave Dancer       | 3000 | ???  | It_Sla_Wavedancer   | Dam 60-100, Talent +20                            |  |


Item Codes:

It_Sla_Beheader
It_Sla_Buccaneer
It_Sla_Captain
It_Sla_CaptainsLaw
It_Sla_ExoticSabre
It_Sla_GargoyleSlayer
It_Sla_GargoyleSlayer
It_Sla_GargoyleSlayer_Monster
It_Sla_Guardian
It_Sla_LordlyScimitar
It_Sla_Mower
It_Sla_Undead

### Pistols

Note: Since this game has a lot of translation errors with the gun item names, this section
will be counting anything that uses the Pistol skill as a Pistol

| Item Name        | Buy  | Sell | Item Code      | Stats and Effects | Who to buy it from?      |
|:----------------:|:----:|:----:|:--------------:|:----------------------------------------:|:----------------------------------------:|
| Boarding Pistol  | 400  | 80   | ???            | Dam 50, Range 8, Rel 20s, Talent +10     | Thompkins |
| Scatter Pistol   | 500  | 100  | ???            | Dam 60, Range 8, Rel 30s, Talent +5      | Barney, Webster |
| Pistol           | 750  | 150  | ???            | Dam 60, Range 8, Rel 20s, Talent +20     | Barney |
| The Twins        | 950  | 200  | It_Pis_Twins   | Dam 70, Range 8, Rel 15s, Talent +10     | Webster |
| The Grinder      | 1000 | 250  | ???            | Dam 70, Range 8, Rel 30s, Talent +5      | Webster |
| Officer's Pistol | 1350 | 270  | It_Pis_Officer | Dam 65, Range 8, Rel 20s, Talent +15     |  |
| Sawn-Off Shotgun | ???? | ???  | It_ShP_SawnOff |  |  |
| Silver Iron      | ???? | ???  | It_Pis_Silver  | Dam 80, Range 8, Rel 20s, Talent +15 |  |

Pistol Item Codes:

It_Pie_Storm
It_Pis_Double
It_Pis_Duel

It_Pis_Ship
It_Pis_Single
It_Pis_Singlep
It_Pis_Wilson

It_ShP_Buckshot
It_ShP_Mortar

It_ShP_Shredder


### Shotguns

Note: Since this game has a lot of translation errors with the gun item names, this section
will be counting anything that uses the Shotgun skill as a Shotgun

| Item Name           | Buy  | Sell | Item Code                  | Stats and Effects | Who to buy it from?      |
|:-------------------:|:----:|:----:|:---------:|:----------------------------------------:|:----------------------------------------:|
| D-barrelled Shotgun | ???? | ???  |  |  |  |
| Fire Cudgel         | ???? | ???  | It_ShG_Fire |  |  |

Item Codes:

It_ShG_Hunting
It_ShG_Pirate
It_ShG_Ship
It_ShG_Thunder

### Muskets

Note: Since this game has a lot of translation errors with the gun item names, this section
will be counting anything that uses the Muskets skill as a Muskets

| Item Name        | Buy  | Sell | Item Code                  | Stats and Effects | Who to buy it from?      |
|:----------------:|:----:|:----:|:---------:|:----------------------------------------:|:----------------------------------------:|
| Shotgun          | 750  | 200  |  | Dam 50, Range 26, Rel 2s, Talent +5 | Thompkins |
| Storm Rifle      | ???? | ???  |  |  |  |
| Seaman's Shotgun | ???? | ???  |  |  |  |


Item Codes:

It_Rif_Assault
It_Rif_Caldera
It_Rif_Double
It_Rif_Expedition
It_Rif_Musket
It_Rif_Ship
It_Rif_Single


### Dirty Tricks

| Item Name           | Buy  | Sell | Item Code  | Stats and Effects | Who to buy it from?      |
|:-------------------:|:----:|:----:|:----------:|:----------------------------------------:|:----------------------------------------:|s
| Sand                | N/A  | N/A  | It_Sand    |  |  |
| Salt                | 100  | 20   | It_Salt    | Reload: 10s | Flannigan, Sophia |
| Fire Oil            | 100  | 20   | ????       | Reload: 20s | Flannigan |
| Rock Hard Coconut   | ???? | 5    | It_Coconut |  |  |




### Throwing Weapons

| Item Name          | Buy  | Sell | Item Code              | Stats and Effects                        | Who to buy it from?      |
|:------------------:|:----:|:----:|:----------------------:|:----------------------------------------:|:----------------------------------------:|
| Dagger             | 10   | 2    | ???                    | Dam 20, Range 8                          | Thompkins, Stone |
| Curved Dagger      | 15   | 3    | ???                    | Dam 30, Range 8                          | Cooper |
| Spear              | ???? | 25   | ???                    | Dam 40                                   |  |

Item Codes:

It_Dagger_Large
It_Dagger_MAB_BlackDog
It_Dagger_Medium
It_Dagger_Sacrifice
It_Dagger_Small


### Tools

| Item Name      | Buy  | Sell | Item Code        | Stats and Effects                                            | Who to buy it from?      |
|:--------------:|:----:|:----:|:----------------:|:------------------------------------------------------------:|:----------------------------------------:|
| Torch          | 15   | 3    | It_Torch         | Allows lighting up dark areas                                | Ghiles, Flannigan, Ranapiri |
| Lockpick       | ???? | 20   | It_Lockpick      | Allows picking locks if you also have the Lockpick skill     |  |
| Shovel         | 150  | 30   | It_Shovel        | Allows digging up buried treasure                            | Flannigan, Sophia |
| Pickax         | 150  | 30   | It_Pickaxe       | Allows mining for ore                                        | Flannigan, Sophia |
| Hammer         | ???? | ???  | ???              | Allows smithing                                              |  |
| Bonesaw        | 100  | 20   | It_Bonesaw       | Allows harvesting Claw and Sickle items from certain animals | Ghiles, Flannigan, Sophia, Ranapiri |
| Skinning Knife | 150  | 30   | It_SkinningKnife | Allows harvesting skins from certain animals                 | Ranapiri |
| Jaw Chisel     | ???? | 20   | It_JawChisel     | Allows harveseting teeth and tusks from certain animals      | Ranapiri |
| Ritual Knife   | ???? | 50   | It_RitualKnife   | ???                                                          |  |


### Plants and Ingredients

| Item Name            | Buy  | Sell | Item Code            | Stats and Effects                        | Who to buy it from?      |
|:--------------------:|:----:|:----:|:--------------------:|:----------------------------------------:|:----------------------------------------:|
| Heros Crown          | ???  | 50   | It_Pl_Perm_Toughness | Bladeproof, Bulletproof, Intimidate +1   | --- |
| Grave Root           | ???  | 50   | It_Pl_Perm_Voodoo    | Black Magic, Death Cult, Ritual +1       | --- |
| Swordthorn           | ???  | 50   | It_Pl_Perm_Blades    | Slashing, Piercing, Throwing +1          | --- |
| Sharpeye             | ???  | 50   | It_Pl_Perm_Firearms  | Muskets, Pistols, Shotguns +1            | --- |
| Jester's Cap         | ???  | 50   | It_Pl_Perm_Cunning   | Dirty Tricks, Thievery, Silver Tongue +1 | --- |
| Black Oleander       | 50   | 10   | ???                  | Regeneration 5                           | Badriya |
| Bloodroot            | 50   | 10   | ???                  | Regeneration 5                           | Badriya |
| Choking Vine         | 50   | 10   | ???                  | Regeneration 5                           | Badriya |
| Golden Clover        | 50   | 10   | ???                  | Regeneration 5                           | |
| Powdered Poppy Seeds | 50   | 10   | ???                  | Regeneration 5                           | |
| Skullflower          | 50   | 10   | ???                  | Regeneration 5                           | |
| Spirit Lily          | 50   | 10   | ???                  | Regeneration 5                           | Badriya, Emma |

Item Codes:

It_Pl_Blades
It_Pl_Cunning
It_Pl_Toughness
It_Pl_Voodoo



### Animal Trophies

| Item Name            | Buy  | Sell | Item Code            | Required Tool  | Animal(s)                                         | Who to buy it from?      |
|:--------------------:|:----:|:----:|:--------------------:|:--------------:|:-------------------------------------------------:|:----------------------------------:|
| Acid Gland           | ???? | 13   | It_At_Acid           | Ritual Knife   | Termite Warriors                                  | |
| Bone                 | 15   | 5    | It_At_Bone           | ???            | ???                                               | Badriya, Ranapiri |
| Claw                 | ???? | 15   | It_At_Claw           | Bonesaw        | Blueclaw Monkeys, Cave Bats, Claw Monkeys, Ghouls | |
| Ear                  | 25   | 5    | It_At_Ear            | Ritual Knife   | Cave Bats                                         | Badriya, Ranapiri |
| Eye                  | 50   | 10   | It_At_Eye            | Ritual Knife   | Giant Crabs, Spiders, Grave Spiders               | Badriya, Ranapiri, Kapua, Emma |
| Feather              | 50   | 10   | It_At_Feather        | Ritual Knife   | Firebirds                                         | Badriya, Ranapiri |
| Gorilla Skin         | ???? | ???  | It_At_Fur_Gorilla    | Skinning Knife |                                                   | |
| Jaguar Heart         | 180  | 45   | It_At_Heart          | Ritual Knife   | Jaguars                                           | Badriya, Ranapiri |
| Jaguar Skin          | ???  | 40   | It_At_Fur_Jaguar     | Skinning Knife | Jaguars                                           | |
| Panther Paw          | ???  | ???  | It_At_Paw            | ???            | Panthers                                          | |
| Panther Skin         | ???  | ???  | It_At_Fur_Panther    | Skinning Knife | Panthers                                          | |
| Moneky Skull         | 125  | 25   | It_At_MonkeySkull    | Ritual Knife   | Monkeys (passive ones only) |                     | Badriya, Ranapiri, Emma |
| Sand Devil Sensor    | 75   | 15   | It_At_Sensor         | ---            | Sand Devils                                       | Ranapiri |
| Sickle               | ???? | 7    | It_At_AntSickle      | Bonesaw        | Termite Workers, Termite Warriors                 | |
| Silverback Skin      | ???? | ???  | It_At_Fur_Silverback | Skinning Knife | Silverback                                        | |
| Teeth                | 50   | 10   | It_At_Teeth          | Jaw Chisel     | Blueclaw Monekys, Claw Monkeys, Gators, Gorillas  | Ranapiri, Kapua, Emma |
| Tusk                 | 100  | 20   | It_At_Tusk           | Jaw Chisel     | Warthogs                                          | Ranapiri |
| Warthog Skin         | ???  | 30   | It_At_Fur_Warthog    | Skinning Knife | Warthogs                                          | |


### Misc

| Item Name            | Buy | Sell | Item Code         | Stats and Effects                       | Who to buy it from?      |
|:--------------------:|:---:|:----:|:-----------------:|:---------------------------------------:|:----------------------------------------:|
| Bomb                 | 250 | 50   | It_Exp_Bomb       | Timed Explosive                         | Thompkins |
| Bone                 | ??? | ???  | It_Bone           | ---                                     | Any natives |
| Bowl                 | ??? | 100  | ???               | ---                                     | --- |
| Bowl                 | ??? | 75   | ???               | ---                                     | --- |
| Bullet               | 1   | ---  | It_Ammo_Bullet    | ---                                     | Thompkins |
| Candlestick          | ??? | 76   | ???               | ---                                     | --- |
| Club                 | ??? | 60   | ???               | ---                                     | --- |
| Decanter             | ??? | 60   | ???               | ---                                     | --- |
| Emerald              | ??? | 75   | ???               | ---                                     | --- |
| Gold                 | --- | ---  | It_Gold           | ---                                     | --- |
| Golden Goblet        | ??? | 100  | ???               | ---                                     | --- |
| Gold Nugget          | ??? | 20   | It_GoldOre        | ---                                     | --- |
| Golden Plate         | ??? | 110  | ???               | ---                                     | --- |
| Hammer               | ??? | 10   | ???               | ---                                     | --- |
| Idol                 | ??? | 250  | ???               | ---                                     | --- |
| Jade                 | 25  | 25   | It_Jade           | ---                                     | Badriya, Emma |
| Jade Idol            | ??? | ???  | ???               | ---                                     | --- |
| King's Mask          | ??? | 150  | ???               | ---                                     | --- |
| Lead Shot            | 1   | ---  | It_Ammo_Buckshot  | ---                                     | Thompkins |
| Monkey               | ????| 200  | It_Monkey         | Used to steal things, pull levers, etc; | Flannigan |
| Monkey Statue        | ??? | 100  | ???               | ---                                     | --- |
| Oyster Shell         | ??? | ???  | It_Shell          | ---                                     | --- |
| Parrot               | ????| ???  | It_Parrot         | Used to distract enemies                | Flannigan |
| Pearl                | ??? | 50   | It_Pearl          | ---                                     | DiFuego |
| Plate                | ??? | ???  | ???               | ---                                     | --- |
| Powder Key           | ??? | 25   | It_Exp_PowderKeg  | Shootable Explosive                     | --- |
| Provisions           | ??? | 5    | It_Food           | Regeneratiopn 20                        | Any bartender: Osorio, Booze |
| Rattle               | ??? | 12   | ???               | ---                                     | --- |
| Raw Chicken Meat     | ??? | 5    | It_Chicken_Raw    | ???                                     | --- |
| Raw Fish             | ??? | 5    | ???               | ???                                     | --- |
| Raw Meat             | ??? | ???  | It_Meat_Raw       | ???                                     | --- |
| Ruby                 | ??? | 200  | It_Ruby           | ---                                     | DiFuego |
| Sapphire             | ??? | 100  | ???               | ---                                     | --- |
| Silver Goblet        | ??? | 50   | ???               | ---                                     | --- |
| Silver Plate         | ??? | 50   | ???               | ---                                     | --- |
| Skull                | ??? | 12   | ???               | ---                                     | --- |
| Sword BLank          | ??? | 15   | ???               | ---                                     | --- |
| Voodoo Doll          | ??? | 10   | ???               | ---                                     | Kapua, Emma |
| Wheel Lock           | ??? | 15   | ???               | ---                                     | --- |




Item Codes:

It_RockOil
It_Fish_Raw
It_Fork
It_Meat_Fried
It_Meat_Raw_Habib
It_1H_Sword


### Legendary Items

| Item Name              | Buy  | Island                | Item Code            | Effect               | Who to buy it from?      |
|:----------------------:|:----:|:---------------------:|:--------------------:|:--------------------:|:------------------------:|
| Bottle of Memories     | 2000 | The Sword Coast       | It_Blue_CUL_Bottle   | Death Cult +10       | Kapua         |
| Broken Rattle          | ???  | ???                   | It_Blue_MAG_Rattle   | Black Magic +10      |  |
| Cannonball             | ???  | ???                   | It_Blue_GUN_Ball     | Shotguns +10         |  |
| Comb With One Tooth    | ???  | ???                   | It_Blue_BLA_Comb     | Blades +1            |  |
| Flask                  | ???  | ???                   | It_Blue_DIR_Flask    | Dirty Tricks +10     |  |
| Hand Mirror            | 2000 | Tacarigua             | It_Blue_SIL_Mirror   | Silver Tongue +10    | Booze          |
| Hangman's Noose        | ???  | ???                   | ???                  | Muskets +10          |  |
| Hook Hand              | ???  | ???                   | It_Blue_SLA_Hook     | Slashing Weapons +10 |  |
| Jaguar Paw             | ???  | ???                   | It_Blue_RIT_Talisman | Ritual +10           |  |
| Meerschaum Pipe        | ---  | Tacarigua             | It_Blue_FIR_Pipe     | Firearms +1          | ---                      |
| Old Coin               | ???  | ???                   | It_Blue_BUL_Coin     | Bulletproof +10      |  |
| One Left Boot          | ???  | ???                   | It_Blue_CUN_Boot     | Cunning +1           |  |
| Parrot's Wing          | ???  | ???                   | It_Blue_THR_Wing     | Throwing Weapons +10 |  |
| Peg Leg                | ---  | Tacarigua             | It_Blue_TOU_Peg      | Toughness +1         | ---                      |
| Pirate's Almanac (DLC) | ???  | Treasure Island (DLC) | It_Blue_XP_Book      | Glory Bonus +10%     |  |
| Powder Bag             | ---  | The Sword Coast       | It_Blue_PIS_Powder   | Pistols +10          | ---                      |
| Shrunken Head          | ---  | The Sword Coast       | It_Blue_INT_Head     | Intimidate +10       | ---                      |
| Silver Mask            | ???  | ???                   | It_Blue_BLA_Mask     | Bladeproof +10       |  |
| Skull of Death         | ???  | ???                   | It_Blue_VOO_Skull    | Voodoo +1            |  |
| Snuffbox               | ???  | ???                   | It_Blue_THI_Tabak    | Thievery +10         |  |
| Voodoo Needle          | ???  | ???                   | It_Blue_PIE_Dagger   | Piercing Weapons +10 | Emma            |



## Merchant Locations

| Merchant Name                 | Type                  | Island                | Location                         |
|:-----------------------------:|:---------------------:|:---------------------:|:--------------------------------:|
| Osorio                        | Food/Drink            | Tacarigua             | Puerto Sacarico                  |
| Di Fuego                      | Clothing              | Tacarigua             | Puerto Sacarico                  |
| Booze                         | Alcohol               | Tacarigua             | Pirates Den                      |
| Stone                         | Slashing Weapons      | Tacarigua             | Pirates Den                      |
| Flannigan                     | General, Dirty Tricks | Tacarigua             | Pirates Den                      |
| Barney                        | Pistols               | Tacarigua             | Pirates Den                      |
| Ghiles                        | General, Ring         | Tacarigua             | Sugar Plantation                 |
| Thompkins                     | Pistols, Musket       | Tacarigua             | Sugar Plantation                 |
| Sophia                        | Clothing, General     | The Sword Coast       | Puerto Isabella                  |
| Cooper                        | Blacksmith            | The Sword Coast       | Puerto Isabella                  |
| Webster                       | Pistols               | The Sword Coast       | Puerto Isabella                  |
| Badriya                       | Potions, Ingredients  | The Sword Coast       | Natives Village                  |
| Ranapiri                      | General, Ingredients  | The Sword Coast       | Natives Village                  |
| Kapua                         | Voodoo, Ingredients   | The Sword Coast       | Natives Village                  |
| Emma                          | Voodoo, Potions       | Angitua               | Harbor Town                      |




