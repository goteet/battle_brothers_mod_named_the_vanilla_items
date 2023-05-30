this.named_colored_faction_hat <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = 
	{
		FactionVariant = 0,
		ColorVariant = 0, 
	},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.named_colored_faction_hat";

		this.m.ShowOnCharacter = true;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.ReplaceSprite = true;

		this.m.Description = "A sturdy metal helmet with added padding, covered with a large feathered hat.";
		this.m.NameList = [
			"Swordmen\'s Hat"
		];
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.FactionVariant = this.Math.rand(1, 10);
		this.m.ColorVariant = this.Math.rand(0, 8);
		this.m.VariantString = "faction_hat";
		this.updateVariant();
		
		this.m.Value = 2000;
		this.m.Condition = 155;
		this.m.ConditionMax = 155;
		this.m.StaminaModifier = -10;
		this.randomizeValues();
	}

	function updateVariant()
	{
		this.m.Variant = this.m.ColorVariant * 10 + this.m.FactionVariant;
		this.named_helmet.updateVariant();
	}

	//ColorVariant:
	//0 = red			| Red
	//1 = orange		| OrangeRed
	//2 = yellow		| WhiteGreenYellow
	//3 = green			| WhiteGreenYellow, switch
	//4 = cyan          | WhiteBlue
	//5 = purple		| WhiteBlue
	//6 = magenta		| None
	//7 = pink			| None
	//8 = dark gray		| Black　WhiteGreenYellow

	function onPaint( _color )	
	{
		this.m.FactionVariant = this.m.Variant % 10;
		this.m.ColorVariant = this.m.Variant / 10;
		if(this.m.FactionVariant == 0)
		{
			this.m.FactionVariant = 10;
			this.m.ColorVariant -= 1;
		}
		switch(_color)
		{
		case this.Const.Items.Paint.None:
			this.m.ColorVariant = this.m.ColorVariant == 7 ? 6 : 7;
			break;

		case this.Const.Items.Paint.Black:
			this.m.ColorVariant = 8;
			break;

		case this.Const.Items.Paint.WhiteBlue:
			this.m.ColorVariant = this.m.ColorVariant == 5 ? 4 : 5;
			break;

		case this.Const.Items.Paint.WhiteGreenYellow:
			this.m.ColorVariant = this.m.ColorVariant == 3 ? 2 : 3;
			break;

		case this.Const.Items.Paint.OrangeRed:
			this.m.ColorVariant = 1;
			break;

		case this.Const.Items.Paint.Red:
			this.m.ColorVariant = 0;
			break;
		}

		this.updateVariant();
		this.updateAppearance();
	}
});

