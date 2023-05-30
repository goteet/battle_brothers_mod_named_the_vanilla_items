this.named_colored_feather_gold_turban <- this.inherit("scripts/items/helmets/named/gold_and_black_turban", {
	m = {},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_colored_feather_gold_turban";
		this.m.VariantString = "feather_golden_turban";
		this.m.Variant = this.Math.rand(1, 5);
		this.updateVariant();

		this.m.NameList = [
			"Gladiator's Hornor",
			"Slaughter Mask of Vile Hands",
			"Feather Helmet of Duelist"
		];
		this.m.Description = "An impressive metal helmet crafted to intimidate the opponents of pit fighters in arenas of the southern city states.";
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideCharacterHead = true;
		this.m.HideCorpseHead = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.ReplaceSprite = true;
		
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 2200;
		this.m.Condition = this.m.ConditionMax = 165;
		this.m.StaminaModifier = -10;
		this.m.Vision = -3;
		this.randomizeValues();
	}


	//ColorVariant:
	//5 = Black			| None
	//1 = red			| Red,  
	//2 = green			| WhiteGreenYellow
	//3 = cyan			| WhiteBlue
	//4 = magenta		| OrangeRed

	function onPaint( _color )
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 5;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 3;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 2;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 4;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 1;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}
});
