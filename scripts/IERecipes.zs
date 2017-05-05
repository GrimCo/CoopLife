import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;
//mods.immersiveengineering.Mixer;

//This is Waiting on IE version 58
//mods.immersiveengineering.Mixer.addRecipe(<liquid:crystaloil> * 1000, <liquid:oil> * 1000, [<actuallyadditions:itemMisc:23>], 2500);
//mods.immersiveengineering.Mixer.addRecipe(<liquid:empoweredoil> * 1000, <liquid:crystaloil> * 1000, [<actuallyadditions:itemMisc:24>], 2500);
//mods.immersiveengineering.Mixer.addRecipe(<liquid:liquid_fertilizer> * 1000, <liquid:water> * 1000, [<hatchery:manure_block>], 2500);
//mods.immersiveengineering.Mixer.addRecipe(<liquid:liquid_fertilizer> * 100, <liquid:water> * 100, [<hatchery:chickenmanure>], 2500);

mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:liquid_fertilizer> * 75, <hatchery:chickenmanure>,2500);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:liquid_fertilizer> * 750, <hatchery:manure_block>,2500);

var DYE_COLORS = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IIngredient[];
	
for i, dye in DYE_COLORS {
	
	var powder = <chisel:concrete_powder>.definition.makeStack(i);
	var block = <chisel:concrete>.definition.makeStack(i);

mods.immersiveengineering.BottlingMachine.addRecipe(block, powder, <liquid:water> * 10);

}