import mods.jei.JEI;

# Old school Rubber
JEI.removeAndHide(<industrialforegoing:tinydryrubber>);
JEI.removeAndHide(<industrialforegoing:dryrubber>);
furnace.remove(<industrialforegoing:plastic>, <industrialforegoing:dryrubber>);
recipes.removeByRecipeName("retroexchange:plastic");
<ore:itemRubber>.remove(<industrialforegoing:plastic>);
<ore:logWood>.remove(<ifgretro:rubber_wood_log>);
furnace.addRecipe(<minecraft:coal:1>, <ifgretro:rubber_wood_log>);
