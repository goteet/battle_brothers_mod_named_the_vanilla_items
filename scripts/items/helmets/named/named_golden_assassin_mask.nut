this.named_golden_assassin_mask <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},

	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_golden_assassin_mask";
		this.m.NameList = [
			"Stalker\'s Wrap",
			"Shadow Warrior\' Mask",
			"Visage of Hatred",
			"Veil of Horror"
		];
		this.m.Description = "An assassin\'s face mask forged with shiny gold.";
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Variant = this.Math.rand(1, 3);
		this.m.VariantString = "assassin_mask";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.HideCharacterHead = true;
		this.m.HideCorpseHead = true;
		this.updateVariant();
		this.m.Value = 2000;
		this.m.Condition = this.m.ConditionMax = 120;
		this.m.StaminaModifier = -6;
		this.randomizeValues();
	}
});

