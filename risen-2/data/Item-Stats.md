
## Disclaimer

The column named "Free" is just indicating if it is possible to pick up a free copy somewhere in the game (Yes = you can get it for free, No = no free copies found). Check the Freebies.md file for a list of where you can find free copies of certain items.

This mostly started as a reference for my own use while playing the game. If I didn't encounter something, it probably didn't get filled in.

Also, even in single-player games like this, I don't tend to cheat much. The exceptions are things that I think are bugged / poorly designed (e.g. quest not giving the reward it said it was, final boss fight from the first Risen game that was basically some kind of platformer bs that didn't belong in an RPG, etc) -- e.g. not just to circumvent some challenge.

I did my best to test them out but there could be some mistakes still. If you decide you try them out anyway, the instructions are:

1. Anywhere in game type in `pommes` quickly and it enables test mode, access console by pressing The tilde key \`
2. type `list` to show all commands
3. type `give Item_Code` to give 1 copy of the item or `give Item_Code n` to give n copies of the item. Note that all item codes are **case-sensitive**
4. If you want to remove an item (such as a quest item that didn't get removed) then you can type `take Item_Code` or `take Item_Code n` to remove the appropriate number of that item. This also works like gold (for example if you want to "buy" something out of thin air so you can RP getting it from a different merchant, you could do something like `take It_Gold 150` then `give It_SkinningKnife 1`)



## Items


### Permanent Potions

Note: While there is a potion for permanently increasing Toughness ('Leather Oil'), it does not appear to have a recipe in-game (or it is undocumented / named strangely)

| Item Name          | Buy  | Sell | Item Code            | Effects                                  |
|:------------------:|:----:|:----:|:--------------------:|:----------------------------------------:|
| Fool's Juice       | ???? | 100  | It_Po_Perm_Cunning   | Silver Tongue, Dirty Tricks, Thievery +2 |
| Graveroot Extract  | ???? | 100  | It_Po_Perm_Voodoo    | Black Magic, Death Cult, Ritual +2       |
| Leather Oil        | ???? | 100  | It_Po_Perm_Toughness | Bladeproof, Bulletproof, Intimidate +2   |
| Sharpeye Paste     | ???? | 100  | It_Po_Perm_Firearms  | Muskets, Pistols, & Shotguns +2          |
| Swordthorn Essence | ???? | 100  | It_Po_Perm_Blades    | Piercing, Slashing, & Throwing +2        |



### Temporary Potions

Note: These potions become more effective with additional ranks of the Ritual skill (Voodoo). By default they all are +7. With Ritual 1, they become +13. With Ritual 2, they become +17. With Ritual 3, they become +??.

Pretty much all of these potions can be found for free around the world.

| Item Name            | Buy  | Sell | Item Code          | Duration | Skill(s) Effected            | Reg | Rit-1 | Rit-2 | Rit-3 | Merchants               |
|:--------------------:|:----:|:----:|:------------------:|:---------------------------------------:|:---:|:-----:|:-----:|:-----:|:-----------------------:|
| Marksman's Potion    | 200  | 30   | It_Po_Firearms     | 30 sec   | Muskets, Pistols, Shotguns   | +7  | +13   | +17   | ??    | Badriya, Emma, Di Silva |
| Potion of Awe        | 150  | 20   | It_Po_Intimdate    | 30 sec   | Intimidate                   | +7  | +13   | +17   | ??    | Badriya, Emma, Di Silva |
| Potion of Blades     | 200  | 30   | It_Po_Blade        | 30 sec   | Throwing, Piercing, Slashing | +7  | +13   | +17   | ??    | Badriya, Emma, Di Silva |
| Potion of Persuasion | 150  | 20   | It_Po_Silvertongue | 30 sec   | Silver Tongue                | +7  | +13   | +17   | ??    | Badriya, Emma, Di Silva |
| Ritual Potion        | 175  | 25   | It_Po_Ritual       | 30 sec   | Ritual                       | +7  | +13   | +17   | ??    | Badriya, Emma, Di Silva |
| Spirit Essence       | 175  | 25   | It_Po_BlackMagic   | 30 sec   | Black Magic                  | +7  | +13   | +17   | ??    | Badriya, Emma, Di Silva |
| Thief's Potion       | 250  | 50   | It_Po_Thief        | 30 sec   | Thievery                     | +7  | +13   | +17   | ??    | Badriya, Emma, Di Silva |


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
| Bicorne Hat          | ???  | 40   | It_Bicorn_Black    | Bladeproof +3, Bulletproof +3, Intimidate +2    | No    | Pantaleo, Mercutio  |
| Elegant Tricorne Hat | ???? | 50   | It_Tricorn_White   | Bladeproof +3, Bulletproof +3, Silver Tongue +3 | No    | Pantaleo            |
| Good Tricorne Hat    | ???? | 50   | It_Tricorn_Gold    | Bladeproof +3, Bulletproof +3, Intimidate +3    | No    | Pantaleo, Mercutio  |
| Hat\*\*              | ---- | 60   | It_Hat_Morris      | Bladeproof +3, Bulletproof +3, Intimidate +3    | No    | ---                 |
| Old Bandana          | 100  | 20   | It_Bandana_Torn    | Bladeproof +2, Bulletproof +2                   | No    | Carter, Flannigan   |
| Old Bicorne Hat      | 100  | 20   | It_Bicorn_Torn     | Bladeproof +2, Bulletproof +2                   | No    | Sophia              |
| Old Tricorne Hat     | 200  | 40   | It_Tricorn_Torn    | Bladeproof +3, Bulletproof +3                   | No    | Sophia, Quinn       |
| Pirate Bandana Largo | 100  | 20   | It_Bandana_Largo   | Bladeproof +5, Bulletproof +0, Intimidate +5    | No    | ---                 |
| Pirate Hat (DLC)     | 250  | 50   | It_Hat_DLC1        | Bladeproof +5, Bulletproof +5, Silver Tongue +5 | Yes\* | ---                 |
| Quality Bicorne Hat  | ???? | 30   | It_Bicorn_Silver   | Bladeproof +3, Bulletproof +3, Silver Tongue +2 | No    | Pantaleo            |
| Red Bandana          | 150  | 20   | It_Bandana_Red     | Bladeproof +2, Bulletproof +2, Intimidate +2    | No    | Quinn               |
| Steelbeard's Hat\*\* | ---  | ---  | It_Hat_Stahlbart   | Bladeproof +3, Bulletproof +3, Intimidate +10   | No    | ---                 |
| Striped Bandana      | 100  | 20   | It_Bandana_Striped | Bladeproof +2, Bulletproof +2                   | No    | Flannigan           |


\* Free in-game but *only* if you have purchased the DLC.

\*\* Technically these are quest items but they won't trigger the quest by being added to your inventory.


### Body

| Item Name            | Buy  | Sell | Item Code            | Stats and Effects                                               | Free? | Merchants         |
|:--------------------:|:----:|:----:|:--------------------:|:--------------------------------------------------------------:|:-----:|:------------------:|
| Black Coat           | ???? | 200  | It_GreatCoat_Black   | Bladeproof +20, Bulletproof +20, Intimidate +5                  | No    | Pantaleo          |
| Black Waistcoat      | ???  | 65   | It_Vest_Black        | Bladeproof +10, Bulletproof +10, Intimidate +3                  | No    | Pantaleo          |
| Cloth Coat           | ???? | 100  | It_Coat_Cloth        | Bladeproof +15, Bulletproof +15                                 | No    | Pantaleo          |
| Dirty Shirt          | 75   | 15   | It_Shirt_Dirty       | Bladeproof +3, Bulletproof +3                                   | Yes   | ---               |
| Elegant Waistcoast   | 300  | 60   | It_Vest_Silk         | Bladeproof +10, Bulletproof +10, Silver Tongue +5               | No    | DiFuego, Pantaleo |
| Heavy Cloth Coat     | ???? | 160  | It_GreatCoat_Striped | Bladeproof +20, Bulletproof +20                                 | No    | Pantaleo          |
| Heavy Leather Coat   | ???? | 160  | It_GreatCoat_Leather | Bladeproof +20, Bulletproof +20                                 | No    | Mercutio          |
| Largos Leather Shirt | 150  | 30   | It_Shirt_Largo       | Bladeproof +6, Bulletproof +5                                   | No    | Carter            |
| Leather Shirt        | 200  | 40   | It_Shirt_Leather     | Bladeproof +6, Bulletproof +6                                   | No    | Sophia            |
| Leather Waistcoat    | 250  | 45   | It_Vest_Leather      | Bladeproof +10, Bulletproof +10                                 | No    | Quinn, Mercutio   |
| Official's Coat      | ???  | 80   | It_Coat_Inq          | Bladeproof +12, Bulletproof +15                                 | No    | Mercutio          |
| Old Coat             | 350  | 60   | It_Coat_Torn         | Bladeproof +12, Bulletproof +12                                 | No    | Sophia            |
| Old Raincoat         | 600  | 120  | It_GreatCoat_Torn    | Bladeproof +17, Bulletproof +17                                 | No    | Quinn             |
| Old Shirt            | 75   | 15   | It_Shirt_Torn        | Bladeproof +3, Bulletproof +3                                   | No    | Carter            |
| Old Waistcoat        | 150  | 30   | It_Vest_Torn         | Bladeproof +8, Bulletproof +8                                   | No    | Sophia            |
| Pirate Clothes (DLC) | 500  | 100  | It_Armor_DLC1        | Bladeproof +10, Bulletproof +5                                  | Yes\* |                   |
| Plain Shirt          | 100  | 20   | It_Shirt_Cloth       | Bladeproof +5, Bulletproof +5                                   | No    | Flannigan         |
| Red Coat             | 500  | 100  | It_Coat_Leather      | Bladeproof +15, Bulletproof +15                                 | No    | Quinn             |
| Shirt                | ???  | 20   | It_Shirt_Collar      | Bladeproof +5, Bulletproof +5                                   | No    | ???               |
| Silk Shirt           | 500  | 100  | It_Shirt_White       | Bladeproof +1, Bulletproof +1, Silver Tongue +10, Piercing +10  | No    | DiFuego, Pantaleo |
| Striped Shirt        | 100  | 20   | It_Shirt_Striped     | Bladeproof +5, Bulletproof +5                                   | No    | Flannigan         |
| Voodoo Garb          | ???  | 200  | IT_Armor_Voodoo      | Bladeproof +10, Bulletproof +5, Black Magic +10, Death Cult +10 | No    |                   |


### Legs

| Item Name          | Buy  | Sell | Item Code       | Stats and Effects                               | Free? | Merchants                           |
|:------------------:|:----:|:----:|:---------------:|:-----------------------------------------------:|:-----:|:-----------------------------------:|
| Colourful Trousers | 150  | 30  | It_Pants_Striped | Bladeproof +2, Bulletproof +2                   | No    | Carter, Flannigan                   |
| Leather Trousers   | 150  | 30  | It_Pants_Leather | Bladeproof +2, Bulletproof +2                   | No    | Sophia, Quinn                       |
| Black Trousers     | 200  | 50  | It_Pants_Black   | Bladeproof +3, Bulletproof +3, Intimidate +3    | No    | DiFuego, Pantaleo                   |
| Studded Trousers   | ???  | 50  | It_Pants_Studded | Bladeproof +4, Bulletproof +4                   | No    | Mercutio                            |
| White Trousers     | 200  | 50  | It_Pants_White   | Bladeproof +3, Bulletproof +3, Silver Tongue +3 | No    | DiFuego, Pantaleo                   |


### Feet

| Item Name            | Buy  | Sell | Item Code            | Stats and Effects                               | Free? | Merchants                        |
|:--------------------:|:----:|:----:|:--------------------:|:-----------------------------------------------:|:-----:|:--------------------------------:|
| Elegant Shoes        | 400  | 80   | It_Shoes_Rich        | Bladeproof +5, Silver Tongue +5                 | No    | DiFuego, Pantaleo                |
| Good Shoes           | 200  | 40   | It_Shoes_Polished    | Bladeproof +3, Silver Tongue +3                 | No    | DiFuego, Sophia                  |
| Good Short Boots     | 300  | 60   | It_LowBoot_Polished  | Bladeproof +5, Bulletproof +5, Silver Tongue +2 | No    | Sophia                           |
| Good Leather Boots   | ???? | 150  | It_HighBoot_Torn     | Bladeproof +5, Bulletproof +5, Intimidate +5    | No    | Pantaleo                         |
| Old Leather Boots    | 200  | 40   | It_HighBoot_Torn     | Bladeproof +5, Bulletproof +5                   | No    | Sophia                           |
| Old Shoes            | 75   | 15   | It_Shoes_Torn        | Bladeproof +2, Silver Tongue +2                 | No    | Flannigan, Quinn, Mercutio       |
| Old Short Boots      | 125  | 25   | It_LowBoot_Torn      | Bladeproof +5                                   | No    | Flannigan, Mercutio              |
| Pirate Boots (DLC)   | 250  | 50   | It_Shoes_DLC1        | Bladeproof +5, Bulletproof +5                   | Yes\* |                                  |
| Tall Leather Boots   | 500  | 100  | It_HighBoot_Normal   | Bladeproof +5, Intimidate +3                    | No    | Quinn, Mercutio                  |
| Wornout Boots: Largo | 125  | 25   | It_LowBoot_Largo     | Bladeproof +5                                   | No    |                                  |


\* Free in-game but *only* if you have purchased the DLC.


### Earrings


| Item Name          | Buy  | Sell | Item Code         | Stats and Effects         | Free? | Merchants                           |
|:------------------:|:----:|:----:|:-----------------:|:-------------------------:|:-----:|:-----------------------------------:|
| Black Pearl        | 2000 | 400  | It_Ear_Largo      | Cunning +1                | Yes\* |                                     |
| Bloodthorn Earring | 200  | 40   | It_Ear_Bloodthorn | Ritual +5                 | No    | Kapua                               |
| Creole Earring     | ???? | 400  | It_Ear_Creole     | Blades +1                 | No    |                                     |
| Diamond Earring    | ???? | 400  | It_Ear_Diamond    | Firearms +1               | No    |                                     |
| Duelist's Earring  | 250  | 50   | It_Ear_Duel       | Piercing +5               | Yes\* | DiFuego                             |
| Feather Earring    | ???? | 400  | It_Ear_Feather    | Voodoo +1                 | No    |                                     |
| Golden Earring     | ???? | 50   | It_Ear_Gold       | ---                       | No    |                                     |
| Jade Earring       | 250  | 50   | It_Ear_Jade       | Black Magic +5            | Yes\* | Emma                                |
| Pearl Earring      | 200  | 40   | It_Ear_Pearl      | Silver Tongue +5          | Yes\* | DiFuego                             |
| Rogues Earring     | 200  | 40   | It_Ear_Rogue      | Dirty Tricks +5           | Yes   | Quinn                               |
| Sailor's Earring   | 600  | 120  | It_Ear_Sailor     | Bladeproof +5             | Yes   | Possodino                           |
| Shark Tooth        | ???? | 400  | It_Ear_Shark      | Toughness +1              | No    |                                     |
| Skull Earring      | 200  | 40   | It_Ear_Skull      | Intimidate +5             | Yes\* | Flannigan, Quinn                    |
| Warrior's Earring  | 1000 | 200  | It_Ear_Warrior    | Bulletproof +5, Ritual +5 | Yes   |                                     |


\* Requires Pickpocket, Lockpick, and/or Monkey Trainer Skills be unlocked and of a certain level. If there are multiple copies freely available this only applies when *all* of the freely available copies of that item require thieving skills.


### Amulets


| Item Name          | Buy  | Sell | Item Code        | Stats and Effects                                        | Free? | Merchants                        |
|:------------------:|:----:|:----:|:----------------:|:--------------------------------------------------------:|:-----:|:--------------------------------:|
| Ancestral Stone    | ???? | 500  | It_Am_Ancestor   | Death Cult +10, Black Magic +10, Ritual +10              | No    |                                  |
| Bone Necklace      | ???? | 150  | It_Am_Bone       | Death Cult +10, Black Magic +5                           | No    |                                  |
| Curse Stone        | 800  | 160  | It_Am_Curse      | Death Cult +5, Black Magic +10                           | No    | Di Silva                         |
| Hunter's Necklace  | ???? | 100  | It_Am_Hunter     | Ritual +10                                               | No    |                                  |
| Jade Pendant       | 750  | 150  | It_Am_Jade       | Black Magic +5, Death Cult +5, Ritual +5                 | No    | Emma                             |
| Lucky Charm        | 400  | 80   | It_Am_Luck       | Bulletproof +5                                           | Yes   |                                  |
| Pirates Pendant    | ???? | 200  | It_Am_Pirate     | Slashing +5, Pistols +5, Bulletproof +5, Dirty Tricks +5 | No    |                                  |
| Rat Amulet         | 50   | 20   | It_Am_Rat_Hikoko | Bulletproof +2                                           | No    | Hikoko                           |
| Skull Amulet       | ???? | 300  | It_Am_Skull      | Death Cult +15, Black Magic +5                           | No    | Di Silva                         |
| Spirit Amulet      | 500  | 100  | It_Am_Ghost      | Death Cult +5, Ritual +5                                 | No    | Emma                             |
| Soul Necklace      | ???? | 200  | It_Am_Soul       | Death Cult +5, Black Magic +5, Ritual +10                | Yes\* |                                  |
| Thief's Amulet     | 750  | 150  | It_Am_Thief      | Thievery +10, Dirty Tricks +5                            | No    | Quinn                            |
| Ti' Ha Ko          | 1000 | 200  | It_Am_Tiwa       | Death Cult +5, Black Magic +15                           | Yes   |                                  |
| Tribal Symbol      | 150  | 30   | It_Am_Tribe      | Ritual +5                                                | Yes   | Kapua                            |
| Warrior's Jewelery | 750  | 150  | It_Am_Warrior    | Ritual +15                                               | Yes   | Di Silva                         |
| Witche's Amulet    | 500  | 100  | It_Am_Kiki       | Black Magic +5, Ritual +5                                | Yes\* | Kapua                            |

\* Requires Pickpocket, Lockpick, and/or Monkey Trainer Skills be unlocked and of a certain level. If there are multiple copies freely available this only applies when *all* of the freely available copies of that item require thieving skills.



### Rings


Note: The DLC item "Master Scholar's Ring" cannot be sold and thus does not have a price.


| Item Name                   | Buy  | Sell | Item Code         | Stats and Effects                           | Free? | Merchants                           |
|:---------------------------:|:----:|:----:|:-----------------:|:-------------------------------------------:|:-----:|:-----------------------------------:|
| Blade Ring                  | ???? | 200  | It_Ri_Blade       | Thievery +20                                | No    |                                     |
| Bone Ring                   | 500  | 100  | It_Ri_Bone        | Black Magic +5, Ritual +5                   | No    | Kapua                               |
| Hunter's Ring               | 500  | 100  | It_Ri_Hunter      | Muskets +5, Shotguns +5                     | Yes\* | Possodino                           |
| Inquisitor's Ring           | 600  | 120  | It_Ri_Inquisitor  | Muskets +5, Bulletproof +5                  | Yes   |                                     |
| Iron Ring                   | 500  | 100  | It_Ri_Iron        | Throwing Weapons +5, Bladeproof +5          | Yes\* | Kapua                               |
| Jade Ring                   | 600  | 120  | It_Ri_Jade        | Ritual +10                                  | No    | Kapua                               |
| Master Scholar's Ring (DLC) | N/A  | N/A  | It_Ri_XP          | Glory Bonus +5%                             | No    |                                     |
| Officer's Ring              | 250  | 75   | It_Ri_Officer     | Piercing +5, Pistols +5                     | Yes   | Ghiles                              |
| Poison Ring                 | 750  | 150  | It_Ri_Poison      | Dirty Tricks +20                            | No    | Emma                                |
| Ring of Deception           | 600  | 120  | It_Ri_Deception   | Dirty Tricks +15, Silver Tongue +5          | Yes\* |                                     |
| Ring of Greed               | 1000 | 200  | It_Ri_Greed       | Thievery +15, Silver Tongue +5              | Yes   |                                     |
| Rogue's Ring                | ???  | 100  | It_Ri_Rogue       | Dirty Tricks +10, Thievery +5               | Yes   | Quinn                               |
| Ruby Ring                   | 250  | 50   | It_Ri_Ruby        | Dirty Tricks +5, Silver Tongue +5           | Yes   | Sophia                              |
| Silver Ring                 | ???? | 20   | It_Ri_Silver      | ---                                         | No    |                                     |
| Skull Ring                  | ???? | 100  | It_Ri_Skull       | Slashing +5 , Intimidate +5                 | Yes\* | Di Silva                            |
| Soul Ring                   | ???? | 100  | It_Ri_Soul        | Death Cult +5, Ritual +5                    | No    |                                     |
| Sparkling Gold Ring         | 150  | 50   | It_Ri_Gold        | Silver Tongue +5                            | No    | Flannigan, Sophia                   |
| Tek Shaballa\*\*            | ???? | ---  | It_Ri_TekShaballa | Black Magic +10, Death Cult +1-, Ritual +10 | No    |                                     |
| Thief's Ring                | 600  | 120  | It_Ri_Thief       | Dirty Tricks +5, Thievery +10               | Yes   | Emma                                |


\* Requires Pickpocket, Lockpick, and/or Monkey Trainer Skills be unlocked and of a certain level. If there are multiple copies freely available this only applies when *all* of the freely available copies of that item require thieving skills.

\*\* This is a quest item but the quest isn't triggered by adding it.


### Piercing Weapons


| Item Name          | Buy  | Sell | Item Code               | Damage | Bonus        | Free? | Merchants                        |
|:------------------:|:----:|:----:|:-----------------------:|:------:|:------------:|:-----:|:--------------------------------:|
| Admiral's Blade    | 2500 | 500  | It_Pie_Admiral          | 45-100 | Piercing +15 | No    |                                  |
| Buchaneers Sword   | 1600 | 320  | It_Pie_Pirate           | 35-80  | Piercing +5  | No    | Possodino, Mercutio              |
| Captain's Sword    | ???? | 400  | It_Pie_Captain          | 40-90  | Piercing +15 | No    |                                  |
| Corsair's Sword    | 250  | 240  | It_Pie_Corsair          | 25-60  | Piercing +10 | Yes   |                                  |
| Crab Stabber       | 250  | 50   | It_Pie_Crab             | 15-30  | Piercing +10 | No    |                                  |
| Death Knell        | 2250 | 450  | It_Pie_Deathblow        | 45-95  | Piercing +10 | No    |                                  |
| Duelling Epee      | 1500 | 300  | It_Pie_Duel             | 30-70  | Piercing +15 | Yes\* | Possodino, Mercutio              |
| Elegant Scimitar   | 2250 | 450  | It_Sla_LordlyScimitar   | 45-70  | Piercing +20 | No    | Mercutio                         |
| Epee               | 800  | 200  | It_Pie_Epee             | 20-60  | Piercing +15 | No    | Cooper                           |
| Fencing Foil       | 600  | 120  | It_Pie_Fencing          | 20-50  | Piercing +10 | Yes\* |                                  |
| King's Sword       | 2500 | 500  | It_Pie_King             | 45-100 | Piercing +15 | No    |                                  |
| Magnificient Sword | 1900 | 380  | It_Pie_Pomp             | 35-80  | Piercing +20 | No    |                                  |
| Officer's Sword    | 450  | 100  | It_Pie_Officer          | 20-40  | Piercing +10 | No    | Cooper                           |
| Old Sword          | 150  | 30   | It_Pie_Old              | 15-30  | Piercing +5  | Yes   |                                  |
| Rapier             | 1750 | 370  | It_Pie_Rapier           | 40-90  | Piercing +10 | No    | Possodino, Mercutio              |
| Soul Caller        | 2500 | 500  | It_Pie_SoulCaller       | 45-100 | Piercing +15 | No    |                                  |
| Stormthorn         | 250  | 75   | It_Pie_Storm            | 20-30  | Piercing +15 | No    | Cooper                           |
| Sword              | 1100 | 250  | It_Pie_LongSword        | 30-65  | Piercing +10 | No    | Cooper                           |


\* Requires Pickpocket, Lockpick, and/or Monkey Trainer Skills be unlocked and of a certain level. If there are multiple copies freely available this only applies when *all* of the freely available copies of that item require thieving skills.


### Slashing Weapons


| Item Name          | Buy  | Sell | Item Code               | Damage | Bonus        | Free? | Merchants                        |
|:------------------:|:----:|:----:|:-----------------------:|:------:|:------------:|:-----:|:--------------------------------:|
| Buccaneer's Knife  | 250  | 50   | It_Sla_Buccaneer        | 25-30  | Slashing +5  | Yes   |                                  |
| Captain's Sabre    | 1500 | 350  | It_Sla_Captain          | 40-60  | Slashing +10 | No    | Possodino                        |
| Cutlass            | 250  | 50   | It_Sla_Cutlass          | 25-30  | Slashing +5  | Yes   | Stone                            |
| Decapitator        | ???? | 400  | It_Sla_Beheader         | 50-80  | Slashing +10 | No    |                                  |
| Exotic Sabre       | 1875 | 420  | It_Sla_ExoticSabre      | 50-80  | Slashing +20 | No    | Mercutio                         |
| Machete            | 450  | 100  | It_Sla_Machete          | 25-30  | Slashing +10 | Yes   | Stone                            |
| Pirate's Sabre     | 1000 | 250  | It_Sla_PirateSabre      | 35-50  | Slashing +10 | Yes   | Stone, Cooper                    |
| Plank Breaker      | 2100 | 375  | It_Sla_Plankbreaker     | 45-70  | Slashing +5  | No    |                                  |
| Prizetaker         | 1500 | 300  | It_Sla_Prizetaker       | 35-50  | Slashing +15 | Yes   |                                  |
| Reaper             | 1750 | 350  | It_Sla_Mower            | 40-60  | Slashing +10 | No    |                                  |
| Sabre              | 550  | 120  | It_Sla_Sabre            | 30-40  | Slashing +10 | Yes   | Stone                            |
| Scimitar           | 750  | 200  | It_Sla_Scimitar         | 30-40  | Slashing +15 | Yes\* | Cooper                           |
| Steel Grudge       | ???? | 470  | It_Sla_Grudge           | 55-90  | Slashing +5  | No    |                                  |
| Stormwind          | 2000 | 400  | It_Sla_Tempest          | 45-60  | Slashing +15 | No    |                                  |
| Sunken One's Axe   | 50   | 10   | It_Sla_SunkenOne        | 15-25  | Slashing +10 | No    |                                  |
| The Captain's Law  | ???? | 500  | It_Sla_CaptainsLaw      | 55-90  | Slashing +10 | No    |                                  |
| The General (DLC)  | 2100 | 420  | It_Sla_General          | 50-80  | Slashing +20 | No    |                                  |
| Wave Dancer        | 3000 | 600  | It_Sla_Wavedancer       | 60-100 | Slashing +20 | No    |                                  |


\* Requires Pickpocket, Lockpick, and/or Monkey Trainer Skills be unlocked and of a certain level. If there are multiple copies freely available this only applies when *all* of the freely available copies of that item require thieving skills.


### Pistols


Note: This game has a *lot* of translation errors with the gun item names and categorization. Be carful to go by the weapon's *stats* rather than its name (e.g. there is a gun named "Shotgun" which is actually a musket using the "Musket" skill and fires Bullets rather than Lead Shot; likewise "Seaman's Shotgun" is a musket; but "Double-barrelled Shotgun" really is a shotgun ... ). At least I hope it was translation errors because otherwise someone was so clueless about firearms that they must never have played an FPS before... and they probably shouldn't have been involved with naming them.

I am separating them based on which Skill they use (or what sounds logical in the case of Big Olga since its description says it's a pistol).


| Item Name                | Buy  | Sell | Item Code       | Damage | Range | Reload | Bonus       | Ammo Type | Free?     | Merchants                        |
|:------------------------:|:----:|:----:|:---------------:|:------:|:-----:|:------:|:-----------:|:---------:|:---------:|:--------------------------------:|
| Boarding Pistol          | 400  | 80   | It_Pis_Ship     | 50     | 8     | 20s    | Pistols +10 | Bullet    | No        | Thompkins                        |
| Double-barrelled Pistol  | ???? | 350  | It_Pis_Double   | 70     | 8     | 15s    | Pistols +10 | Bullet    | No        |                                  |
| Dueling Pistol           | 1500 | 300  | It_Pis_Duel     | 70     | 8     | 20s    | Pistols +20 | Bullet    | No        | Fernando                         |
| Fat Olga                 | ???? | 350  | It_ShG_FatOlga  | 100    | 8     | 30s    | Pistols +0  | Lead Shot | No        |                                  |
| Officer's Pistol         | 1350 | 270  | It_Pis_Officer  | 65     | 8     | 20s    | Pistols +15 | Bullet    | Yes\*\*   |                                  |
| Pistol                   | 750  | 150  | It_Pis_Single   | 60     | 8     | 20s    | Pistols +20 | Bullet    | Yes       | Barney, Fernando                 |
| Sawn-Off Shotgun         | 3000 | 500  | It_ShP_SawnOff  | 90     | 8     | 30s    | Pistols +5  | Lead Shot | No        | Fernando                         |
| Scatter Pistol           | 500  | 100  | It_ShP_Buckshot | 60     | 8     | 30s    | Pistols +5  | Lead Shot | No        | Barney, Webster                  |
| Silver Iron              | ???? | 380  | It_Pis_Silver   | 80     | 8     | 20s    | Pistols +10 | Bullet    | No        |                                  |
| The Grinder              | 1000 | 250  | It_ShP_Mortar   | 70     | 8     | 30s    | Pistols +5  | Lead Shot | No        | Webster                          |
| The Shredder             | ???? | 400  | It_ShP_Shredder | 80     | 8     | 30s    | Pistols +5  | Lead Shot | No        |                                  |
| The Twins                | 950  | 200  | It_Pis_Twins    | 70     | 8     | 15s    | Pistols +10 | Bullet    | Yes\*\*\* | Webster                          |


\* Requires Pickpocket, Lockpick, and/or Monkey Trainer Skills be unlocked and of a certain level. If there are multiple copies freely available this only applies when *all* of the freely available copies of that item require thieving skills.

\*\* Free in-game but *only* if you have purchased the DLC.

\*\*\* Free in-game but this is missable and only available immediately after starting a new game. if you miss the free one, you'll need to buy one later unless you want to cheat or go without.


### Shotguns


Note: This game has a *lot* of translation errors with the gun item names and categorization. Be carful to go by the weapon's *stats* rather than its name (e.g. there is a gun named "Shotgun" which is actually a musket using the "Musket" skill and fires Bullets rather than Lead Shot; likewise "Seaman's Shotgun" is a musket; but "Double-barrelled Shotgun" really is a shotgun ... ). At least I hope it was translation errors because otherwise someone was so clueless about firearms that they must never have played an FPS before... and they probably shouldn't have been involved with naming them.

There are multiple guns with "Rifle" in the name under the "Shotgun" category as well as a gun with "Shotgun" as the name in the "Muskets" category. I know I'm American but I think they should have at least had some of these guys play FPS games for a couple days before they game up with guns lol... Is a bit like trying to label a greatsword as a finesse weapon; I mean, they're both pointy and you swing them, right? ;-P


| Item Name                | Buy  | Sell | Item Code      | Damage | Range | Reload | Bonus       | Ammo Type | Free? | Merchants                     |
|:------------------------:|:----:|:----:|:--------------:|:------:|:-----:|:------:|:-----------:|:---------:|:-----:|:-----------------------------:|
| Buccaneer's Shotgun      | ???? | 300  | It_ShG_Ship    | 2x80   | 20    | 2s     | ---         | Lead Shot | No    |                               |
| Double-barrelled Shotgun | ???? | 600  | It_ShG_Double  | 2x100  | 20    | 2s     | Shotgun +5  | Lead Shot | No    |                               |
| Fire Cudgel              | ???? | 500  | It_ShG_Fire    | 1x100  | 20    | 2s     | Shotgun +10 | Lead Shot | No    |                               |
| Hunting Rifle            | ???? | 260  | It_ShG_Hunting | 1x80   | 20    | 2s     | Shotgun +10 | Lead Shot | No    |                               |
| Pirate's Rifle           | ???? | 220  | It_ShG_Pirate  | 1x70   | 20    | 2s     | ----        | Lead Shot | No    |                               |
| Thunder Rifle            | ???? | 400  | It_ShG_Thunder | 1x90   | 20    | 2s     | Shotgun +5  | Lead Shot | No    |                               |


\* Requires Pickpocket, Lockpick, and/or Monkey Trainer Skills be unlocked and of a certain level. If there are multiple copies freely available this only applies when *all* of the freely available copies of that item require thieving skills.


### Muskets


Note: This game has a *lot* of translation errors with the gun item names and categorization. Be carful to go by the weapon's *stats* rather than its name (e.g. there is a gun named "Shotgun" which is actually a musket using the "Musket" skill and fires Bullets rather than Lead Shot; likewise "Seaman's Shotgun" is a musket; but "Double-barrelled Shotgun" really is a shotgun ... ). At least I hope it was translation errors because otherwise someone was so clueless about firearms that they must never have played an FPS before... and they probably shouldn't have been involved with naming them.

There are multiple guns with "Rifle" in the name under the "Shotgun" category as well as a gun with "Shotgun" as the name in the "Muskets" category. I know I'm American but I think they should have at least had some of these guys play FPS games for a couple days before they game up with guns lol... Is a bit like trying to label a greatsword as a finesse weapon; I mean, they're both pointy and you swing them, right? ;-P


| Item Name                | Buy  | Sell | Item Code          | Damage | Range | Reload | Bayonet | Bonus       | Ammo   | Free? | Merchants                     |
|:------------------------:|:----:|:----:|:------------------:|:------:|:-----:|:------:|:-------:|:-----------:|:------:|:-----:|:-----------------------------:|
| Calderan Rifle           | ???? | 400  | It_Rif_Caldera     | 1x80   | 26    | 2s     | ---     | Muskets +15 | Bullet | No    |                               |
| Corrientes' Thunderstick | ???? | 450  | It_Rif_Corrientes  | 2x75   | 26    | 2s     | 40      | Muskets +10 | Bullet | No    |                               |
| Double-barrelled Rifle   | ???? | 350  | It_Rif_Double      | 2x70   | 26    | 2s     | ---     | Muskets +10 | Bullet | No    |                               |
| Seaman's Shotgun         | ???? | 250  | It_Rif_Ship        | 1x60   | 26    | 2s     | 40      | Muskets +10 | Bullet | No    |                               |
| Shotgun                  | 750  | 200  | It_Rif_Single      | 1x50   | 26    | 2s     | ---     | Muskets +5  | Bullet | No    | Thompkins                     |
| Storm Rifle              | ???? | 500  | It_Rif_Assault     | 2x80   | 26    | 2s     | 40      | Muskets +10 | Bullet | No    |                               |
| Expedition Shotgun       | ???? | 300  | It_Rif_Expedition  | 1x70   | 26    | 2s     | ---     | Muskets +20 | Bullet | No    |                               |




\* Requires Pickpocket, Lockpick, and/or Monkey Trainer Skills be unlocked and of a certain level. If there are multiple copies freely available this only applies when *all* of the freely available copies of that item require thieving skills.


### Voodoo Items


| Item Name             | Buy  | Sell | Item Code             | Damage | Effects                                    | Free? | Merchants          |
|:---------------------:|:----:|:----:|:---------------------:|:------:|:------------------------------------------:|:-----:|:------------------:|
| Curse Doll            | ???  | 20   | It_VoodooDoll_Curse   | ---    | Curse and weaken enemies                   | Yes   |                    |
| Voodoo Doll           | 50   | 10   | It_VoodooDoll         | ---    | ---                                        | No    | Kapua, Emma, Quinn, Mercutio |
| Sceptre of Fear       | ???? | 200  | It_Scepter_Fear       | 10-20  | Cause Fera and Terror in Enemies           | No    |                    |
| Sceptre of Power      | ???? | 200  | It_ScepterTelekinesis | 10-20  | Incite People/Animals to attack each other | No    |                    |
| Skull Sceptre         | ???? | 200  | It_Scepter_Skull      | 10-20  | Conjure up the Captain's Ghost             | No    |                    |
| Skull Sceptre (Blind) | ???? | 200  | It_Scepter_Skull_Blind| ---    | ---                                        | No    |                    |


### Dirty Tricks


| Item Name           | Buy  | Sell | Item Code  | Effect             | Damage | Range | Reload | Free? | Merchants                        |
|:-------------------:|:----:|:----:|:----------:|:------------------:|:------:|:-----:|:------:|:-----:|:--------------------------------:|
| Fire Oil            | 100  | 20   | It_RockOil | Firebreathing      |        | Melee | 20s    | No    | Flannigan, Quinn, Mercutio       |
| Rock Hard Coconut   | ???? | 5    | It_Coconut | Chance of Enemy KO | 10     | 8     |        | No    |                                  |
| Salt                | 100  | 20   | It_Salt    | Blinds an Enemy    |        | Melee | 10s    | No    | Flannigan, Sophia, Quinn         |
| Sand                | N/A  | N/A  | It_Sand    | Blinds an Enemy    |        | Melee | 10s    | Yes   | Ghiles                           |




### Throwing Weapons


| Item Name          | Buy  | Sell | Item Code              | Damage | Range | Reload | Free? | Merchants                   |
|:------------------:|:----:|:----:|:----------------------:|:------:|:-----:|:------:|:-----:|:---------------------------:|
| Black Dog's Dagger | ???? | ---  | It_Dagger_MAB_BlackDog | 50     | 10    | 10s    | No    |                             |
| Curved Dagger      | 15   | 3    | It_Dagger_Medium       | 30     | 8     | ---    | Yes   | Cooper                      |
| Dagger             | 10   | 2    | It_Dagger_Small        | 20     | 8     | ---    | No    | Thompkins, Stone            |
| Pirates Dagger     | ???? | 4    | It_Dagger_Large        | 40     | 8     | ---    | No    | Possodino, Mercutio         |
| Sacrificial Knife  | ???? | ---  | It_Dagger_Sacrifice    | 60     | 10    | 10s    | No    |                             |
| Spear              | ???? | 25   | It_Thr_Spear           | 40     | ----  | ---    | Yes   | ??                          |
| Spear              | ???? | 25   | It_Thr_Spear_Warrior   | 40     | ----  | ---    | Np    | ---                         |



### Tools & Useable Items

| Item Name                  | Buy  | Sell | Item Code        | Stats and Effects                        | Free? | Merchants                                  |
|:--------------------------:|:----:|:----:|:----------------:|:----------------------------------------:|:-----:|:------------------------------------------:|
| Bomb                       | 250  | 50   | It_Exp_Bomb      | Timed Explosive                          | Yes\* | Thompkins, Fernando                        |
| Bone Saw                   | 100  | 20   | It_Bonesaw       | Harvest Claw & Sickle from some animals  | No  | Ghiles, Flannigan, Sophia, Ranapiri, Quinn, Mercutio |
| Bullet                     | 1    | ---  | It_Ammo_Bullet   | ---                                      | Yes   | Thompkins, Barney, Webster, Fernando, Mercutio |
| Funnel-Shaped Gun Barrel   | ???  | 15   | It_ShP_Barrel    | Gun Part                                 | No    |                                            |
| Hammer                     | ???? | 10   | It_Hammer        | Allows smithing                          | Yes   |                                            |
| Jaw Chisel                 | ???? | 20   | It_JawChisel     | Harveset teeth & tusks from some animals | No    | Ranapiri, Quinn                            |
| Lead Shot                  | 1    | ---  | It_Ammo_Buckshot | ---                                      | Yes   | Thompkins, Barney, Webster, Fernando, Mercutio |
| Lockpick                   | ???? | 20   | It_Lockpick      | Pick locks (REQ: Lockpick skill to use)  | No    |                                            |
| Match Lock                 | ??   | 15   | It_MatchLock     | Gun part                                 | No    |                                            |
| Match Lock                 | ??   | 15   | It_MatchLock     | Gun part                                 | No    |                                            |
| Monkey                     | ???? | 200  | It_Monkey        | Used to steal things, pull levers, etc   | No    | Flannigan, Quinn                           |
| Parrot                     | ???? | 200  | It_Parrot        | Used to distract enemies                 | No    | Flannigan                                  |
| Pickaxe                    | 150  | 30   | It_Pickaxe       | Allows mining for ore                    | No    | Flannigan, Sophia, Quinn, Mercutio         |
| Pistol Barrel              | ???  | 15   | It_Pis_Barrel    | Gun Part                                 | No    |                                            |
| Powder Keg                 | ???  | 25   | It_Exp_PowderKeg | Shootable Explosive                      | Yes\* | Fernando                                   |
| Provisions                 | ???  | 5    | It_Food          | Regeneratiopn 20                         | Yes   | Any bartender: Osorio, Booze, Sophia, etc  |
| Raw Chicken Meat           | ???  | 5    | It_Chicken_Raw   | Fry for Provisions                       | Yes   |                                            |
| Raw Fish                   | ???  | 5    | It_Fish_Raw      | Fry for Provisions                       | Yes   |                                            |
| Raw Meat                   | ???  | 5    | It_Meat_Raw      | Fry for Provisions                       | Yes   |                                            |
| Ritual Knife               | ???? | 50   | It_RitualKnife   | ???                                      | No    | Kapua (Faction)                            |
| Shotgun Barrel             | ???  | 15   | It_Rif_Barrel    | Gun Part                                 | No    |                                            |
| Shotgun Barrel             | ???  | 15   | It_ShG_Barrel    | Gun Part                                 | No    |                                            |
| Shovel                     | 150  | 30   | It_Shovel        | Allows digging up buried treasure        | Yes   | Flannigan, Sophia, Quinn                   |
| Skinning Knife             | 150  | 30   | It_SkinningKnife | Harvest skins from some animals          | Yes   | Ranapiri                                   |
| Sugar                      | ???  | 10   | It_Sugar         | Brewing Component                        | No    |                                            |
| Sword Blank                | ???  | 15   | It_SwordRaw      | Sword Part                               | Yes   |                                            |
| Torch                      | 15   | 3    | It_Torch         | Allows lighting up dark areas            | Yes   | Ghiles, Flannigan, Ranapiri, Quinn, Possodino, Mercutio |
| Wheel Lock                 | ???  | 15   | It_WheelLock     | Gun Part                                 | Yes   |                                            |


\* Requires Pickpocket, Lockpick, and/or Monkey Trainer Skills be unlocked and of a certain level. If there are multiple copies freely available this only applies when *all* of the freely available copies of that item require thieving skills.

### Plants and Ingredients

All of the plant ingredients can be found for free around the world.

| Item Name            | Buy  | Sell | Item Code            | Stats and Effects                        | Merchants                             |
|:--------------------:|:----:|:----:|:--------------------:|:----------------------------------------:|:-------------------------------------:|
| Heros Crown          | ???  | 50   | It_Pl_Perm_Toughness | Bladeproof, Bulletproof, Intimidate +1   | ---                                   |
| Grave Root           | ???  | 50   | It_Pl_Perm_Voodoo    | Black Magic, Death Cult, Ritual +1       | ---                                   |
| Swordthorn           | ???  | 50   | It_Pl_Perm_Blades    | Slashing, Piercing, Throwing +1          | ---                                   |
| Sharpeye             | ???  | 50   | It_Pl_Perm_Firearms  | Muskets, Pistols, Shotguns +1            | ---                                   |
| Jester's Cap         | ???  | 50   | It_Pl_Perm_Cunning   | Dirty Tricks, Thievery, Silver Tongue +1 | ---                                   |
| Black Oleander       | 50   | 10   | It_Pl_Cunning        | Regeneration 5                           | Badriya                               |
| Bloodroot            | 50   | 10   | It_Pl_Toughness      | Regeneration 5                           | Badriya                               |
| Choking Vine         | 50   | 10   | It_Pl_Blades         | Regeneration 5                           | Badriya                               |
| Golden Clover        | 50   | 10   | It_Pl_Gold           | Regeneration 5                           |                                       |
| Powdered Poppy Seeds | 50   | 10   | It_Pl_Firearms       | Regeneration 5                           |                                       |
| Skullflower          | 50   | 10   | It_Pl_Skull          | Regeneration 5                           |                                       |
| Spirit Lily          | 50   | 10   | It_Pl_Voodoo         | Regeneration 5                           | Badriya, Emma                         |


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
| Gorilla Skin         | ???? | 50   | It_At_Fur_Gorilla    | Skinning Knife | Gorilla                                           |                                  |
| Jaguar Heart         | 180  | 45   | It_At_Heart          | Ritual Knife   | Jaguars                                           | Badriya, Ranapiri                |
| Jaguar Skin          | ???  | 40   | It_At_Fur_Jaguar     | Skinning Knife | Jaguars                                           |                                  |
| Panther Paw          | ???  | 25   | It_At_Paw            | ???            | Panthers                                          |                                  |
| Panther Skin         | ???  | 50   | It_At_Fur_Panther    | Skinning Knife | Panthers                                          |                                  |
| Moneky Skull         | 125  | 25   | It_At_MonkeySkull    | Ritual Knife   | Monkeys (passive ones only)                       | Badriya, Ranapiri, Emma          |
| Sand Devil Sensor    | 75   | 15   | It_At_Sensor         | ---            | Sand Devils                                       | Ranapiri                         |
| Skull                | ???  | 12   | It_Skull             | ???            | ???                                               |                                  |
| Sickle               | ???? | 7    | It_At_AntSickle      | Bonesaw        | Termite Workers, Termite Warriors                 |                                  |
| Silverback Skin      | ???? | 60   | It_At_Fur_Silverback | Skinning Knife | Silverback                                        |                                  |
| Teeth                | 50   | 10   | It_At_Teeth          | Jaw Chisel     | Blueclaw Monekys, Claw Monkeys, Gators, Gorillas  | Ranapiri, Kapua, Emma            |
| Tusk                 | 100  | 20   | It_At_Tusk           | Jaw Chisel     | Warthogs                                          | Ranapiri                         |
| Warthog Skin         | ???  | 30   | It_At_Fur_Warthog    | Skinning Knife | Warthogs                                          |                                  |


### Misc Loot

Most of the miscellaneous items can be found for free around the world.

| Item Name              | Buy | Sell | Item Code                       | Stats and Effects                       | Merchants                        |
|:----------------------:|:---:|:----:|:-------------------------------:|:---------------------------------------:|:--------------------------------:|
| Axe                    | --- | 60   | It_Sla_GargoyleSlayer           | ---                                     | --- |
| Black Pearl            | ??? | 120  | It_PearlBlack                   | ---                                     | DiFuego |
| Black Pearl Necklace   | ??? | 500  | It_Ne_PearlBlack                | ---                                     | DiFuego |
| Blacksmith's Hammer    | ??? | 40   | It_SledgeHammer                 | ---                                     | --- |
| Bone                   | ??? | 5    | It_Bone                         | ---                                     | Any natives |
| Bowl                   | ??? | 100  | It_Bowl_Gold                    | ---                                     | --- |
| Bowl                   | ??? | 120  | It_Chalice_Gold                 | ---                                     | --- |
| Bowl                   | ??? | 75   | It_Disc_Gold                    | ---                                     | --- |
| Candlestick            | ??? | 75   | It_Candleholder                 | ---                                     | --- |
| Chisel                 | ??? | 8    | It_Chisel                       | ---                                     | --- |
| Club                   | ??? | 60   | It_Sla_Undead                   | ---                                     | --- |
| Crown                  | ??? | 200  | It_Crown                        | ---                                     | --- |
| Crown                  | ??? | 600  | It_Crown_Zeki                   | ---                                     | --- |
| Decanter               | ??? | 60   | It_Decanter_Silver              | ---                                     | --- |
| Diamond                | ??? | 250  | It_Diamond                      | ---                                     | --- |
| Emerald                | ??? | 75   | It_Emerald                      | ---                                     | --- |
| Fat Purse              | ??? | 100  | It_GoldBag_Large                | ---                                     | --- |
| Flail                  | ??? | 12   | It_Flail                        | ---                                     | --- |
| Fork                   | ??? | 2    | It_Fork                         | ---                                     | --- |
| Gold                   | --- | ---  | It_Gold                         | ---                                     | --- |
| Gold Nugget            | ??? | 20   | It_GoldOre                      | ---                                     | --- |
| Gold Pan               | ??? | 12   | It_GoldPan                      | ---                                     | --- |
| Gold Sceptre           | ??? | 125  | It_Scepter_Skull                | ---                                     | --- |
| Golden Goblet          | ??? | 100  | It_Goblet_Gold                  | ---                                     | --- |
| Golden Plate           | ??? | 110  | It_Plate_Gold                   | ---                                     | --- |
| Hand Axe               | ??? | 5    | It_Chisel_Ind                   | ---                                     | --- |
| Hand Mirror            | ??? | 40   | It_HandMirror                   | ---                                     | --- |
| Idol                   | ??? | 250  | It_Idol_Priest_Gold             | ---                                     | --- |
| Idol                   | ??? | 250  | It_Idol_Titan_Gold              | ---                                     | --- |
| Idol                   | ??? | 250  | It_Idol_Warrior_Gold            | ---                                     | --- |
| Golden Figurine        | ??? | 250  | It_Idol_Warrior_Gold_TAK_Grave  | ---                                     | --- |
| Idol                   | ??? | 500  | It_Idol_Priest_Jade             | ---                                     | --- |
| Idol                   | ??? | 500  | It_Idol_Titan_Jade              | ---                                     | --- |
| Idol                   | ??? | 500  | It_Idol_Warrior_Jade            | ---                                     | --- |
| Jade                   | 25  | 25   | It_Jade                         | ---                                     | Badriya, Emma |
| King's Mask            | ??? | 150  | It_Mask_King                    | ---                                     | --- |
| Knife                  | ??? | 2    | It_Knife                        | ---                                     | --- |
| Ladle                  | ??? | 10   | It_Scoop                        | ---                                     | --- |
| Monkey Statue          | ??? | 100  | It_Statue_Ape                   | ---                                     | --- |
| Oyster Shell           | ??? | 3    | It_Shell                        | Open it for a chance to get a Pearl     | --- |
| Pearl                  | ??? | 50   | It_Pearl                        | ---                                     | DiFuego |
| Pearl Necklace         | ??? | 150  | It_Ne_Pearl                     | ---                                     | DiFuego |
| Pestle                 | ??? | 2    | It_Pestle                       | ---                                     | --- |
| Pipe                   | ??? | 4    | It_Pipe                         | ---                                     | --- |
| Pot                    | ??? | 6    | It_Pot                          | ---                                     | --- |
| Priest's Mask          | ??? | 150  | It_Mask_Priest                  | ---                                     | --- |
| Purse                  | ??? | 50   | It_GoldBag_Medium               | ---                                     | --- |
| Quill                  | ??? | 3    | It_Quill                        | ---                                     | --- |
| Rattle                 | ??? | 12   | It_Rattle                       | ---                                     | --- |
| Ruby                   | ??? | 200  | It_Ruby                         | ---                                     | DiFuego |
| Sapphire               | ??? | 100  | It_Sapphire                     | ---                                     | --- |
| Silver Goblet          | ??? | 50   | It_Goblet_Silver                | ---                                     | --- |
| Silver Plate           | ??? | 50   | It_Plate_Silver                 | ---                                     | --- |
| Skull                  | ??? | 12   | It_Skull                        | ---                                     | --- |
| Small Purse            | ??? | 25   | It_GoldBag_Small                | ---                                     | --- |
| Spoon                  | ??? | 12   | It_Voodoo_Scoop                 | ---                                     | --- |
| Spoon                  | ??? | 2    | It_Spoon                        | ---                                     | --- |
| Spyglass               | ??? | 60   | It_Spyglass                     | ---                                     | --- |
| Tankard                | ??? | 2    | It_Mug                          | ---                                     | --- |
| White Diamond (Akando) | ??? | 300  | It_Diamond_Akando               | ---                                     | --- |
| Red Wine (Sophia)      | 25  | ???  |                                 | ---                                     | Mercutio |


### Legendary Items

Most of these items can be found for free around the world. However, the ones that list a Merchant cannot be found and must be purchased from that merchant to acquire.

See Legendary-Items.md and/or Freebies.md for more information on locating the items.


| Item Name              | Buy  | Island                | Item Code            | Effect               | Merchants                        |
|:----------------------:|:----:|:---------------------:|:--------------------:|:--------------------:|:------------------------:|
| Bottle of Memories     | 2000 | The Sword Coast       | It_Blue_CUL_Bottle   | Death Cult +10       | Kapua         |
| Broken Rattle          | ???  | ???                   | It_Blue_MAG_Rattle   | Black Magic +10      |  |
| Cannonball             | ???  | ???                   | It_Blue_GUN_Ball     | Shotguns +10         | Mercutio |
| Comb With One Tooth    | ???  | ???                   | It_Blue_BLA_Comb     | Blades +1            |  |
| Flask                  | ???  | ???                   | It_Blue_DIR_Flask    | Dirty Tricks +10     |  |
| Hand Mirror            | 2000 | Tacarigua             | It_Blue_SIL_Mirror   | Silver Tongue +10    | Booze          |
| Hangman's Noose        | ???  | ???                   | It_Blue_MUS_Gallow   | Muskets +10          |  |
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
| Snuffbox               | ???  | ???                   | It_Blue_THI_Tabak    | Thievery +10         | Possodino           |
| Voodoo Needle          | ???  | ???                   | It_Blue_PIE_Dagger   | Piercing Weapons +10 | Emma                |



### Maps


| Item Name                  | Buy  | Item Code   | Free? | Location / Merchants                                                    |
|:--------------------------:|:----:|:-----------:|:---:|:-------------------------------------------------------------------------:|
| Map of Caldera             | 200  | ???         | No  | Buy from Possodino                                                        |
| Map of Tacarigua           | ???? | ???         | Yes | Pay Di Fuego or remind him that you need a map to deliver the letter      |
| Map of Sword Coast         | ---  | ???         | Yes | Loot from Sebastiano's Manor or Cave en route to native                   |
| Map of Antigua             | ???  | ???         | ??? | ???                                                                       |
| Map of Treasure Island     | ???? | ???         | ??? | ???                                                                       |
| Map of Maracai Bay         | ???? | ???         | ??? | ???                                                                       |
| Map of Isle of the Dead    | ???? | ???         | ??? | ???                                                                       |
| Map of Island of Thieves   | ???? | ???         | ??? | ???                                                                       |
| Map of Storm Island        | ???? | ???         | ??? | ???                                                                       |




### Quest Items

**WARNING 1: If you are looking through quest item names, you will likely revearl minor or even major spoilers to yourself!**

**WARNING 2: Even if you don't care about spoilers, adding/removing these could break quests.**

This is intended mostly for removing items that are obviously done with but never removed after completion of a quest (e.g. Tower Key after freeing Tahani, Sebastiano's Key after freeing Hawkins, etc). If you fuck up your game by adding / removing things you shouldn't have, then that's on you.


 This might come in handy for example if you have a bugged quest where you can't get the McGuffin that you need to fetch or if you've completed a quest and left behind some garbage quest items cluttering up your inventory.

Some of these items, once added (via console or sometimes even via normal gameplay) cannot be removed, even with the `take` console command. I have tested these and while it only applied to a handfull of items, I thought it warranted a column indicating whether or not you using a `give` command would leave you with a bugged item that you couldn't even remove with console commands - so that's what the last column is all about.


| Item Name                                   | Item Code                                 | Quest Name                       | Triggers Quest ? | 'take' removes? |
|:-------------------------------------------:|:-----------------------------------------:|:--------------------------------:|:----------------:|:---------------:|
| A Knot of Jim's Hair                        | It_Hair_Jim                               |                                  | ???              | Yes             |
| Ancestor's Blood                            | It_Po_AncestorsBlood                      | The Blood of the Ancestors       | ???              | Yes             |
| Bag                                         | It_Bag                                    |                                  | ???              | Yes             |
| Bag of Herbs                                | It_Pouch_Herbs                            |                                  | ???              | Yes             |
| Bakir Voodoo Doll                           | It_VoodooDoll_Bakir                       |                                  | ???              | Yes             |
| Barrel: Fat Olga                            | It_FatOlga_Barrel                         |                                  | ???              | Yes             |
| Barrel: Silver Iron                         | It_SilverIron_Barrel                      |                                  | ???              | Yes             |
| Bartolo's Shotgun                           | It_Rif_Bartolo                            |                                  | ???              | Yes             |
| Bartolo's Shotgun (Broken)                  | It_Rif_Broken_Bartolo                     |                                  | ???              | Yes             |
| Black Dog's Dagger                          | It_Dagger_MAB_BlackDog                    |                                  | ???              | **NO**          |
| Black Feather                               | It_Feather_Kenan_Black                    |                                  | ???              | Yes             |
| Black Lotus                                 | It_BlackLotus_Tao                         |                                  | ???              | Yes             |
| Blue Feather                                | It_Feather_Kenan_Blue                     |                                  | ???              | Yes             |
| Book                                        | It_Wri_Book_1                             |                                  | ???              | Yes             |
| Book                                        | It_Wri_Book_2                             |                                  | ???              | Yes             |
| Book                                        | It_Wri_Book_3                             |                                  | ???              | Yes             |
| Book                                        | It_Wri_Book_Open_1                        |                                  | ???              | Yes             |
| Book                                        | It_Wri_Book_Open_2                        |                                  | ???              | Yes             |
| Book                                        | It_Wri_Book_Open_3                        |                                  | ???              | Yes             |
| Bundle of Plants                            | It_Pouch_Plants                           |                                  | ???              | Yes             |
| Butch Voodoo Doll                           | It_VoodooDoll_Butch                       |                                  | ???              | Yes             |
| Cargo (Sword Coast)                         | It_Crate_Miguel                           |                                  | ???              | Yes             |
| Chest Key                                   | It_Key_Akando                             |                                  | ???              | Yes             |
| Chest Key                                   | It_Key_Basil                              |                                  | ???              | Yes             |
| Claim Ticket                                | It_Wri_Letter_Bond_Paruke                 |                                  | ???              | Yes             |
| Crystal Head                                | It_Wll_Crystal                            |                                  | ???              | Yes             |
| Diary Page 2                                | It_Wri_Letter_Stahlbart_Patty             |                                  | ???              | Yes             |
| Diary Page 3                                | It_Wri_Letter_Stahlbart_SWC               |                                  | ???              | Yes             |
| Diary Page 4                                | It_Wri_Letter_Stahlbart_TAK               |                                  | ???              | Yes             |
| Door Key                                    | It_Key_Donovan                            |                                  | ???              | Yes             |
| Driftwood                                   | It_Driftwood_Jaffer                       |                                  | ???              | Yes             |
| Earth Amulet                                | It_Am_Earth                               |                                  | ???              | Yes             |
| Eldric's Serum                              | It_Secretion_Eldric                       |                                  | ???              | Yes             |
| Engagement Ring                             | It_Ri_Gold_Family_Stahlbart               |                                  | ???              | Yes             |
| Family Heirloom                             | It_Am_Family_Stahlbart                    |                                  | ???              | Yes             |
| Feather                                     | It_Feather_Kalil                          |                                  | ???              | **NO**          |
| Fire Peppers                                | It_Chili_Jamila                           | Fire Peppers                     | Yes              | Yes             |
| Firutaopi                                   | It_Firestew_Jamila                        |                                  | ???              | Yes             |
| Flotsam (Caldera I)                         | It_Crate_Flotsam                          |                                  | ???              | Yes             |
| Foul-Smelling Letter                        | It_Wri_Letter_Crouse                      |                                  | ???              | Yes             |
| Fresh Meat                                  | It_Meat_Raw_Thompkins                     |                                  | ???              | Yes             |
| Freshly Killed Meat                         | It_Meat_Raw_Habib                         |                                  | ???              | Yes             |
| Fruit Basket                                | It_Pouch_Fruits                           |                                  | ???              | Yes             |
| Gargoyle Egg                                | It_At_GargoyleEgg_ANT                     |                                  | ???              | Yes             |
| Gargoyle Egg                                | It_At_GargoyleEgg_IOT                     |                                  | ???              | Yes             |
| Gargoyle Egg                                | It_At_GargoyleEgg_MAB                     |                                  | ???              | Yes             |
| Gargoyle Egg                                | It_At_GargoyleEgg_STI                     |                                  | ???              | Yes             |
| Gargoyle Egg                                | It_At_GargoyleEgg_SWC                     |                                  | ???              | Yes             |
| Gargoyle Egg                                | It_At_GargoyleEgg_TAK                     |                                  | ???              | Yes             |
| Gold Head                                   | It_Wll_Gold                               |                                  | ???              | Yes             |
| Golden Mask                                 | It_Mask_Floyd                             |                                  | ???              | Yes             |
| Golden Mask                                 | It_Mask_MAB_Ghost_01                      |                                  | ???              | Yes             |
| Golden Mask                                 | It_Mask_MAB_Ghost_02                      |                                  | ???              | Yes             |
| Golden Mask                                 | It_Mask_MAB_Ghost_03                      |                                  | ???              | Yes             |
| Golden Mask                                 | It_Mask_MAB_Ghost_04                      |                                  | ???              | Yes             |
| Golden Mask                                 | It_Mask_Sophia                            |                                  | ???              | Yes             |
| Golden Plate                                | It_Plate_Gold_Floyd                       |                                  | ???              | Yes             |
| Golden Statue                               | It_Statue_Floyd                           |                                  | ???              | Yes             |
| Grave Dust                                  | It_GraveAsh_Tao                           |                                  | ???              | Yes             |
| Grave Idol                                  | It_Idol_Malaika_01                        |                                  | ???              | Yes             |
| Grave Idol                                  | It_Idol_Malaika_02                        |                                  | ???              | Yes             |
| Grave Idol                                  | It_Idol_Malaika_03                        |                                  | ???              | Yes             |
| Grip: Fat Olga Grip                         | It_FatOlga_Grip                           |                                  | ???              | Yes             |
| Grip: Silver Iron                           | It_SilverIron_Grip                        |                                  | ???              | Yes             |
| Hat                                         | It_Hat_Morris                             |                                  | ???              | Yes             |
| Head                                        | It_Head_Bounty                            |                                  | ???              | Yes             |
| Idol of Protection                          | It_Idol_Kapua                             |                                  | ???              | Yes             |
| Incriminating Letter                        | It_Wri_Letter_Evidence_Mauregato          |                                  | ???              | Yes             |
| Island Map: Angitua                         | It_Map_ANT                                |                                  | ???              | Yes             |
| Island Map: Caldera                         | It_Map_CRY                                |                                  | ???              | Yes             |
| Island Map: Island of the Dead              | It_Map_IOD                                |                                  | ???              | Yes             |
| Island Map: Island of Thieves               | It_Map_IOT                                |                                  | ???              | Yes             |
| Island Map: Maracai Bay                     | It_Map_MAB                                |                                  | ???              | Yes             |
| Island Map: Storm Island                    | It_Map_STI                                |                                  | ???              | Yes             |
| Island Map: Sword Coast                     | It_Map_SWC                                |                                  | ???              | Yes             |
| Island Map: Tacarigua                       | It_Map_TAK                                |                                  | ???              | Yes             |
| Island Map: Treasure Island                 | It_Map_TRI                                |                                  | ???              | Yes             |
| Jade Head                                   | It_Wll_Jade                               |                                  | ???              | Yes             |
| Jim Voodoo Doll                             | It_VoodooDoll_Jim                         |                                  | ???              | Yes             |
| Key                                         | It_Key_1                                  |                                  | ???              | Yes             |
| Key                                         | It_Key_2                                  |                                  | ???              | Yes             |
| Key                                         | It_Key_3                                  |                                  | ???              | Yes             |
| Key                                         | It_Key_4                                  |                                  | ???              | Yes             |
| Key                                         | It_Key_5                                  |                                  | ???              | Yes             |
| Letter                                      | It_Wri_Letter                             |                                  | ???              | Yes             |
| Letter (unsealed Roquefort/Di Fuego letter) | It_Wri_Letter_Di_Fuego                    |                                  | ???              | Yes             |
| Letter from Booze                           | It_Wri_Letter_Booze                       |                                  | ???              | Yes             |
| Map                                         | It_Wri_Map                                |                                  | ???              | Yes             |
| Mara's Sword                                | It_Pie_Mara                               |                                  | ???              | Yes             |
| Master Scholar's Ring                       | It_Ri_XP                                  | N/A                              | N/A              | If unequipped   |
| Mauregato Voodoo Doll                       | It_VoodooDoll_Mauregato                   |                                  | ???              | Yes             |
| Mauregato's Key                             | It_Key_Mauregato                          |                                  | ???              | Yes             |
| Mauregato's Signet Ring                     | It_Ri_Signet_Mauregato                    |                                  | ???              | Yes             |
| Message in a Bottle (Island of Thieves)     | It_MessageInABottle_Cave_IOT              |                                  | ???              | Yes             |
| Message in a Bottle (Maracai Bay)           | It_MessageInABottle_Cave_MAB              |                                  | ???              | Yes             |
| Message in a Bottle (Storm Island Hill)     | It_MessageInABottle_Hill_STI              |                                  | ???              | Yes             |
| Message in a Bottle (Sword Coast Crouse)    | It_MessageInABottle_Crouse_SWC            |                                  | ???              | Yes             |
| Message in a Bottle (Sword Coast Graveyard) | It_MessageInABottle_Graveyard_SWC         |                                  | ???              | Yes             |
| Message in a Bottle (using does nothing)    | It_MessageInABottle                       |                                  | ???              | Yes             |
| Messenger's Attire                          | It_Vest_Servant                           | Messenger's Attire               | Yes              | Yes             |
| Moluccan Idol                               | It_Statue_Torres                          |                                  | ???              | Yes             |
| Morris's Hat                                | It_Hat_Morris                             |                                  | ???              | Yes             |
| Offerings                                   | It_Paket_Badriya                          |                                  | ???              | Yes             |
| Office Key                                  | It_Key_Mauregato_Office                   |                                  | ???              | Yes             |
| Package                                     | It_Paket                                  |                                  | ???              | Yes             |
| Package of Meat                             | It_Packet_Meat                            |                                  | ???              | Yes             |
| Pass                                        | It_Wri_Letter_Pass_Azuro                  |                                  | ???              | Yes             |
| Pass                                        | It_Wri_Letter_Signet_Azuro                |                                  | ???              | Yes             |
| Piece of Jade                               | It_Jade_Kapua                             |                                  | ???              | Yes             |
| Pitch-Black Pearl                           | It_PearlBlack_Nuri                        |                                  | ???              | Yes             |
| Potion of False Death                       | It_Po_FalseDead_Tao                       |                                  | ???              | Yes             |
| Pouch                                       | It_Pouch                                  |                                  | ???              | Yes             |
| Red Wine                                    | It_Wine_Sophia                            |                                  | ???              | Yes             |
| Room Key                                    | It_Key_Hotel_Garcia                       |                                  | ???              | Yes             |
| Room Key                                    | It_Key_Hotel_Player                       |                                  | ???              | Yes             |
| Rusty Nail                                  | It_Nails_Patty                            |                                  | ???              | Yes             |
| Sack of Mushrooms                           | It_Pouch_Mushrooms                        |                                  | ???              | Yes             |
| Sack of Sugar                               | It_Pouch_Sugar                            |                                  | ???              | Yes             |
| Sacrificial Knife                           | It_Dagger_Sacrifice                       |                                  | ???              | **NO**          |
| Sealed Letter (from Roquefort/Di Fuego)     | It_Sealed_Letter_Di_Fuego                 |                                  | ???              | Yes             |
| Sebastiano Voodoo Doll                      | It_VoodooDoll_Sebastiano                  |                                  | ???              | Yes             |
| Sebastiano's Hairbrush                      | It_Hairbrush_Sebastiano                   |                                  | ???              | Yes             |
| Sebastino'a Key                             | It_Key_Hawkins                            |                                  | ???              | Yes             |
| Shaganumbi Idol                             | It_Idol_Shaganumbi                        | Shaganumbi Idol Found            | ???              | Yes             |
| Shirt                                       | It_Shirt_Jaffer                           |                                  | ???              | Yes             |
| Silky, Shiny Hair                           | It_Hair_Sebastiano                        |                                  | ???              | Yes             |
| Skull of an Undead Animal                   | It_Skull_Silverback                       |                                  | ???              | Yes             |
| Small Coffer                                | It_Casket                                 |                                  | ???              | Yes             |
| Small Package                               | It_Paket_Mac                              |                                  | ???              | Yes             |
| Spear of the Warrior                        | It_Spear_Kusko                            |                                  | ???              | Yes             |
| Stand of Bakir's Hair                       | It_Hair_Bakir                             |                                  | ???              | Yes             |
| Steelbards's Hat                            | It_Hat_Stahlbart                          |                                  | ???              | If unequipped   |
| Steelbeard's Diary                          | It_Wri_Book_StahlbartsDiary               | Steelbeard's Diary               | Yes              | Yes             |
| Steelbeard's Key                            | It_Key_Stahlbart_TAK                      |                                  | ???              | Yes             |
| Steelbeard's Sabre                          | It_Sla_Steelbeard                         |                                  | ???              | Yes             |
| Storage Barrel                              | It_Barrel_Mercutio                        |                                  | ???              | Yes             |
| Strand of Butch's Hair                      | It_Hair_Butch                             |                                  | ???              | Yes             |
| Sword Blade: King's Sword                   | It_KingSword_Blade                        |                                  | ???              | Yes             |
| Sword Blade: Soul Caller                    | It_SoulCaller_Blade                       |                                  | ???              | Yes             |
| Sword Blade: Stormwind                      | It_Tempest_Blade                          |                                  | ???              | Yes             |
| Sword Blade: Wave Dancer                    | It_Wavedancer_Blade                       |                                  | ???              | Yes             |
| Sword Hilt: King's Sword                    | It_KingSword_Hilt                         |                                  | ???              | Yes             |
| Sword Hilt: Soul Caller                     | It_SoulCaller_Hilt                        |                                  | ???              | Yes             |
| Sword Hilt: Stormwind                       | It_Tempest_Hilt                           |                                  | ???              | Yes             |
| Sword Hilt: Wave Dancer                     | It_Wavedancer_Hilt                        |                                  | ???              | Yes             |
| Tavern Key                                  | It_Key_Spencer                            |                                  | ???              | Yes             |
| Tek Shaballa                                | It_Ri_TekShaballa                         |                                  | ???              | Yes             |
| The Black Hunter's Paws                     | It_Paw_Datu                               |                                  | ???              | Yes             |
| Thief's Bone Hand                           | It_ScepterTelekinesis                     |                                  | ???              | Yes             |
| Titan Harpoon                               | It_Thr_Titan                              |                                  | ???              | **NO**          |
| Tower Key                                   | It_Key_Torres                             |                                  | ???              | Yes             |
| Treasure Map: Angitua - Beach               | It_TreasureMap_ANT_Beach                  |                                  | ???              | Yes             |
| Treasure Map: Angitua - Carcia              | It_TreasureMap_ANT_Garcia                 |                                  | ???              | Yes             |
| Treasure Map: Angitua - Cave                | It_TreasureMap_ANT_Cave                   |                                  | ???              | Yes             |
| Treasure Map: Angitua - Gibson              | It_TreasureMap_ANT_Gibson                 |                                  | ???              | Yes             |
| Treasure Map: Angitua - Grotto              | It_TreasureMap_ANT_Grotto                 |                                  | ???              | Yes             |
| Treasure Map: Angitua - Nesir               | It_TreasureMap_ANT_Nesir                  |                                  | ???              | Yes             |
| Treasure Map: Caldera - Beach               | It_TreasureMap_CRY_Beach                  |                                  | ???              | Yes             |
| Treasure Map: Isle of the Dead - Grave      | It_TreasureMap_IOD_Grave                  |                                  | ???              | Yes             |
| Treasure Map: Isle of Thieves - Beach       | It_TreasureMap_IOT_Beach                  |                                  | ???              | Yes             |
| Treasure Map: Isle of Thieves - Cave        | It_TreasureMap_IOT_Cave                   |                                  | ???              | Yes             |
| Treasure Map: Isle of Thieves - Valley      | It_TreasureMap_IOT_Valley                 |                                  | ???              | Yes             |
| Treasure Map: Maracai Bay - Beach           | It_TreasureMap_MAB_Beach                  |                                  | ???              | Yes             |
| Treasure Map: Maracai Bay - Cave            | It_TreasureMap_MAB_Cave                   |                                  | ???              | Yes             |
| Treasure Map: Maracai Bay - Jungle          | It_TreasureMap_MAB_Jungle                 |                                  | ???              | Yes             |
| Treasure Map: Maracai Bay - Valley          | It_TreasureMap_MAB_Valley                 |                                  | ???              | Yes             |
| Treasure Map: Storm Island - Hill           | It_TreasureMap_STI_Hill                   |                                  | ???              | Yes             |
| Treasure Map: Sword Coast - Beach           | It_TreasureMap_SWC_Beach                  |                                  | ???              | Yes             |
| Treasure Map: Sword Coast - Fall            | It_TreasureMap_SWC_Fall                   |                                  | ???              | Yes             |
| Treasure Map: Sword Coast - Graveyard       | It_TreasureMap_SWC_Graveyard              |                                  | ???              | Yes             |
| Treasure Map: Sword Coast - Jaguar          | It_TreasureMap_SWC_Jaguar                 |                                  | ???              | Yes             |
| Treasure Map: Sword Coast - Steelbeard      | It_TreasureMap_SWC_Stahlbart              |                                  | ???              | Yes             |
| Treasure Map: Tacarigua - O'Brian           | It_TreasureMap_TAK_OBrian                 |                                  | ???              | Yes             |
| Treasure Map: Tacarigua - Peta              | It_TreasureMap_TAK_Pete                   |                                  | ???              | Yes             |
| Treasure Map: Treasure Island - Ramsay      | It_TreasureMap_TRI_Ramsay                 |                                  | ???              | Yes             |
| Treasure Map: Treasure Island - Sokbart     | It_TreasureMap_TRI_Sokbart                |                                  | ???              | Yes             |
| Treasure Map: Treasure Island - Stubbings   | It_TreasureMap_TRI_Stubbings              |                                  | ???              | Yes             |
| Treasure Map: Treasure Island - Wallace     | It_TreasureMap_TRI_Wallace                |                                  | ???              | Yes             |
| Vine                                        | It_Liana_Jaffer                           |                                  | ???              | Yes             |
| Weathered Chest Key                         | It_Key_Stahlbart_TRI                      |                                  | ???              | Yes             |
| White Feather                               | It_Feather_Kenan_White                    |                                  | ???              | Yes             |
| Wig                                         | It_Peruke_Mauregato                       |                                  | ???              | Yes             |
| Wilson's Pistol                             | It_Pis_Wilson                             |                                  | ???              | Yes             |
| World Map (no inventory item)               | It_Map_World                              |                                  | ???              | Yes             |
| Yellow Feather                              | It_Feather_Kenan_Yellow                   |                                  | ???              | Yes             |
| Zaalu Voodoo Doll                           | It_VoodooDoll_Zaalu                       |                                  | ???              | Yes             |
| Zaalu's Hair                                | It_Hair_Zaalu                             |                                  | ???              | Yes             |




## Sources

This was mostly for console codes. I put much of the other info together from scratch on my own.

1. [Gamefaqs: Risen 2: Dark Waters – Non-Quest Item Console Codes](https://gamefaqs.gamespot.com/pc/622499-risen-2-dark-waters/faqs/68862)
2. [Megagames: Risen 2: Dark Waters](https://megagames.com/cheats/risen-2-dark-waters?noradio=1)
3. [Gamefaqs Boards: Console commands...](https://gamefaqs.gamespot.com/boards/622499-risen-2-dark-waters/62702484)
4. [Gamefaqs Boards: List of console commands](https://gamefaqs.gamespot.com/boards/622499-risen-2-dark-waters/62714857)
5. [Gamefaqs Boards: Revised item list 1](https://gamefaqs.gamespot.com/boards/622499-risen-2-dark-waters/62850789)
6. [Gamefaqs Boards: Revised item list 2](https://gamefaqs.gamespot.com/boards/622499-risen-2-dark-waters/62850776)

Some of the cheat codes I found out by "cheating" and using:

    # get item code from game binary
    strings Risen.exe| grep -P '\bIt_\w+'


others I found by guessing and testing it on the console (e.g. getting lucky) or by taking a starting prefix e.g. "It_Key_" and then hitting `Tab` key to cycle through available options.
