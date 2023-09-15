this.named_colored_feather_gold_turban2 <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_colored_feather_gold_turban2";
		this.m.VariantString = "feather_golden_turban";
		this.m.Variant = this.Math.rand(11, 16);
		this.updateVariant();

		this.m.NameList = [
			"Gladiator's Hornor",
			"Slaughter Mask of Vile Hands",
			"Feather Helmet of Duelist"
		];
		this.m.Description = "An impressive metal helmet crafted to intimidate the opponents of pit fighters in arenas of the southern city states.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideCharacterHead = false;
		this.m.HideCorpseHead = false;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.ReplaceSprite = false;
		
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 3000;
		this.m.Condition = this.m.ConditionMax = 150;
		this.m.StaminaModifier = -9;
		this.m.Vision = -1;
		this.randomizeValues();
	}

	function updateVaraint()
	{
		this.m.VariantString = "feather_golden_turban";
		this.helmet.updateVaraint();
	}

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 15;
			break;
			
		case this.Const.Items.Paint.Black:
			this.m.Variant = 16;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 13;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 12;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 14;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 11;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}
});

