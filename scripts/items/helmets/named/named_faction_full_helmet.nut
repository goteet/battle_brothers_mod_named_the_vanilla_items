this.named_faction_full_helmet <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_faction_full_helmet";
		this.m.Description = "A closed metal helm with breathing holes and intricate decoration ontop. Great in the way of protection, a piece of art to behold, but hard to breathe in and limiting the field of view.";
		this.m.NameList = [
			"Decorated Full Helm",
			"Call from the Heaven",
			"Proud Silver Greathelm",
			"Helmet of Immortal Sun"
		];

		this.m.ShowOnCharacter = true;
		this.m.HideHair = true;
		this.m.HideCorpseHead = true;
		this.m.HideBeard = true;

		this.m.VariantString = "faction_full_helmet";
		this.m.Variant = this.Math.rand(1, 10);
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		
		this.m.Value = 3500;
		this.m.Condition = 300;
		this.m.ConditionMax = 300;
		this.m.StaminaModifier = -22;
		this.m.Vision = -3;
		this.randomizeValues();
	}

	function updateVaraint()
	{
		this.m.VariantString = "faction_full_helmet";
		this.helmet.updateVaraint();
	}

	function setVariant( variant )
	{
		this.m.Variant = variant;
		this.updateVariant();
	}
});

