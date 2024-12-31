menu = Menu.create(
  identifier: "breakfast",
  label: "Breakfast Menu",
  state: "active",
  start_date: Date.today,
  end_date: nil
)

toast_section = Section.create(
  identifier: "toasts",
  label: "Toasts",
  description: "Yakun Toasts Equivalents"
)
no_sugar_drinks_section = Section.create(
  identifier: "no_sugar_drinks",
  label: "No Sugar Drinks",
  description: "No sugar only. Health is number 1!"
)

MenuSection.create(menu: menu, section: toast_section, display_order: 1)
MenuSection.create(menu: menu, section: no_sugar_drinks_section, display_order: 2)

kaya_toast = Item.create(
  identifier: "kaya_toast",
  label: "Kaya Toast",
  description: "Toasts with kaya spread.",
  price: 5.0
)
kaya_butter_toast = Item.create(
  identifier: "kaya_butter_toast",
  label: "Kaya Butter Toast",
  description: "Toasts with kaya and butter spread.",
  price: 6.0
)
teh_o_kosong = Item.create(
  identifier: "teh_o_kosong",
  label: "Teh O Kosong",
  description: "Just tea with no sugar or milk.",
  price: 1.3
)

kopi_o_kosong = Item.create(
  identifier: "kopi_o_kosong",
  label: "Kopi O Kosong",
  description: "Just coffee with no sugar or milk.",
  price: 1.2
)

SectionItem.create(section: toast_section, item: kaya_toast, display_order: 1)
SectionItem.create(section: toast_section, item: kaya_butter_toast, display_order: 2)
SectionItem.create(section: no_sugar_drinks_section, item: teh_o_kosong, display_order: 3)
SectionItem.create(section: no_sugar_drinks_section, item: kopi_o_kosong, display_order: 4)

drinks_ice = ModifierGroup.create(
  identifier: "drinks_ice",
  label: "Drinks Ice",
  selection_required_min: 0,
  selection_required_max: 1
)

drinks_upsize = ModifierGroup.create(
  identifier: "drinks_upsize",
  label: "Drinks Up Size",
  selection_required_min: 0,
  selection_required_max: 1
)

drinks_upsize_ice = ModifierGroup.create(
  identifier: "drinks_upsize_ice",
  label: "Drinks Up Size Ice",
  selection_required_min: 0,
  selection_required_max: 1
)

ItemModifierGroup.create(item: teh_o_kosong, modifier_group: drinks_ice)
ItemModifierGroup.create(item: kopi_o_kosong, modifier_group: drinks_ice)

ItemModifierGroup.create(item: teh_o_kosong, modifier_group: drinks_upsize)
ItemModifierGroup.create(item: kopi_o_kosong, modifier_group: drinks_upsize)

ItemModifierGroup.create(item: teh_o_kosong, modifier_group: drinks_upsize_ice)
ItemModifierGroup.create(item: kopi_o_kosong, modifier_group: drinks_upsize_ice)

Modifier.create(
  item: kopi_o_kosong,
  modifier_group: drinks_ice,
  display_order: 1,
  default_quantity: 0,
  price_override: 1.5
)
Modifier.create(
  item: teh_o_kosong,
  modifier_group: drinks_ice,
  display_order: 2,
  default_quantity: 0,
  price_override: 1.6,
)

Modifier.create(
  item: kopi_o_kosong,
  modifier_group: drinks_upsize,
  display_order: 3,
  default_quantity: 0,
  price_override: 1.5
)
Modifier.create(
  item: teh_o_kosong,
  modifier_group: drinks_upsize,
  display_order: 4,
  default_quantity: 0,
  price_override: 1.6,
  )

Modifier.create(
  item: kopi_o_kosong,
  modifier_group: drinks_upsize_ice,
  display_order: 5,
  default_quantity: 0,
  price_override: 1.8
)
Modifier.create(
  item: teh_o_kosong,
  modifier_group: drinks_upsize_ice,
  display_order: 6,
  default_quantity: 0,
  price_override: 2.0,
  )
