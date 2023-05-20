import mods.ic2.Macerator;

# No easy Steel
mods.thermalexpansion.InductionSmelter.removeRecipe(<ore:dustCoal>.firstItem, <ore:dustIron>.firstItem);
mods.thermalexpansion.InductionSmelter.removeRecipe(<ore:dustCharcoal>.firstItem, <ore:dustIron>.firstItem);
mods.thermalexpansion.InductionSmelter.removeRecipe(<ore:dustCoal>.firstItem, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<ore:dustCharcoal>.firstItem, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<ore:fuelCoke>.firstItem, <ore:dustIron>.firstItem);
mods.thermalexpansion.InductionSmelter.removeRecipe(<ore:fuelCoke>.firstItem, <minecraft:iron_ingot>);

# Fix Hardened Glass Obsidian Requirements
mods.thermalexpansion.InductionSmelter.removeRecipe(<ore:dustObsidian>.firstItem, <ore:dustLead>.firstItem);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:glass:3> * 2, <gregtechmod:dust_obsidian> * 2, <gregtechmod:dust_lead>, 8000);

# Thermal Mob Rods
Macerator.addRecipe(<thermalfoundation:material:2049> * 4, <thermalfoundation:material:2048>);
Macerator.addRecipe(<thermalfoundation:material:2051> * 4, <thermalfoundation:material:2050>);
Macerator.addRecipe(<thermalfoundation:material:2053> * 4, <thermalfoundation:material:2052>);