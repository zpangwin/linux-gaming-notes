
## Disclaimer

The column named "Free" is just indicating if it is possible to pick up a free copy somewhere in the game (Yes = you can get it for free, No = no free copies found). Check the Freebies.md file for a list of where you can find free copies of certain items.

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

Note: These potions become more effective with additional ranks of the Ritual skill (Voodoo). By default they all are +7. With Ritual 1, they become +13. With Ritual 2, they become +17. With Ritual 3, they become +??.

Pretty much all of these potions can be found for free around the world.

| Item Name            | Buy  | Sell | Item Code          | Duration | Skill(s) Effected            | Reg | Rit-1 | Rit-2 | Rit-3 | Merchants     |
|:--------------------:|:----:|:----:|:------------------:|:---------------------------------------:|:---:|:-----:|:-----:|:-----:|:-------------:|
| Marksman's Potion    | 200  | 30   | It_Po_Firearms     | 30 sec   | Muskets, Pistols, Shotguns   | +7  | +13   | +17   | ??    | Badriya, Emma |
| Potion of Awe        | 150  | 20   | It_Po_Intimdate    | 30 sec   | Intimidate                   | +7  | +13   | +17   | ??    | Badriya, Emma |
| Potion of Blades     | 200  | 30   | It_Po_Blade        | 30 sec   | Throwing, Piercing, Slashing | +7  | +13   | +17   | ??    | Badriya, Emma |
| Potion of Persuasion | 150  | 20   | It_Po_Silvertongue | 30 sec   | Silver Tongue                | +7  | +13   | +17   | ??    | Badriya, Emma |
| Ritual Potion        | 175  | 25   | It_Po_Ritual       | 30 sec   | Ritual                       | +7  | +13   | +17   | ??    | Badriya, Emma |
| Spirit Essence       | 175  | 25   | It_Po_BlackMagic   | 30 sec   | Black Magic                  | +7  | +13   | +17   | ??    | Badriya, Emma |
| Thief's Potion       | 250  | 50   | It_Po_Thief        | 30 sec   | Thievery                     | +7  | +13   | +17   | ??    | Badriya, Emma |


### Alcohol


| Item Name   | Buy | Sell | Item Code        | Effects                          | Free? | Merchants             |
|:-----------:|:---:|:----:|:----------------:|:--------------------------------:|:-----:|:---------------------:|
| Grog        | 60  | 10   | It_Bo_Grog       | Blood +50                        | Yes   | Osorio, Booze, Sophia |
| Bloody Mary | 75  | 20   | It_Bo_BloodyMary | Regeneration 100                 | Yes   | Booze, Spencer        |
| Rum         | 100 | 20   | It_Bo_Rum        | Blood +100                       | Yes   | Osorio, Booze, Sophia |
| Painkiller  | 150 | 30   | It_Bo_PainKiller | Bladeproof +50, Bulletproof +50  | No    | Booze                 |


### Head

| Item Name            | Buy  | Sell | Item Code          | Stats and Effects                               | Free? | Merchants           |
|:--------------------:|:----:|:----:|:------------------:|:-----------------------------------------------:|:-----:|:-------------------:|
| Black Bandana        | 150  | 30   | It_Bandana_Black   | Bladeproof +2, Bulletproof +2, Intimidate +2    | No    | Sophia, Quinn       |
| Bicorne Hat          | ???  | 40   | It_Bicorn_Black    | Bladeproof +3, Bulletproof +3, Intimidate +2    | No    | ???                 |
| Elegant Tricorne Hat | ???? | 50   | It_Tricorn_White   | Bladeproof +3, Bulletproof +3, Silver Tongue +3 | No    | ???                 |
| Good Tricorne Hat    | ???? | 50   | It_Tricorn_Gold    | Bladeproof +3, Bulletproof +3, Intimidate +3    | No    | ???                 |
| Hat                  | ???? | 60   | It_Hat             | Bladeproof +3, Bulletproof +3, Intimidate +3    | No    | ???                 |
| Old Bandana          | 100  | 20   | It_Bandana_Torn    | Bladeproof +2, Bulletproof +2                   | No    | Carter, Flannigan   |
| Old Bicorne Hat      | 100  | 20   | It_Bicorn_Torn     | Bladeproof +2, Bulletproof +2                   | No    | Sophia              |
| Old Tricorne Hat     | 200  | 40   | It_Tricorn_Torn    | Bladeproof +3, Bulletproof +3                   | No    | Sophia, Quinn       |
| Pirate Bandana Largo | 100  | 20   | It_Bandana_Largo   | Bladeproof +5, Bulletproof +0, Intimidate +5    | No    | ---                 |
| Pirate Hat (DLC)     | 250  | 50   | It_Hat_DLC1        | Bladeproof +5, Bulletproof +5, Silver Tongue +5 | Yes\* | ---                 |
| Quality Bicorne Hat  | ???? | 30   | It_Bicorn_Silver   | Bladeproof +3, Bulletproof +3, Silver Tongue +2 | No    | ???                 |
| Red Bandana          | 150  | 20   | It_Bandana_Red     | Bladeproof +2, Bulletproof +2, Intimidate +2    | No    | Quinn               |
| Striped Bandana      | 100  | 20   | It_Bandana_Striped | Bladeproof +2, Bulletproof +2                   | No    | Flannigan           |


\* Free = Yes: only if you have purchased the DLC.


### Body

| Item Name            | Buy  | Sell | Item Code         | Stats and Effects                                              | Free? | Merchants         |
|:--------------------:|:----:|:----:|:-----------------:|:--------------------------------------------------------------:|:-----:|:-----------------:|
| Dirty Shirt          | 75   | 15   | ???               | Bladeproof +3, Bulletproof +3                                  | Yes   | ---               |
| Elegant Waistcoast   | 300  | 60   | ???               | Bladeproof +10, Bulletproof +10, Silver Tongue +5              | No    | DiFuego           |
| Largos Leather Shirt | 150  | 30   | It_Shirt_Largo    | Bladeproof +6, Bulletproof +5                                  | No    | Carter            |
| Leather Shirt        | 200  | 40   | It_Shirt_Leather  | Bladeproof +6, Bulletproof +6                                  | No    | Sophia            |
| Leather Waistcoat    | 250  | 45   | ??                | Bladeproof +10, Bulletproof +10                                | No    | Quinn             |
| Old Coat             | 350  | 60   | It_Coat_Torn      | Bladeproof +12, Bulletproof +12                                | No    | Sophia            |
| Old Shirt            | 75   | 15   | It_Shirt_Torn     | Bladeproof +3, Bulletproof +3                                  | No    | Carter            |
| Old Raincoat         | 600  | 120  | ???               | Bladeproof +17, Bulletproof +17                                | No    | Quinn             |
| Old Waistcoat        | 150  | 30   | It_GreatCoat_Torn | Bladeproof +8, Bulletproof +8                                  | No    | Sophia            |
| Pirate Clothes (DLC) | 500  | 100  | It_Armor_DLC1     | Bladeproof +10, Bulletproof +5                                 | No    |                   |
| Plain Shirt          | 100  | 20   | ???               | Bladeproof +5, Bulletproof +5                                  | No    | Flannigan         |
| Red Coat             | 500  | 100  | ???               | Bladeproof +15, Bulletproof +15                                | No    | Quinn             |
| Silk Shirt           | 500  | 100  | ???               | Bladeproof +1, Bulletproof +1, Silver Tongue +10, Piercing +10 | No    | DiFuego           |
| Striped Shirt        | 100  | 20   | ???               | Bladeproof +5, Bulletproof +5                                  | No    | Flannigan         |


\* Free = Yes: only if you have purchased the DLC.



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

| Item Name          | Buy  | Sell | Item Code       | Stats and Effects                               | Free? | Merchants                           |
|:------------------:|:----:|:----:|:---------------:|:-----------------------------------------------:|:-----:|:-----------------------------------:|
| Colourful Trousers | 150  | 30  | ???              | Bladeproof +2, Bulletproof +2                   | No    | Carter, Flannigan                   |
| Leather Trousers   | 150  | 30  | It_Pants_Leather | Bladeproof +2, Bulletproof +2                   | No    | Sophia, Quinn                       |
| Black Trousers     | 200  | 50  | It_Pants_Black   | Bladeproof +3, Bulletproof +3, Intimidate +3    | No    | DiFuego                             |
| White Trousers     | 200  | 50  | It_Pants_White   | Bladeproof +3, Bulletproof +3, Silver Tongue +3 | No    | DiFuego                             |



Item Codes:



It_Pants_Null
It_Pants_Striped
It_Pants_Studded


### Feet

| Item Name            | Buy  | Sell | Item Code            | Stats and Effects                               | Free? | Merchants                        |
|:--------------------:|:----:|:----:|:--------------------:|:-----------------------------------------------:|:-----:|:--------------------------------:|
| Tall Leather Boots   | 500  | 100  | ???                  | Bladeproof +5, Intimidate +3                    | No    | Quinn                            |
| Elegant Shoes        | 400  | 80   | It_Shoes_Rich        | Bladeproof +5, Silver Tongue +5                 | No    | DiFuego                          |
| Good Shoes           | 200  | 40   | It_Shoes_Polished    | Bladeproof +3, Silver Tongue +3                 | No    | DiFuego, Sophia                  |
| Good Short Boots     | 300  | 60   | It_LowBoot_Polished  | Bladeproof +5, Bulletproof +5, Silver Tongue +2 | No    | Sophia                           |
| Old Leather Boots    | 200  | 40   | It_HighBoot_Torn     | Bladeproof +5, Bulletproof +5                   | No    | Sophia                           |
| Old Shoes            | 75   | 15   | It_Shoes_Torn        | Bladeproof +2, Silver Tongue +2                 | FNo   | Flannigan, Quinn                 |
| Old Short Boots      | 125  | 25   | It_LowBoot_Torn      | Bladeproof +5                                   | No    | Flannigan                        |
| Pirate Boots (DLC)   | 250  | 50   | It_Shoes_DLC1        | Bladeproof +5, Bulletproof +5                   | No    |                                  |
| Wornout Boots: Largo | 125  | ???  | It_LowBoot_Largo     | Bladeproof +5                                   | No    |                                  |


\* Free = Yes: only if you have purchased the DLC.



Item Codes:
It_LowBoot_NPC_Largo
It_HighBoot_Polished
It_HighBoot_Normal


### Earrings

| Item Name          | Buy  | Sell | Item Code         | Stats and Effects         | Free? | Merchants                           |
|:------------------:|:----:|:----:|:-----------------:|:----------------------- -:|:-----:|:-----------------------------------:|
| Blackpearl         | 2000 | 400  | It_Ear_Largo      | Cunning +1                | No    |                                     |
| Bloodthorn Earring | 200  | 40   | It_Ear_Bloodthorn | Ritual +5                 | No    | Kapua                               |
| Duelist's Earring  | 250  | 50   | It_Ear_Duel       | Piercing +5               | No    | DiFuego                             |
| Feather Earring    | ???? | ???  | ???               | ???                       | No    |                                     |
| Jade Earring       | 250  | 50   | It_Ear_Jade       | Black Magic +5            | No    | Emma                                |
| Pearl Earring      | 200  | 40   | It_Ear_Pearl      | Silver Tongue +5          | No    | DiFuego                             |
| Rogues Earring     | 200  | 40   | It_Ear_Rogue      | Dirty Tricks +5           | No    | Quinn                               |
| Sailor's Earring   | 600  | 120  | It_Ear_Sailor     | Bladeproof +5             | No    |                                     |
| Skull Earring      | 200  | 40   | It_Ear_Skull      | Intimidate +5             | No    | Flannigan, Quinn                    |
| Warrior's Earring  | 1000 | 200  | It_Ear_Warrior    | Bulletproof +5, Ritual +5 | No    |                                     |


### Amulets

| Item Name          | Buy  | Sell | Item Code      | Stats and Effects                        | Free? | Merchants                        |
|:------------------:|:----:|:----:|:--------------:|:----------------------------------------:|:-----:|:--------------------------------:|
| Ancestral Stone    | ???? | ???  | ???            | ???                                      | No    |                                  |
| Bone Necklace      | ???? | ???  | It_Am_Bone     | ???                                      | No    |                                  |
| Curse Stone        | 800  | 160  | It_Am_Curse    | Death Cult +5, Black Magic +10           | No    |                                  |
| Hunter's Necklace  | ???? | ???  | ???            | ???                                      | No    |                                  |
| Jade Pendant       | 750  | 150  | It_Am_Jade     | Black Magic +5, Death Cult +5, Ritual +5 | No    | Emma                             |
| Lucky Charm        | 400  | 80   | It_Am_Luck     | Bulletproof +5                           | No    |                                  |
| Skull Amulet       | ???? | ???  | It_Am_Skull    | ???                                      | No    |                                  |
| Spirit Amulet      | 500  | 100  | ???            | Death Cult +5, Ritual +5                 | No    | Emma                             |
| Soul Necklace      | ???? | ???  | It_Am_Soul     | ???                                      | No    |                                  |
| Thief's Amulet     | 750  | 150  | It_Am_Thief    | Thievery +10, Dirty Tricks +5            | No    | Quinn                            |
| Ti' Ha Ko          | 1000 | 200  | ???            | Death Cult +5, Black Magic +15           | No    |                                  |
| Tribal Symbol      | 150  | 30   | It_Am_Tribe    | Ritual +5                                | No    | Kapua                            |
| Warrior's Jewelery | 750  | ???  | It_Am_Warrior  | Ritual +15                               | No    |                                  |
| Witche's Amulet    | 500  | 100  | ???            | Black Magic +5, Ritual +5                | No    | Kapua                            |


Item Codes:

It_Am_Ghost
It_Am_Kiki
It_Am_Pirate

It_Am_Tiwa


### Rings

Note: The DLC item "Master Scholar's Ring" cannot be sold and thus does not have a price.

| Item Name                   | Buy  | Sell | Item Code        | Stats and Effects                  | Free? | Merchants                           |
|:---------------------------:|:----:|:----:|:----------------:|:----------------------------------:|:-----:|:-----------------------------------:|
| Bone Ring                   | 500  | 100  | It_Ri_Bone       | Black Magic +5, Ritual +5          | No    | Kapua                               |
| Hunter's Ring               | 500  | ???  | It_Ri_Hunter     | Muskets +5, Shotguns +5            | No    |                                     |
| Inquisitor's Ring           | 600  | 120  | It_Ri_Inquisitor | Muskets +5, Bulletproof +5         | No    |                                     |
| Iron Ring                   | 500  | 100  | It_Ri_Iron       | Throwing Weapons +5, Bladeproof +5 | No    | Kapua                               |
| Jade Ring                   | 600  | 120  | It_Ri_Jade       | Ritual +10                         | No    | Kapua                               |
| Master Scholar's Ring (DLC) | N/A  | N/A  | It_Ri_XP         | Glory Bonus +5%                    | No    |                                     |
| Officer's Ring              | 250  | 75   | It_Ri_Officer    | Piercing +5, Pistols +5            | No    | Ghiles                              |
| Poison Ring                 | 750  | ???  | It_Ri_Poison     | Dirty Tricks +20                   | No    | Emma                                |
| Ring of Deception           | 600  | 120  | It_Ri_Deception  | Dirty Tricks +15, Silver Tongue +5 | No    |                                     |
| Ring of Greed               | 1000 | ???  | It_Ri_Greed      | Thievery +15, Silver Tongue +5     | No    |                                     |
| Rogue's Ring                | ???  | 100  | It_Ri_Rogue      | Dirty Tricks +10, Thievery +5      | No    | Quinn                               |
| Ruby Ring                   | 250  | 50   | It_Ri_Ruby       | Dirty Tricks +5, Silver Tongue +5  | No    | Sophia                              |
| Skull Ring                  | ???? | 100  | It_Ri_Skull      | Slashing +5 , Intimidate +5        | No    |                                     |
| Soul Ring                   | ???? | ???  | It_Ri_Soul       | ???                                | No    |                                     |
| Sparkling Gold Ring         | 150  | 50   | It_Ri_Gold       | Silver Tongue +5                   | No    | Flannigan, Sophia                   |
| Thief's Ring                | 600  | 120  | It_Ri_Thief      | Dirty Tricks +5, Thievery +10      | No    | Emma                                |


Item Codes:

It_Ri_Blade


### Swords

| Item Name          | Buy  | Sell | Item Code               | Stats and Effects        | Free? | Merchants                        |
|:------------------:|:----:|:----:|:-----------------------:|:------------------------:|:-----:|:--------------------------------:|
| Admiral's Blade    | 2500 | ???  | It_Pie_Admiral          | Dam 45-100, Piercing +15 | No    |                                  |
| Buccaneer's Knife  | 250  | ???  | ???                     | Dam 25-30, Slashing +5   | No    |                                  |
| Buchaneers Sword   | 1600 | ???  | ???                     | Dam 35-80, Piercing +5   | No    |                                  |
| Captain's Sabre    | 1500 | ???  | ???                     | Dam 40-60, Slashing +10  | No    |                                  |
| Corsair's Sword    | 250  | 240  | ???                     | Dam 25-30, Piercing +5   | No    |                                  |
| Crab Stabber       | 250  | ???  | ???                     | Dam 15-30, Piercing +10  | No    |                                  |
| Cutlass            | 250  | 50   | It_Sla_Cutlass          | Dam 25-30, Slashing +5   | No    | Stone                            |
| Death Knell        | 2250 | ???  | It_Pie_Deathblow        | Dam 45-95, Piercing +10  | No    |                                  |
| Duelling Epee      | 1500 | 300  | It_Pie_Duel             | Dam 30-70, Piercing +15  | No    |                                  |
| Elegant Scimitar   | 2250 | ???  | ???                     | Dam 45-70, Piercing +20  | No    |                                  |
| Epee               | 800  | 200  | It_Pie_Epee             | Dam 20-60, Piercing +15  | No    | Cooper                           |
| Exotic Sabre       | 1875 | ???  | ???                     | Dam 50-80, Slashing +15  | No    |                                  |
| Fencing Foil       | 600  | 120  | It_Pie_Fencing          | Dam 20-50, Piercing +10  | No    |                                  |
| General (DLC)      | 2100 | ???  | ???                     | Dam 50-80, Slashing +20  | No    |                                  |
| King's Sword       | 2500 | ???  | It_Pie_King             | Dam 45-100, Piercing +15 | No    |                                  |
| Machete            | 450  | 100  | It_Sla_Machete          | Dam 25-30, Slashing +10  | No    | Stone                            |
| Magnificient Sword | 1900 | ???  | ???                     | Dam 35-80, Piercing +20  | No    |                                  |
| Officer's Sword    | 450  | 100  | It_Pie_Officer          | Dam 20-40, Piercing +10  | No    | Cooper                           |
| Old Sword          | 150  | 30   | It_Pie_Old              | Dam 15-30, Piercing +5   | No    |                                  |
| Pirate's Sabre     | 1000 | 250  | It_Sla_PirateSabre      | Dam 35-50, Slashing +10  | No    | Stone, Cooper                    |
| Plank Breaker      | 2100 | ???  | It_Sla_Plankbreaker     | Dam 45-70, Slashing +5   | No    |                                  |
| Prizetaker         | 1500 | ???  | ???                     | Dam 35-50, Slashing +15  | No    |                                  |
| Rapier             | 1750 | ???  | It_Pie_Rapier           | Dam 40-90, Piercing +10  | No    |                                  |
| Reaper             | 1750 | ???  | ???                     | Dam 40-60, Slashing +10  | No    |                                  |
| Sabre              | 550  | 120  | It_Sla_Sabre            | Dam 30-40, Slashing +10  | No    | Stone                            |
| Scimitar           | 750  | 200  | It_Sla_Scimitar         | Dam 30-40, Slashing +15  | No    | Cooper                           |
| Soul Caller        | 2500 | ???  | ???                     | Dam 45-100, Piercing +15 | No    |                                  |
| Stormthorn         | 250  | 75   | ???                     | Dam 20-30, Piercing +15  | No    | Cooper                           |
| Stormwind          | 2000 | ???  | ???                     | Dam 45-60, Slashing +15  | No    |                                  |
| Sunken One's Axe   | 50   | ???  | It_Sla_SunkenOne        | Dam 15-25, Slashing +10  | No    |                                  |
| Sword              | 1100 | 250  | ???                     | Dam 30-65, Piercing +10  | No    | Cooper                           |
| Wave Dancer        | 3000 | ???  | It_Sla_Wavedancer       | Dam 60-100, Slashing +20 | No    |                                  |

Item Codes:

It_Pie_LongSword
It_Pie_Pirate
It_Pie_Pomp
It_Thr_EarthTitanRock
It_Thr_Spear
It_Thr_Titan
It_Thr_Titan_Crow
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

### Firearms

Note: This game has a lot of translation errors with the gun item names, be carful to go by the weapon's *stats* rather than its name (e.g. there is a gun named "Shotgun" which is actually a musket using the "Musket" skill and fires Bullets rather than Lead Shot; likewise "Seaman's Shotgun" is a musket; but "Double-barrelled Shotgun" really is a shotgun ... )

| Item Name                | Buy  | Sell | Item Code      | Stats and Effects                     | Ammo Type | Free?   | Merchants                        |
|:------------------------:|:----:|:----:|:--------------:|:-------------------------------------:|:------  -:|:--------------------------------:|
| Boarding Pistol          | 400  | 80   | ???            | Dam 50, Range 8, Rel 20s, Pistols +10 | ???       | No      | Thompkins                        |
| Scatter Pistol           | 500  | 100  | ???            | Dam 60, Range 8, Rel 30s, Pistols +5  | ???       | No      | Barney, Webster                  |
| Pistol                   | 750  | 150  | ???            | Dam 60, Range 8, Rel 20s, Pistols +20 | ???       | Yes     | Barney                           |
| The Twins                | 950  | 200  | It_Pis_Twins   | Dam 70, Range 8, Rel 15s, Pistols +10 | Bullet    | Yes\*\* | Webster                          |
| The Grinder              | 1000 | 250  | ???            | Dam 70, Range 8, Rel 30s, Pistols +5  | ???       | No      | Webster                          |
| Officer's Pistol         | 1350 | 270  | It_Pis_Officer | Dam 65, Range 8, Rel 20s, Pistols +15 | Bullet    | Yes\*   |                                  |
| Sawn-Off Shotgun         | ???? | ???  | It_ShP_SawnOff | ???                                   | ???       | No      |                                  |
| Silver Iron              | ???? | ???  | It_Pis_Silver  | Dam 80, Range 8, Rel 20s, Pistols +15 | ???       | No      |                                  |
| Double-barrelled Shotgun | ???? | ???  | ???            | ???                                   | ???       | No      |                                  |
| Fire Cudgel              | ???? | ???  | It_ShG_Fire |  | ???                                   | ???       | No      |                                  |
| Shotgun                  | 750  | 200  | ???            | Dam 50, Range 26, Rel 2s, Muskets +5  | ???       | No      | Thompkins                        |
| Storm Rifle              | ???? | ???  | ???            | ???                                   | ???       | No      |                                  |
| Seaman's Shotgun         | ???? | ???  | ???            | ???                                   | ???       | No      |                                  |


\* Free = Yes: only if you have purchased the DLC.

\*\* Free = Yes: but this is missable and only available immediately after starting a new game. if you miss the free one, you'll need to buy one later unless you want to cheat or go without.


Item Codes:

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
It_ShG_Hunting
It_ShG_Pirate
It_ShG_Ship
It_ShG_Thunder
It_Rif_Assault
It_Rif_Caldera
It_Rif_Double
It_Rif_Expedition
It_Rif_Musket
It_Rif_Ship
It_Rif_Single


### Voodoo Items

| Item Name        | Buy  | Sell | Item Code             | Stats and Effects                                     | Free? | Merchants          |
|:----------------:|:----:|:----:|:---------------------:|:-----------------------------------------------------:|:-----:|:------------------:|
| Curse Doll       | ???  | 20   | ???                   | Curse and weaken enemies                              | No    |                    |
| Voodoo Doll      | 50   | 10   | It_VoodooDoll         | ---                                                   | No    | Kapua, Emma, Quinn |
| Sceptre of Fear  | ???? | 200  | It_Scepter_Fear       | Dam 10-20, Cause Fera and Terror in Enemies           | No    |                    |
| Sceptre of Power | ???? | 200  | It_ScepterTelekinesis | Dam 10-20, Incite People/Animals to attack each other | No    |                    |
| Skull Sceptre    | ???? | 200  | It_Scepter_Skull      | Dam 10-20, Conjure up the Captain's Ghost             | No    |                    |


Item Codes:


It_Scepter_Skull_SunkenOne



### Dirty Tricks

| Item Name           | Buy  | Sell | Item Code  | Stats and Effects                          | Free? | Merchants                        |
|:-------------------:|:----:|:----:|:----------:|:------------------------------------------:|:-----:|:-----------------------------------:|s
| Sand                | N/A  | N/A  | It_Sand    | Blinds an Enemy, Range: Melee, Reload: 10s | Ghiles                   |
| Salt                | 100  | 20   | It_Salt    | Blinds an Enemy, Range: Melee, Reload: 10s | Flannigan, Sophia, Quinn |
| Fire Oil            | 100  | 20   | ????       | Firebreathing, Range: Melee, Reload: 20s   | Flannigan, Quinn         |
| Rock Hard Coconut   | ???? | 5    | It_Coconut | Chance of Enemy KO, Damage 10, Range: 8    |  |




### Throwing Weapons

| Item Name          | Buy  | Sell | Item Code              | Stats and Effects                        | Free? | Merchants                        |
|:------------------:|:----:|:----:|:----------------------:|:----------------------------------------:|:------:|:----------------------------------:|
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

| Item Name      | Buy  | Sell | Item Code        | Stats and Effects                        | Free? | Merchants                                  |
|:--------------:|:----:|:----:|:----------------:|:----------------------------------------:|:-----:|:------------------------------------------:|
| Bomb           | 250  | 50   | It_Exp_Bomb      | Timed Explosive                          | Yes   | Thompkins                                  |
| Bone Saw       | 100  | 20   | It_Bonesaw       | Harvest Claw & Sickle from some animals  | No    | Ghiles, Flannigan, Sophia, Ranapiri, Quinn |
| Hammer         | ???? | ???  | ???              | Allows smithing                          | Yes   |                                            |
| Jaw Chisel     | ???? | 20   | It_JawChisel     | Harveset teeth & tusks from some animals | No    | Ranapiri, Quinn                            |
| Lockpick       | ???? | 20   | It_Lockpick      | Pick locks (REQ: Lockpick skill to use)  | No    |                                            |
| Monkey         | ???? | 200  | It_Monkey        | Used to steal things, pull levers, etc   | No    | Flannigan, Quinn                           |
| Parrot         | ???? | ???  | It_Parrot        | Used to distract enemies                 | No    | Flannigan                                  |
| Pickaxe        | 150  | 30   | It_Pickaxe       | Allows mining for ore                    | No    | Flannigan, Sophia, Quinn                   |
| Powder Key     | ???  | 25   | It_Exp_PowderKeg | Shootable Explosive                      | Yes   | ---                                        |
| Ritual Knife   | ???? | 50   | It_RitualKnife   | ???                                      | No    | Kapua (Faction)                            |
| Shovel         | 150  | 30   | It_Shovel        | Allows digging up buried treasure        | Yes   | Flannigan, Sophia, Quinn                   |
| Skinning Knife | 150  | 30   | It_SkinningKnife | Harvest skins from some animals          | Yes   | Ranapiri                                   |
| Torch          | 15   | 3    | It_Torch         | Allows lighting up dark areas            | Yes   | Ghiles, Flannigan, Ranapiri, Quinn         |


### Plants and Ingredients

All of the plant ingredients can be found for free around the world.

| Item Name            | Buy  | Sell | Item Code            | Stats and Effects                        | Merchants                             |
|:--------------------:|:----:|:----:|:--------------------:|:----------------------------------------:|:-------------------------------------:|
| Heros Crown          | ???  | 50   | It_Pl_Perm_Toughness | Bladeproof, Bulletproof, Intimidate +1   | ---                                   |
| Grave Root           | ???  | 50   | It_Pl_Perm_Voodoo    | Black Magic, Death Cult, Ritual +1       | ---                                   |
| Swordthorn           | ???  | 50   | It_Pl_Perm_Blades    | Slashing, Piercing, Throwing +1          | ---                                   |
| Sharpeye             | ???  | 50   | It_Pl_Perm_Firearms  | Muskets, Pistols, Shotguns +1            | ---                                   |
| Jester's Cap         | ???  | 50   | It_Pl_Perm_Cunning   | Dirty Tricks, Thievery, Silver Tongue +1 | ---                                   |
| Black Oleander       | 50   | 10   | ???                  | Regeneration 5                           | Badriya                               |
| Bloodroot            | 50   | 10   | ???                  | Regeneration 5                           | Badriya                               |
| Choking Vine         | 50   | 10   | ???                  | Regeneration 5                           | Badriya                               |
| Golden Clover        | 50   | 10   | ???                  | Regeneration 5                           |                                       |
| Powdered Poppy Seeds | 50   | 10   | ???                  | Regeneration 5                           |                                       |
| Skullflower          | 50   | 10   | ???                  | Regeneration 5                           |                                       |
| Spirit Lily          | 50   | 10   | ???                  | Regeneration 5                           | Badriya, Emma                         |

Item Codes:

It_Pl_Blades
It_Pl_Cunning
It_Pl_Toughness
It_Pl_Voodoo


### Animal Trophies

Most of the animal trophy items can be found for free by killing then harvesting animals around the world. However, you may need certain tools before you are able to harvest certain trophy parts.

I am not sure if Bone and Skull can be harvested. If not, I will move them to a different section.

| Item Name            | Buy  | Sell | Item Code            | Required Tool  | Animal(s)                                         | Merchants                        |
|:--------------------:|:----:|:----:|:--------------------:|:--------------:|:-------------------------------------------------:|:--------------------------------:|
| Acid Gland           | ???? | 13   | It_At_Acid           | Ritual Knife   | Termite Warriors                                  |                                  |
| Bone                 | 15   | 5    | It_At_Bone           | ???            | ???                                               | Badriya, Ranapiri                |
| Claw                 | ???? | 15   | It_At_Claw           | Bonesaw        | Blueclaw Monkeys, Cave Bats, Claw Monkeys, Ghouls |                                  |
| Ear                  | 25   | 5    | It_At_Ear            | Ritual Knife   | Cave Bats                                         | Badriya, Ranapiri                |
| Eye                  | 50   | 10   | It_At_Eye            | Ritual Knife   | Giant Crabs, Spiders, Grave Spiders               | Badriya, Ranapiri, Kapua, Emma   |
| Feather              | 50   | 10   | It_At_Feather        | Ritual Knife   | Firebirds                                         | Badriya, Ranapiri                |
| Gorilla Skin         | ???? | ???  | It_At_Fur_Gorilla    | Skinning Knife | Gorilla                                           |                                  |
| Jaguar Heart         | 180  | 45   | It_At_Heart          | Ritual Knife   | Jaguars                                           | Badriya, Ranapiri                |
| Jaguar Skin          | ???  | 40   | It_At_Fur_Jaguar     | Skinning Knife | Jaguars                                           |                                  |
| Panther Paw          | ???  | ???  | It_At_Paw            | ???            | Panthers                                          |                                  |
| Panther Skin         | ???  | ???  | It_At_Fur_Panther    | Skinning Knife | Panthers                                          |                                  |
| Moneky Skull         | 125  | 25   | It_At_MonkeySkull    | Ritual Knife   | Monkeys (passive ones only) |                     | Badriya, Ranapiri, Emma          |
| Sand Devil Sensor    | 75   | 15   | It_At_Sensor         | ---            | Sand Devils                                       | Ranapiri                         |
| Sickle               | ???? | 7    | It_At_AntSickle      | Bonesaw        | Termite Workers, Termite Warriors                 |                                  |
| Silverback Skin      | ???? | ???  | It_At_Fur_Silverback | Skinning Knife | Silverback                                        |                                  |
| Teeth                | 50   | 10   | It_At_Teeth          | Jaw Chisel     | Blueclaw Monekys, Claw Monkeys, Gators, Gorillas  | Ranapiri, Kapua, Emma            |
| Tusk                 | 100  | 20   | It_At_Tusk           | Jaw Chisel     | Warthogs                                          | Ranapiri                         |
| Warthog Skin         | ???  | 30   | It_At_Fur_Warthog    | Skinning Knife | Warthogs                                          |                                  |


### Misc

Most of the miscellaneous items can be found for free around the world.

| Item Name            | Buy | Sell | Item Code         | Stats and Effects                       | Merchants                        |
|:--------------------:|:---:|:----:|:-----------------:|:---------------------------------------:|:----------------------------------------:|
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
| Monkey Statue        | ??? | 100  | ???               | ---                                     | --- |
| Oyster Shell         | ??? | ???  | It_Shell          | ---                                     | --- |
| Pearl                | ??? | 50   | It_Pearl          | ---                                     | DiFuego |
| Plate                | ??? | ???  | ???               | ---                                     | --- |
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
| Wheel Lock           | ??? | 15   | ???               | ---                                     | --- |




Item Codes:

It_RockOil
It_Fish_Raw
It_Fork
It_Meat_Fried
It_Meat_Raw_Habib
It_1H_Sword


### Legendary Items

Most of these items can be found for free around the world. However, the ones that list a Merchant cannot be found and must be purchased from that merchant to acquire.

See Legendary-Items.md and/or Freebies.md for more information on locating the items.


| Item Name              | Buy  | Island                | Item Code            | Effect               | Merchants                        |
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


### Quest Items

Be forewarned: Adding/removing these could break quests. But this could be handy if you have become stuck / bugged and unable to complete a quest or if you have completed a quest and don't want the quest items cluttering up your inventory.


| Item Name                 | Item Code             | Quest Name                 |
|:-------------------------:|:---------------------:|:--------------------------:|
| Ancestor's Blood          | It_Po_AncestorsBlood  | The Blood of the Ancestors |
| Bag of Herbs              | | |
| Bakir Voodoo Doll         | It_VoodooDoll_Bakir | |
| Barrel: Fat Olga          | It_FatOlga_Barrel      | |
| Barrel: Silver Iron       | It_SilverIron_Barrel   | |
| Bundle of Plants          | | |
| Butch Voodoo Doll         | It_VoodooDoll_Butch | |
| Cargo                     | | |
| Diary Page 1              | | |
| Diary Page 2              | | |
| Diary Page 3              | | |
| Diary Page 4              | | |
| Earth Amulet              | It_Am_Earth | ??? |
| Foul-Smelling Letter      | | |
| Golden Mask               | | |
| Golden Plate              | | |
| Golden Statue             | | |
| Grip: Fat Olga Grip       | It_FatOlga_Grip        | |
| Grip: Silver Iron         | It_SilverIron_Grip     | |
| Jim Voodoo Doll           | It_VoodooDoll_Jim | |
| Mauregato Voodoo Doll     | It_VoodooDoll_Mauregato | |
| Potion of False Death     | It_Po_FalseDead_Tao | ???| 
| Red Wine                  | | |
| Sack of Mushrooms         | | |
| Sebastiano Voodoo Doll    | It_VoodooDoll_Sebastiano | |
| Sebastiano's Key          | | |
| Shaganumbi Idol           | | Help Against Crow / Shaganumbi Idol Found |
| Steelbards's Hat          | | |
| Steelbeard's Key          | | |
| Sword Blade: King's Sword | It_KingSword_Blade     | |
| Sword Blade: Soul Caller  | It_SoulCaller_Blade    | |
| Sword Blade: Stormwind    | It_Tempest_Blade       | |
| Sword Blade: Wave Dancer  | It_Wavedancer_Blade    | |
| Sword Hilt: King's Sword  | It_KingSword_Hilt      | |
| Sword Hilt: Soul Caller   | It_SoulCaller_Hilt     | |
| Sword Hilt: Stormwind     | It_Tempest_Hilt        | |
| Sword Hilt: Wave Dancer   | It_Wavedancer_Hilt     | |
| Tavern Key                | | |
| Thief's Bone Hand         | | |
| Titan Harpoon             | | |
| Tower Key                 | | |
| Zaalu Voodoo Doll         | It_VoodooDoll_Zaalu | |


Item Codes:

It_Po_FalseBlood_Tao
It_Po_Health_02
It_Po_Speed
It_Potion_Health

----


## Merchant Locations

| Merchant Name                 | Type                                    | Island                | Location                         |
|:-----------------------------:|:---------------------------------------:|:---------------------:|:--------------------------------:|
| Osorio                        | Food/Drink                              | Tacarigua             | Puerto Sacarico                  |
| Di Fuego                      | Clothing                                | Tacarigua             | Puerto Sacarico                  |
| Booze                         | Alcohol                                 | Tacarigua             | Pirates Den                      |
| Stone                         | Slashing Weapons                        | Tacarigua             | Pirates Den                      |
| Flannigan                     | General, Clothing, Dirty Tricks         | Tacarigua             | Pirates Den                      |
| Barney                        | Pistols                                 | Tacarigua             | Pirates Den                      |
| Ghiles                        | General, Ring                           | Tacarigua             | Sugar Plantation                 |
| Thompkins                     | Pistols, Musket                         | Tacarigua             | Sugar Plantation                 |
| Sophia                        | Clothing, General                       | The Sword Coast       | Puerto Isabella                  |
| Cooper                        | Blacksmith                              | The Sword Coast       | Puerto Isabella                  |
| Webster                       | Pistols                                 | The Sword Coast       | Puerto Isabella                  |
| Badriya                       | Potions, Ingredients                    | The Sword Coast       | Natives Village                  |
| Ranapiri                      | General, Ingredients                    | The Sword Coast       | Natives Village                  |
| Kapua                         | Voodoo, Ingredients                     | The Sword Coast       | Natives Village                  |
| Emma                          | Voodoo, Potions                         | Angitua               | Harbor Town                      |
| Quinn                         | General, Clothing, Dirty Tricks         | Angitua               | E of Harbor Town on shore        |




