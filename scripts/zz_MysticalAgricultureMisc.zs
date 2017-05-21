//Crafting recipe for Prosperity Blocks
//(so we don't need worldgen)
recipes.addShaped(<mysticalagriculture:prosperity_block>,
	[[<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>],
	[<ore:nuggetSilver>, <ore:stone>, <ore:nuggetSilver>],
	[<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>]]);

//Adding Infernium Essence to the grass drop tables
vanilla.seeds.addSeed(<mysticalagriculture:inferium_essence>.weight(50));