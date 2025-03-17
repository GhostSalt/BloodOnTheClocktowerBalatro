SMODS.Atlas {
  key = "TB",
  path = "Trouble Brewing.png",
  px = 71,
  py = 95
}

SMODS.current_mod.optional_features = { cardareas = { unscored = true } }

function count_enhancements()
  if not G.playing_cards then return 0 end
	local enhancement_tally = 0
    for k, v in pairs(G.playing_cards) do
      if next(SMODS.get_enhancements(v)) then enhancement_tally = enhancement_tally + 1 end
    end
	return enhancement_tally
end

SMODS.Joker {
  key = 'washerwoman',
  loc_txt = {
    name = 'Washerwoman',
    text = {
      "When acquired,",
      "do nothing"
    }
  },
  config = { extra = { is_character = true, is_good_character = true, is_townsfolk_character = true } },
  rarity = 2,
  atlas = 'TB',
  pos = { x = 0, y = 0 },
  cost = 7,
  loc_vars = function(self, info_queue, card)
    return { vars = {  } }
  end,
  blueprint_compat = false,
  perishable_compat = true,
  calculate = function(self, card, context)
    
  end
}