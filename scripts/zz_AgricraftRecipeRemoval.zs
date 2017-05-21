import minetweaker.item.IItemStack;

//Recipe Removal of Broken AgriCraft blocks
recipes.remove(<agricraft:water_tank>);
recipes.remove(<agricraft:water_channel_normal>);
recipes.remove(<agricraft:water_channel_full>);
recipes.remove(<agricraft:water_channel_valve>);
recipes.remove(<agricraft:grate>);
recipes.remove(<agricraft:sprinkler>);

/*
AgriCraft to Mystical Agriculture Conversion Recipes. We're defining two arrays. One is the AgriCraft crop name, the second is the Mystical Agriculture seed item. They must be in the same order for this to work right. Botania Flowers are not included. They will be in their own section below.
*/

var AGRI_CROPS = ["copper_plant","blitz_plant","aurigold_plant","bonebloom_plant","quartzanthemum_plant","blizz_plant","nitorwart_plant","witherweed_plant","enderbore_plant","redstodendron_plant","bronze_plant","enderium_plant","silver","iridium_plant","coal_plant","mithril_plant","steel","ferranium_plant","constantan_plant","emeryllis_plant","lead_plant","basalz_plant","rottendendron_plant","signalum_plant","tin","nickel_plant","clayanthus_plant","platinum_plant","scablazious_plant","aluminum_plant","electrum_plant","lumium_plant","eyengium_plant","uniflorghast_plant","lapender_plant","invar_plant","slimeflower_plant","heleatherus_plant","boom_plant","diamahlia_plant","prismarine_plant"] as string[];
var MyAGR_PLANTS = [<mysticalagriculture:copper_seeds>,<mysticalagriculture:blitz_seeds>,<mysticalagriculture:gold_seeds>,<mysticalagriculture:skeleton_seeds>,<mysticalagriculture:nether_quartz_seeds>,<mysticalagriculture:blizz_seeds>,<mysticalagriculture:glowstone_seeds>,<mysticalagriculture:wither_skeleton_seeds>,<mysticalagriculture:enderman_seeds>,<mysticalagriculture:redstone_seeds>,<mysticalagriculture:bronze_seeds>,<mysticalagriculture:enderium_seeds>,<mysticalagriculture:silver_seeds>,<mysticalagriculture:iridium_seeds>,<mysticalagriculture:coal_seeds>,<mysticalagriculture:mithril_seeds>,<mysticalagriculture:steel_seeds>,<mysticalagriculture:iron_seeds>,<mysticalagriculture:constantan_seeds>,<mysticalagriculture:emerald_seeds>,<mysticalagriculture:lead_seeds>,<mysticalagriculture:basalz_seeds>,<mysticalagriculture:zombie_seeds>,<mysticalagriculture:signalum_seeds>,<mysticalagriculture:tin_seeds>,<mysticalagriculture:nickel_seeds>,<mysticalagriculture:water_seeds>,<mysticalagriculture:platinum_seeds>,<mysticalagriculture:blaze_seeds>,<mysticalagriculture:aluminum_seeds>,<mysticalagriculture:electrum_seeds>,<mysticalagriculture:lumium_seeds>,<mysticalagriculture:spider_seeds>,<mysticalagriculture:ghast_seeds>,<mysticalagriculture:lapis_lazuli_seeds>,<mysticalagriculture:invar_seeds>,<mysticalagriculture:slime_seeds>,<mysticalagriculture:cow_seeds>,<mysticalagriculture:creeper_seeds>,<mysticalagriculture:diamond_seeds>,<mysticalagriculture:guardian_seeds>] as IItemStack[];

for i, plant in MyAGR_PLANTS {

var to = plant;
var from = <agricraft:agri_seed>.onlyWithTag({agri_seed: AGRI_CROPS[i]});

recipes.addShapeless(to * 1, [from]);
}

//Now for Botania Plants Seeds
var AGRI_BOTANIA_CROPS = ["magenta", "brown","blue","yellow","cyan","light_blue","white","lime","black","light_gray","red","orange","pink","green","purple","gray"] as string[];
var MysticalFlowerSeed = <mysticalagriculture:mystical_flower_seeds>;

for color in AGRI_BOTANIA_CROPS {
recipes.addShapeless(MysticalFlowerSeed * 1, [<agricraft:agri_seed>.onlyWithTag({agri_seed: "botania_" + color + "_plant"})]);
}