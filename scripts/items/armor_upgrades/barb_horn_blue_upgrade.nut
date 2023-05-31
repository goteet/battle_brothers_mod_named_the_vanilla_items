this.barb_horn_blue_upgrade <- this.inherit("scripts/items/armor_upgrades/barbarian_horn_upgrade", {
	m = {},
	function create()
	{
		this.barbarian_horn_upgrade.create();
		this.m.ID = "armor_upgrade.barb_horn_blue";

		this.m.Icon = "armor_upgrades/upgrade_horn_03.png";
		this.m.IconLarge = this.m.Icon;
		this.m.OverlayIcon = "armor_upgrades/icon_upgrade_horn_03.png";
		this.m.OverlayIconLarge = "armor_upgrades/inventory_upgrade_horn_03.png";

		this.m.SpriteFront = "upgrade_horn_03_front";
		this.m.SpriteBack = "upgrade_horn_03_back";
		this.m.SpriteDamagedFront = "upgrade_horn_03_front_damaged";
		this.m.SpriteDamagedBack = "upgrade_horn_03_back";
		this.m.SpriteCorpseFront = "upgrade_horn_03_front_dead";
		this.m.SpriteCorpseBack = "upgrade_horn_03_back_dead";
	}
});

