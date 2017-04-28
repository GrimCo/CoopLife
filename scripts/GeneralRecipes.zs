//Recipe Removals
recipes.remove(<extrautils2:itembuilderswand>);
recipes.remove(<craftingtableiv:craftingtableiv>);
recipes.remove(<hatchery:nest>);
recipes.remove(<forestry:stamps:3>);
recipes.remove(<forestry:stamps:2>);
recipes.remove(<forestry:stamps:1>);
recipes.remove(<forestry:stamps>);
recipes.remove(<forestry:letters>);

//Vanilla
//Convert Blaze Powder to Blaze Rods
recipes.addShaped(<minecraft:blaze_rod>,
	[[<minecraft:blaze_powder>],
	[<minecraft:blaze_powder>],
	[<minecraft:blaze_powder>]]);
//Convert Wheat into Seeds
recipes.addShapeless(<minecraft:wheat_seeds>,[<minecraft:wheat>]);
//Name Tags
recipes.addShaped(<minecraft:name_tag>, [[null, null, <ore:string>], [null, <thermalfoundation:material:832>, null], [<ore:paper>, null, null]]);
recipes.addShaped(<minecraft:name_tag>, [[null, null, <ore:string>], [null, <ore:slimeball>, null], [<ore:paper>, null, null]]);

//Actually Additions
//Craft 1 Black Quartz with 1 Nether Quartz and either Coal or Charcoal
recipes.addShapeless(<actuallyadditions:itemMisc:5>,[<minecraft:quartz>,<minecraft:coal:*>]);
//Craft 2 Dough from 3 Wheat
recipes.addShaped(<actuallyadditions:itemMisc:4>,
	[[<minecraft:wheat>, <minecraft:wheat>],
	[<minecraft:wheat>, null]]);

//Botania
//Craftable Overgrowth Seeds
recipes.addShaped(<botania:overgrowthSeed>, 
	[[null, <minecraft:dye:15>, null],
	[<minecraft:gold_nugget>, <minecraft:wheat_seeds>, <minecraft:gold_nugget>],
	[null, <minecraft:dye:15>, null]]);

//Chickens and Hatchery
//Convert Manure into Fertilizer
recipes.addShaped(<forestry:fertilizerCompound> * 3,
	[[<ore:manure>, <ore:manure>, <ore:manure>],
	[<ore:dustWood>, <ore:dustWood>, <ore:dustWood>],
	[<ore:manure>, <ore:manure>, <ore:manure>]]);
//Recipe for Log and Flint Chickens	
recipes.addShapeless(<chickens:spawn_egg:108>, [<ore:listAllegg>, <ore:logWood>]);
recipes.addShapeless(<chickens:spawn_egg:101>, [<ore:listAllegg>, <minecraft:flint>]);
//Craft Obsidian directly from Water and Lava eggs
recipes.addShapeless(<minecraft:obsidian>, [<chickens:liquid_egg>, <chickens:liquid_egg:1>]);
//Cheaper Nest Recipe
recipes.addShaped(<hatchery:nest>, [[<ore:cropWheat>, null, <ore:cropWheat>], [<ore:stickWood>, <ore:cropWheat>, <ore:stickWood>]]);

//Forestry
//Stamp Recipes without Bee Products
recipes.addShaped(<forestry:stamps:3> * 9, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:paper>, <ore:paper>, <ore:paper>], [null, <ore:slimeball>, null]]);
recipes.addShaped(<forestry:stamps:2> * 9, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [<ore:paper>, <ore:paper>, <ore:paper>], [null, <ore:slimeball>, null]]);
recipes.addShaped(<forestry:stamps:1> * 9, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<ore:paper>, <ore:paper>, <ore:paper>], [null, <ore:slimeball>, null]]);
recipes.addShaped(<forestry:stamps> * 9, [[<ore:gemApatite>, <ore:gemApatite>, <ore:gemApatite>], [<ore:paper>, <ore:paper>, <ore:paper>], [null, <ore:slimeball>, null]]);
//Cheaper Letter
recipes.addShaped(<forestry:letters>, [[<ore:paper>, <ore:slimeball>]]);

//Thermal Foundation
//Convert Rosin into Slimeballs for recipes that don't use the oreDictionary
recipes.addShapeless(<minecraft:slime_ball>, [<thermalfoundation:material:832>]);
	
//Railcraft
//Admin Feeder Unit since there is no RF one *cough* 
recipes.addShaped(<railcraft:charge_feeder:1>,
	[[<ore:plateSteel>,<ore:ingotCopper>,<ore:plateSteel>],
	[<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>],
	[<ore:plateSteel>,<ore:ingotCopper>,<ore:plateSteel>]]);
//Railcraft Crushed Obsidian, Prevents Spawns, looks nice
recipes.addShaped(<railcraft:generic:7> * 2,
	[[null, <ore:dustObsidian>, null],
	[<ore:dustObsidian>, <minecraft:gravel>, <ore:dustObsidian>],
	[null, <ore:dustObsidian>, null]]);