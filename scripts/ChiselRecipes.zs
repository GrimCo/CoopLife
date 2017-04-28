//mods.chisel.Groups;

var meta6 = [0,1,2,3,4,5] as int[];
var meta5 = [1,2,3,4,5] as int[];
var meta5b = [0,1,3,4,5] as int[];

mods.chisel.Groups.addGroup("abyssal");
mods.chisel.Groups.addVariation("abyssal", <railcraft:generic:8>);
for i in meta6 {
	var block = <railcraft:brick_abyssal>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("abyssal", block);
}

mods.chisel.Groups.addGroup("bleachedBone");
for i in meta6 {
	var block = <railcraft:brick_bleachedbone>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("bleachedBone", block);
}

mods.chisel.Groups.addGroup("bloodStained");
for i in meta6 {
	var block = <railcraft:brick_bloodstained>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("bloodStained", block);
}

mods.chisel.Groups.addGroup("frostBound");
for i in meta6 {
	var block = <railcraft:brick_frostbound>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("frostBound", block);
}

mods.chisel.Groups.addGroup("infernal");
for i in meta6 {
	var block = <railcraft:brick_infernal>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("infernal", block);
}


mods.chisel.Groups.addGroup("quarried");
mods.chisel.Groups.addVariation("quarried", <railcraft:generic:9>);
for i in meta6 {
	var block = <railcraft:brick_quarried>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("quarried", block);
}

mods.chisel.Groups.addGroup("sandy");
for i in meta6 {
	var block = <railcraft:brick_sandy>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("sandy", block);
}

mods.chisel.Groups.addGroup("redSandy");
for i in meta6 {
	var block = <railcraft:brick_red_sandy>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("redSandy", block);
}

mods.chisel.Groups.addGroup("netherStone");
for i in meta5 {
	var block = <railcraft:brick_red_nether>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("netherStone", block);
}

mods.chisel.Groups.addGroup("pearlized");
for i in meta6 {
	var block = <railcraft:brick_pearlized>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("pearlized", block);
}

//The Following are Variants of Vanilla Stone Types
//Andesite
for i in meta5b {
	var block = <railcraft:brick_andesite>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("andesite", block);
}
//Diorite
for i in meta5b {
	var block = <railcraft:brick_diorite>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("diorite", block);
}
//Granite
for i in meta5b {
	var block = <railcraft:brick_granite>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("granite", block);
}
//Netherbrick
for i in meta5 {
	var block = <railcraft:brick_nether>.definition.makeStack(i);
	mods.chisel.Groups.addVariation("netherbrick", block);
}