this.named_van_helsing_helmet <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},

	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_van_helsing_helmet";
		this.m.NameList = [
			"Van Helsing\'s Wrap",
			"Van Helsing\'s Mask",
		];
		this.m.Description = "An van helsing\'s legacy face mask.";
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Variant = this.Math.rand(1, 6);
		this.m.VariantString = "undertake_helmet";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.ShowOnCharacter = true;
		this.m.IsDroppedAsLoot = true;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.updateVariant();
		this.m.Value = 2000;
		this.m.Condition = this.m.ConditionMax = 115;
		this.m.StaminaModifier = -6;
		this.randomizeValues();
		this.m.StaminaModifier += 1;
	}

	//1 = white + yellow		| None + 9/5
	//2 = white + red			| None + 6
	//3 = white + green			| None + 8
	//4 = white + gray			| None + 7
	//5 = red + yellow          | OrangeRed
	//6 = red + dark blue		| Red
	//7 = red + dark gray		| Black
	//8 = green + dark blue		| WhiteBlue
	//9 = green + yellow		| WhiteGreenYellow

	function onPaint( _color )	
	{
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.Variant = 6;
			break;

		case this.Const.Items.Paint.Black:
			this.m.Variant = 4;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.Variant = 3;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.Variant = 2;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.Variant = 5;
			break;

		case this.Const.Items.Paint.Red:
			this.m.Variant = 1;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}
});

