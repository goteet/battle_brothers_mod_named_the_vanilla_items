this.bone_platings_01_upgrade <- this.inherit("scripts/items/armor_upgrades/bone_platings_upgrade", {
	m = {},
	function create()
	{
		this.bone_platings_upgrade.create();
		this.m.ID = "armor_upgrade.bone_platings_01";

		this.m.Icon = "armor_upgrades/upgrade_bone_platings_01.png";
		this.m.IconLarge = this.m.Icon;
		this.m.OverlayIcon = "armor_upgrades/icon_upgrade_bone_platings_01.png";
		this.m.OverlayIconLarge = "armor_upgrades/inventory_upgrade_bone_platings_01.png";

		this.m.SpriteFront = "upgrade_bone_platings_01_front";
		this.m.SpriteBack = "upgrade_bone_platings_01_back";
		this.m.SpriteDamagedFront = "upgrade_bone_platings_01_front_damaged";
		this.m.SpriteDamagedBack = "upgrade_bone_platings_01_back_damaged";
		this.m.SpriteCorpseFront = null;
		this.m.SpriteCorpseBack = "upgrade_bone_platings_01_dead";
	}
});

