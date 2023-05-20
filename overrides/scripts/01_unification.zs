import mods.jei.JEI;

# Remove gear crafting
mods.unidict.removalByKind.get("Crafting").remove("gear");
recipes.remove(<thermalfoundation:material:26>);
recipes.remove(<thermalfoundation:material:27>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:25>, <liquid:gold>);

# Remove duplicate gears
JEI.removeAndHide(<appliedenergistics2:material:40>);
JEI.removeAndHide(<buildcraftcore:gear_wood>);
JEI.removeAndHide(<buildcraftcore:gear_stone>);
JEI.removeAndHide(<buildcraftcore:gear_diamond>);

# Gear recipes to keep (this might be a stupid way to do it)
recipes.addShaped(<thermalfoundation:material:295>, [[null, <ore:ingotEnderium>, null], [<ore:ingotEnderium>, <ore:gearStone>, <ore:ingotEnderium>], [null, <ore:ingotEnderium>, null]]);
recipes.addShaped(<thermalfoundation:material:294>, [[null, <ore:ingotLumium>, null], [<ore:ingotLumium>, <ore:gearStone>, <ore:ingotLumium>], [null, <ore:ingotLumium>, null]]);
recipes.addShaped(<thermalfoundation:material:293>, [[null, <ore:ingotSignalum>, null], [<ore:ingotSignalum>, <ore:gearStone>, <ore:ingotSignalum>], [null, <ore:ingotSignalum>, null]]);
recipes.addShaped(<thermalfoundation:material:292>, [[null, <ore:ingotConstantan>, null], [<ore:ingotConstantan>, <ore:gearStone>, <ore:ingotConstantan>], [null, <ore:ingotConstantan>, null]]);
recipes.addShaped(<thermalfoundation:material:290>, [[null, <ore:ingotInvar>, null], [<ore:ingotInvar>, <ore:gearStone>, <ore:ingotInvar>], [null, <ore:ingotInvar>, null]]);
recipes.addShaped(<thermalfoundation:material:289>, [[null, <ore:ingotElectrum>, null], [<ore:ingotElectrum>, <ore:gearStone>, <ore:ingotElectrum>], [null, <ore:ingotElectrum>, null]]);
recipes.addShaped(<thermalfoundation:material:264>, [[null, <ore:ingotMithril>, null], [<ore:ingotMithril>, <ore:gearStone>, <ore:ingotMithril>], [null, <ore:ingotMithril>, null]]);
recipes.addShaped(<thermalfoundation:material:262>, [[null, <ore:ingotPlatinum>, null], [<ore:ingotPlatinum>, <ore:gearStone>, <ore:ingotPlatinum>], [null, <ore:ingotPlatinum>, null]]);
recipes.addShaped(<thermalfoundation:material:261>, [[null, <ore:ingotNickel>, null], [<ore:ingotNickel>, <ore:gearStone>, <ore:ingotNickel>], [null, <ore:ingotNickel>, null]]);
recipes.addShaped(<thermalfoundation:material:260>, [[null, <ore:ingotAluminum>, null], [<ore:ingotAluminum>, <ore:gearStone>, <ore:ingotAluminum>], [null, <ore:ingotAluminum>, null]]);
recipes.addShaped(<thermalfoundation:material:259>, [[null, <ore:ingotLead>, null], [<ore:ingotLead>, <ore:gearStone>, <ore:ingotLead>], [null, <ore:ingotLead>, null]]);
recipes.addShaped(<thermalfoundation:material:258>, [[null, <ore:ingotSilver>, null], [<ore:ingotSilver>, <ore:gearStone>, <ore:ingotSilver>], [null, <ore:ingotSilver>, null]]);
recipes.addShaped(<thermalfoundation:material:257>, [[null, <ore:ingotTin>, null], [<ore:ingotTin>, <ore:gearStone>, <ore:ingotTin>], [null, <ore:ingotTin>, null]]);
recipes.addShaped(<thermalfoundation:material:256>, [[null, <ore:ingotCopper>, null], [<ore:ingotCopper>, <ore:gearStone>, <ore:ingotCopper>], [null, <ore:ingotCopper>, null]]);
recipes.addShaped(<thermalfoundation:material:27>, [[null, <ore:gemEmerald>, null], [<ore:gemEmerald>, <ore:gearGold>, <ore:gemEmerald>], [null, <ore:gemEmerald>, null]]);
recipes.addShaped(<thermalfoundation:material:26>, [[null, <ore:gemDiamond>, null], [<ore:gemDiamond>, <ore:gearGold>, <ore:gemDiamond>], [null, <ore:gemDiamond>, null]]);
recipes.addShaped(<thermalfoundation:material:25>, [[<ore:stickGold>, <ore:plateGold>, <ore:stickGold>], [<ore:plateGold>, <ore:craftingToolWrench>, <ore:plateGold>], [<ore:stickGold>, <ore:plateGold>, <ore:stickGold>]]);
recipes.addShaped(<gregtechmod:gear_iron>, [[<ore:stickRefinedIron>, <ore:plateRefinedIron>, <gregtechmod:rod_refined_iron>], [<ore:plateRefinedIron>, <ore:craftingToolWrench>, <ore:plateRefinedIron>], [<ore:stickRefinedIron>, <ore:plateRefinedIron>, <ore:stickRefinedIron>]]);
recipes.addShaped(<thermalfoundation:material:23>, [[null, <ore:cobblestone>, null], [<ore:cobblestone>, <ore:gearWood>, <ore:cobblestone>], [null, <ore:cobblestone>, null]]);
recipes.addShaped(<thermalfoundation:material:22>, [[null, <ore:stickWood>, null], [<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);

# Fix Quarry (recipe breaks after removing Railcraft gears)
recipes.remove(<buildcraftbuilders:quarry>);
recipes.addShaped(<buildcraftbuilders:quarry>, [[<ore:gearSteel>, <ore:circuitAdvanced>, <ore:gearSteel>], [<ore:gearGold>, <ore:gearSteel>, <ore:gearGold>], [<ore:gearDiamond>, <ic2:diamond_drill>.anyDamage(), <ore:gearDiamond>]]);

# Stone Rod / Stick
JEI.removeAndHide(<microblockcbe:stone_rod>);
JEI.removeAndHide(<backpack:stick>);

# Iron Stick
<ore:stickIron>.remove(<backpack:stick:1>);
JEI.removeAndHide(<backpack:stick:1>);

# Remove IC2 Plates from Oredict to hide them from Recipes in JEI
<ore:plateBronze>.remove(<ic2:plate>);
<ore:plateCopper>.remove(<ic2:plate:1>);
<ore:plateGold>.remove(<ic2:plate:2>);
<ore:plateIron>.remove(<ic2:plate:3>);
<ore:plateLapis>.remove(<ic2:plate:4>);
<ore:plateLead>.remove(<ic2:plate:5>);
<ore:plateObsidian>.remove(<ic2:plate:6>);
<ore:plateSteel>.remove(<ic2:plate:7>);
<ore:plateTin>.remove(<ic2:plate:8>);

# Remove and hide IC2 Plates / Ingots from JEI
for i in 1 to 6 {
    JEI.removeAndHide(<ic2:ingot>.definition.makeStack(i));
}

for i in 0 to 8 {
    JEI.removeAndHide(<ic2:plate>.definition.makeStack(i));
}
