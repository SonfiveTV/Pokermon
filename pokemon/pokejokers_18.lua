-- Pansage 511
local pansage = {
  name = "pansage",
  pos = { x = 3, y = 1 },
  config = { extra = {} },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_shortcut', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.c_poke_leafstone
    return { vars = {} }
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Grass",
  atlas = "Pokedex5",
  item_req = "leafstone",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return item_evo(self, card, context, "j_poke_simisage")
  end,
}
-- Simisage 512
local simisage = {
  name = "simisage",
  pos = { x = 4, y = 1 },
  config = { extra = { odds = 3 } },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_shortcut', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.m_lucky
    return { vars = { '' .. (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
  end,
  rarity = 'poke_safari',
  cost = 8,
  stage = "One",
  ptype = "Grass",
  atlas = "Pokedex5",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local stall_for_effects = false
      for _, v in ipairs(context.full_hand) do
        if v.config.center == G.P_CENTERS.c_base then
          if pseudorandom('simisage') < G.GAME.probabilities.normal / card.ability.extra.odds then
            stall_for_effects = true
            v:set_ability(G.P_CENTERS.m_lucky, nil, true)
            G.E_MANAGER:add_event(Event({
              func = function()
                v:juice_up()
                return true
              end
            }))
          end
        end
      end
      if stall_for_effects then
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.GREEN
        }
      end
    end
  end,
}
-- Pansear 513
local pansear = {
  name = "pansear",
  pos = { x = 5, y = 1 },
  config = { extra = {} },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_four_fingers', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.c_poke_firestone
    return { vars = {} }
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Fire",
  atlas = "Pokedex5",
  item_req = "firestone",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return item_evo(self, card, context, "j_poke_simisear")
  end,
}
-- Simisear 514
local simisear = {
  name = "simisear",
  pos = { x = 6, y = 1 },
  config = { extra = { odds = 3 } },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_four_fingers', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.m_mult
    return { vars = { '' .. (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
  end,
  rarity = 'poke_safari',
  cost = 8,
  stage = "One",
  ptype = "Fire",
  atlas = "Pokedex5",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local stall_for_effects = false
      for _, v in ipairs(context.full_hand) do
        if v.config.center == G.P_CENTERS.c_base then
          if pseudorandom('simisear') < G.GAME.probabilities.normal / card.ability.extra.odds then
            stall_for_effects = true
            v:set_ability(G.P_CENTERS.m_mult, nil, true)
            G.E_MANAGER:add_event(Event({
              func = function()
                v:juice_up()
                return true
              end
            }))
          end
        end
      end
      if stall_for_effects then
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.MULT
        }
      end
    end
  end,
}
-- Panpour 515
local panpour = {
  name = "panpour",
  pos = { x = 7, y = 1 },
  config = { extra = {} },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_pareidolia', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.c_poke_waterstone
    return { vars = {} }
  end,
  rarity = 2,
  cost = 5,
  stage = "Basic",
  ptype = "Water",
  atlas = "Pokedex5",
  item_req = "waterstone",
  blueprint_compat = false,
  calculate = function(self, card, context)
    return item_evo(self, card, context, "j_poke_simipour")
  end,
}
-- Simipour 516
local simipour = {
  name = "simipour",
  pos = { x = 8, y = 1 },
  config = { extra = { odds = 3 } },
  loc_vars = function(self, info_queue, card)
    type_tooltip(self, info_queue, card)
    info_queue[#info_queue + 1] = { set = 'Joker', key = 'j_pareidolia', config = {} }
    info_queue[#info_queue + 1] = G.P_CENTERS.m_bonus
    return { vars = { '' .. (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
  end,
  rarity = 'poke_safari',
  cost = 8,
  stage = "One",
  ptype = "Water",
  atlas = "Pokedex5",
  blueprint_compat = false,
  calculate = function(self, card, context)
    if context.before and context.cardarea == G.jokers and not context.blueprint then
      local stall_for_effects = false
      for _, v in ipairs(context.full_hand) do
        if v.config.center == G.P_CENTERS.c_base then
          if pseudorandom('simipour') < G.GAME.probabilities.normal / card.ability.extra.odds then
            stall_for_effects = true
            v:set_ability(G.P_CENTERS.m_bonus, nil, true)
            G.E_MANAGER:add_event(Event({
              func = function()
                v:juice_up()
                return true
              end
            }))
          end
        end
      end
      if stall_for_effects then
        return {
          message = localize('k_upgrade_ex'),
          colour = G.C.CHIPS
        }
      end
    end
  end,
}
-- Munna 517
-- Musharna 518
-- Pidove 519
-- Tranquill 520
-- Unfezant 521
-- Blitzle 522
-- Zebstrika 523
-- Roggenrola 524
-- Boldore 525
-- Gigalith 526
-- Woobat 527
-- Swoobat 528
-- Drilbur 529
-- Excadrill 530
-- Audino 531
-- Timburr 532
-- Gurdurr 533
-- Conkeldurr 534
-- Tympole 535
-- Palpitoad 536
-- Seismitoad 537
-- Throh 538
-- Sawk 539
-- Sewaddle 540
return {
  name = "Pokemon Jokers 511-540",
  list = { pansage, simisage, pansear, simisear, panpour, simipour },
}
