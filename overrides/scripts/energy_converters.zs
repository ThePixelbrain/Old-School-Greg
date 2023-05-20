# Energy Bridge
recipes.remove(<energyconverters:energy_bridge>);
recipes.addShaped(<energyconverters:energy_bridge>, [[<ore:plateIron>, <ic2:glass>, <ore:plateIron>], [<ic2:glass>, <minecraft:ender_eye>, <ic2:glass>], [<ore:plateIron>, <ic2:glass>, <ore:plateIron>]]);

# FE Energy Producer
recipes.removeByRecipeName("energyconverters:energy_producer_fe");
recipes.addShaped(<energyconverters:energy_producer_fe>, [[<ore:stone>, <thermaldynamics:duct_0>, <ore:stone>], [<thermalexpansion:dynamo>, <thermalexpansion:frame>, <ore:ingotGold>], [<ore:stone>, <thermaldynamics:duct_0>, <ore:stone>]]);

# MJ Energy Producer
recipes.removeByRecipeName("energyconverters:energy_producer_mj");
recipes.addShaped(<energyconverters:energy_producer_mj>, [[<ore:stone>, <buildcrafttransport:pipe_gold_power>, <ore:stone>], [<buildcraftcore:engine:1>, <ore:gearIron>, <ore:ingotGold>], [<ore:stone>, <buildcrafttransport:pipe_gold_power>, <ore:stone>]]);

# Remove RF Energy Converter
mods.jei.JEI.removeAndHide(<energyconverters:energy_producer_rf>);
mods.jei.JEI.removeAndHide(<energyconverters:energy_consumer_rf>);

# IC2 Energy Producers
recipes.removeByRecipeName("energyconverters:energy_producer_eu_0");
recipes.removeByRecipeName("energyconverters:energy_producer_eu_1");
recipes.removeByRecipeName("energyconverters:energy_producer_eu_2");
recipes.removeByRecipeName("energyconverters:energy_producer_eu_3");
recipes.removeByRecipeName("energyconverters:energy_producer_eu_4");
recipes.addShaped(<energyconverters:energy_producer_eu:4>, [[<ore:blockGold>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte}), <ore:blockGold>], [<gregtechmod:teblock:48>, <ore:craftingRawMachineTier04>, <ore:ingotGold>], [<ore:blockGold>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte}), <ore:blockGold>]]);
recipes.addShaped(<energyconverters:energy_producer_eu:3>, [[<ore:stone>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte}), <ore:stone>], [<gregtechmod:teblock:48>, <ore:craftingRawMachineTier03>, <ore:ingotGold>], [<ore:stone>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte}), <ore:stone>]]);
<energyconverters:energy_producer_eu:2>.addTooltip(format.gray("\"IC2 Hoovy Producer\""));
recipes.addShaped(<energyconverters:energy_producer_eu:2>, [[<ore:stone>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte}), <ore:stone>], [<ic2:te:79>, <ore:craftingRawMachineTier02>, <ore:ingotGold>], [<ore:stone>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte}), <ore:stone>]]);
recipes.addShaped(<energyconverters:energy_producer_eu:1>, [[<ore:stone>, <ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte}), <ore:stone>], [<ic2:te:78>, <ore:craftingRawMachineTier01>, <ore:ingotGold>], [<ore:stone>, <ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte}), <ore:stone>]]);
recipes.addShaped(<energyconverters:energy_producer_eu>, [[<ore:stone>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ore:stone>], [<ic2:te:77>, <ore:craftingRawMachineTier01>, <ore:ingotGold>], [<ore:stone>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ore:stone>]]);