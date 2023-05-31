this.white_wolf_pelt_upgrade <- this.inherit("scripts/items/armor_upgrades/direwolf_pelt_upgrade", {
	m = {},
	function create()
	{
		this.direwolf_pelt_upgrade.create();
		this.m.ID = "armor_upgrade.white_wolf_pelt";
		this.m.Name = "White wolf Pelt Mantle";

		this.m.Icon = "armor_upgrades/upgrade_white_wolf.png";
		this.m.IconLarge = this.m.Icon;
		this.m.OverlayIcon = "armor_upgrades/icon_upgrade_white_wolf.png";
		this.m.OverlayIconLarge = "armor_upgrades/inventory_upgrade_white_wolf.png";

		this.m.SpriteFront = "upgrade_white_wolf_front";
		this.m.SpriteBack = "upgrade_white_wolf_back";
		this.m.SpriteDamagedFront = "upgrade_white_wolf_front_damaged";
		this.m.SpriteDamagedBack = "upgrade_white_wolf_back";
		this.m.SpriteCorpseFront = "upgrade_white_wolf_front_dead";
		this.m.SpriteCorpseBack = "upgrade_white_wolf_back_dead";
	}
});

