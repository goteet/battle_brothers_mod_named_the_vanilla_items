this.knight_modified <- this.inherit("scripts/entity/tactical/humans/knight", {
	m = {},
	function assignRandomEquipment()
	{
		this.knight.assignRandomEquipment();

		local helmet = this.getItems().getItemAtSlot(this.Const.ItemSlot.Head);
		if(helmet != null && helmet.m.ID == "armor.head.faction_helm")
		{
			local rarity = this.Math.rand(1,100);
			if(rarity == 1 || rarity == 50 || rarity == 100)
			{
				local banner = this.m.Surcoat;
				this.m.Items.unequip(helmet);
				local namedVersionHelment = this.new("scripts/items/helmets/named/named_faction_full_helmet");
				namedVersionHelment.setVariant(banner);
				this.m.Items.equip(namedVersionHelment);
			}
		}
	}
});

