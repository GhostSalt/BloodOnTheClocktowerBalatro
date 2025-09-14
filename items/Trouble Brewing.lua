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
      "Creates {C:attention}#1#{} {C:botc_townsfolk}Townsfolk{}",
      "Jokers when {C:attention}sold{}",
      "{C:inactive}(Must have room){}"
    }
  },
  config = { extra = { created_townsfolk = 2, is_character = true, is_good_character = true, is_townsfolk_character = true } },
  rarity = 2,
  atlas = 'TB',
  pos = { x = 0, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.created_townsfolk } }
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    if context.selling_self and #G.jokers.cards <= G.jokers.config.card_limit then
      local candidates = {}
        for k, v in pairs(G.P_CENTERS) do
          if v.set == "Joker" and v.config and v.config.extra and type(v.config.extra) == "table" and v.config.extra.is_townsfolk_character then
            candidates[#candidates + 1] = { key = v.key, name = v.name }
          end
        end
      for i = 1, card.ability.extra.created_townsfolk do
        local selected_card = (candidates and pseudorandom_element(candidates, pseudoseed("washerwomanrandomtownsfolk"))) or
        { key = "j_botc_washerwoman", name = "Washerwoman" }
        
      end
    end
  end
}

SMODS.Joker {
  key = 'librarian',
  loc_txt = {
    name = 'Librarian',
    text = {
      ""
    }
  },
  config = { extra = { is_character = true, is_good_character = true, is_townsfolk_character = true } },
  rarity = 2,
  atlas = 'TB',
  pos = { x = 1, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = {  } }
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    
  end
}

SMODS.Joker {
  key = 'investigator',
  loc_txt = {
    name = 'Investigator',
    text = {
      ""
    }
  },
  config = { extra = { is_character = true, is_good_character = true, is_townsfolk_character = true } },
  rarity = 2,
  atlas = 'TB',
  pos = { x = 2, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = {  } }
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    
  end
}

SMODS.Joker {
  key = 'chef',
  loc_txt = {
    name = 'Chef',
    text = {
      ""
    }
  },
  config = { extra = { is_character = true, is_good_character = true, is_townsfolk_character = true } },
  rarity = 2,
  atlas = 'TB',
  pos = { x = 3, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = {  } }
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    
  end
}

SMODS.Joker {
  key = 'empath',
  loc_txt = {
    name = 'Empath',
    text = {
      ""
    }
  },
  config = { extra = { is_character = true, is_good_character = true, is_townsfolk_character = true } },
  rarity = 2,
  atlas = 'TB',
  pos = { x = 4, y = 0 },
  cost = 6,
  loc_vars = function(self, info_queue, card)
    return { vars = {  } }
  end,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,
  calculate = function(self, card, context)
    
  end
}