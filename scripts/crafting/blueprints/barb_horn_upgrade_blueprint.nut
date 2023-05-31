this.barbarian_horn_upgrade_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.barbarian_horn_upgrade";
		this.m.PreviewCraftable = this.new("scripts/items/armor_upgrades/barbarian_horn_upgrade");
		this.m.Cost = 400;
		local ingredients = [
			{
				Script = "scripts/items/armor_upgrades/unhold_bones_item",
				Num = 4
			}
		];
		this.init(ingredients);
	}

	function onCraft( _stash )
	{
		_stash.add(this.new("scripts/items/armor_upgrades/barbarian_horn_upgrade"));
	}

});

