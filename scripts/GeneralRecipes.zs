import minetweaker.item.IItemStack;

//Recipe Removals
recipes.remove(<extrautils2:itembuilderswand>);
recipes.remove(<hatchery:nest>);
recipes.remove(<forestry:stamps:3>);
recipes.remove(<forestry:stamps:2>);
recipes.remove(<forestry:stamps:1>);
recipes.remove(<forestry:stamps>);
recipes.remove(<forestry:letters>);
recipes.remove(<harvestcraft:market>);
<harvestcraft:market>.addTooltip(format.bold("Recipe disabled due to crash"));
recipes.remove(<harvestcraft:shippingbin>);
<harvestcraft:shippingbin>.addTooltip(format.bold("Recipe disabled due to crash"));

//Vanilla
//Convert Blaze Powder to Blaze Rods
recipes.addShaped(<minecraft:blaze_rod>,
	[[<minecraft:blaze_powder>],
	[<minecraft:blaze_powder>],
	[<minecraft:blaze_powder>]]);
	
//Convert Wheat into Seeds
recipes.addShapeless(<minecraft:wheat_seeds>,[<minecraft:wheat>]);

//Carrot to Carrot Seeds
recipes.addShapeless(<agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "carrot_plant", agri_growth: 1 as byte}),[<minecraft:carrot>]);

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

//Spawner Shards
recipes.addShaped(<actuallyadditions:itemMisc:20>,
	[[<darkutils:material:0>,<minecraft:iron_bars>,<darkutils:material:0>],
	[<minecraft:iron_bars>, <ore:slimeball>, <minecraft:iron_bars>],
	[<darkutils:material:0>,<minecraft:iron_bars>,<darkutils:material:0>]]);	

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
	
furnace.setFuel(<chickens:liquid_egg:1>,20000);
	
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
	
//Railcraft Creosote Wood Block Recipe
recipes.addShapeless(<railcraft:generic:5>, [<forge:bucketFilled>.withTag({FluidName: "creosote", Amount: 1000}),<ore:logWood>]);

//AgriCraft
//Here we go...
var nuggetMeta = [0,1,2,3,4,5,6,7,8,9,10,11,12] as int[];
for i in nuggetMeta {
var item = <agricraft:agri_nugget>.definition.makeStack(i);
recipes.remove(item);
}

//And for good measure make existing ones usable
<ore:nuggetEmerald>.add(<agricraft:agri_nugget:0>);
<ore:nuggetDiamond>.add(<agricraft:agri_nugget:1>);
<ore:nuggetQuartz>.add(<agricraft:agri_nugget:2>);
<ore:nuggetIron>.add(<agricraft:agri_nugget:3>);
<ore:nuggetCopper>.add(<agricraft:agri_nugget:4>);
<ore:nuggetTin>.add(<agricraft:agri_nugget:5>);
<ore:nuggetLead>.add(<agricraft:agri_nugget:6>);
<ore:nuggetSilver>.add(<agricraft:agri_nugget:7>);
<ore:nuggetAluminum>.add(<agricraft:agri_nugget:8>);
<ore:nuggetNickel>.add(<agricraft:agri_nugget:9>);
<ore:nuggetPlatinum>.add(<agricraft:agri_nugget:10>);

//Immersive Engineering
//Wires for all the Shears
var shears = [<botania:manasteelShears>,<botania:elementiumShears>,<railcraft:tool_shears_steel>,<thermalfoundation:tool.shears_wood>,<thermalfoundation:tool.shears_stone>,<thermalfoundation:tool.shears_diamond>,<thermalfoundation:tool.shears_gold>,<thermalfoundation:tool.shears_copper>,<thermalfoundation:tool.shears_tin>,<thermalfoundation:tool.shears_silver>,<thermalfoundation:tool.shears_lead>,<thermalfoundation:tool.shears_nickel>,<thermalfoundation:tool.shears_platinum>,<thermalfoundation:tool.shears_electrum>,<thermalfoundation:tool.shears_invar>,<thermalfoundation:tool.shears_bronze>] as IItemStack[];

for shear in shears {
	var tool = shear;	
	recipes.addShapeless(<immersiveengineering:material:20>,[<ore:plateCopper>, tool.anyDamage().transformDamage()]);
	recipes.addShapeless(<immersiveengineering:material:21>,[<ore:plateElectrum>, tool.anyDamage().transformDamage()]);
	recipes.addShapeless(<immersiveengineering:material:22>,[<ore:plateAluminum>, tool.anyDamage().transformDamage()]);
	recipes.addShapeless(<immersiveengineering:material:23>,[<ore:plateSteel>, tool.anyDamage().transformDamage()]);
}
