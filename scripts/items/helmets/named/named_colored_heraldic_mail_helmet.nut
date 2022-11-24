this.named_colored_heraldic_mail_helmet <- this.inherit("scripts/items/helmets/named/heraldic_mail_helmet", {
	m = {},
	function create()
	{
		this.heraldic_mail_helmet.create();
		this.m.ID = "armor.head.named_colored_heraldic_mail_helmet";
		this.m.VariantString = "heraldic_mail_helmet";
		this.m.Variant = this.Math.rand(1, 8);
		this.updateVariant();
	}

});

