import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;


mods.forestry.Carpenter.addRecipe(<forestry:oakStick> * 2,
	[[ <ore:logWood>],[<ore:logWood>]],20,<liquid:creosote> * 200);
	
mods.forestry.Carpenter.addRecipe(<forestry:oakStick> * 2,
	[[ <ore:logWood>],[<ore:logWood>]],20,<liquid:plantoil> * 150);
	
mods.forestry.Carpenter.addRecipe(<forestry:oakStick> * 2,
	[[ <ore:logWood>],[<ore:logWood>]],20,<liquid:canolaoil> * 150);
	
mods.forestry.Carpenter.addRecipe(<forestry:escritoire>,
	[[ <ore:plankWood>, null, null],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, null, <ore:plankWood>]], 60, <liquid:creosote> * 1000);
	
mods.forestry.Carpenter.addRecipe(<forestry:escritoire>,
	[[ <ore:plankWood>, null, null],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, null, <ore:plankWood>]], 60, <liquid:plantoil> * 750);
	
mods.forestry.Carpenter.addRecipe(<forestry:escritoire>,
	[[ <ore:plankWood>, null, null],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, null, <ore:plankWood>]], 60, <liquid:canolaoil> * 750);
	
mods.forestry.Carpenter.addRecipe(<forestry:impregnatedCasing>,
	[[ <ore:logWood>, <ore:logWood>, <ore:logWood>],
	[<ore:logWood>, null, <ore:logWood>],
	[<ore:logWood>, <ore:logWood>, <ore:logWood>]], 30, <liquid:creosote> * 500);
	
mods.forestry.Carpenter.addRecipe(<forestry:impregnatedCasing>,
	[[ <ore:logWood>, <ore:logWood>, <ore:logWood>],
	[<ore:logWood>, null, <ore:logWood>],
	[<ore:logWood>, <ore:logWood>, <ore:logWood>]], 30, <liquid:canolaoil> * 375);
	
mods.forestry.Carpenter.addRecipe(<forestry:impregnatedCasing>,
	[[ <ore:logWood>, <ore:logWood>, <ore:logWood>],
	[<ore:logWood>, null, <ore:logWood>],
	[<ore:logWood>, <ore:logWood>, <ore:logWood>]], 30, <liquid:plantoil> * 375);
	
mods.forestry.Carpenter.addRecipe(<immersiveengineering:treatedWood:0> * 8,
	[[ <ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, null, <ore:plankWood>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]], 20, <liquid:creosote> * 750);
	
var DYE_COLORS = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IIngredient[];
	
for i, dye in DYE_COLORS {
	
	var powder = <chisel:concrete_powder>.definition.makeStack(i);
	var block = <chisel:concrete>.definition.makeStack(i);

mods.forestry.Carpenter.addRecipe(block * 8, 
	[[ powder, powder, powder],
	[powder, null, powder],
	[powder, powder, powder]], 20, <liquid:water> * 100);	
	
mods.forestry.Carpenter.addRecipe(block * 8,
	[[<ore:powderConcrete>,<ore:powderConcrete>,<ore:powderConcrete>],
	[<ore:powderConcrete>, dye, <ore:powderConcrete>],
	[<ore:powderConcrete>,<ore:powderConcrete>,<ore:powderConcrete>]], 20, <liquid:water> * 100);
	
mods.forestry.Carpenter.addRecipe(block * 8,
	[[<ore:gravel>, <ore:sand>, <ore:gravel>],
	[<ore:sand>, dye, <ore:sand>],
	[<ore:gravel>, <ore:sand>, <ore:gravel>]], 20, <liquid:water> * 100);
}
	
mods.forestry.Squeezer.addRecipe(<liquid:liquid_fertilizer> * 75, [<hatchery:chickenmanure>], 20);	
mods.forestry.Squeezer.addRecipe(<liquid:liquid_fertilizer> * 750,[<hatchery:manure_block>], 20);