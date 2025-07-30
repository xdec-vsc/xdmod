--ATLAS START-------------------------------------------------------------------------------------------------

--card.children.floating_sprite:set_sprite_pos({ x = 8, y = 6 }) --the solution to my problems

SMODS.Atlas({
	key = "modicon",
	path = "modicon.png",
	px = 362,
	py = 362
})

SMODS.Atlas {
	-- Key for code to find it with
	key = "Jokers",
	-- The name of the file, for the code to pull the atlas from
	path = "Jokers.png",
	-- Width of each sprite in 1x size
	px = 71,
	-- Height of each sprite in 1x size
	py = 95
}

SMODS.Atlas {
	-- Key for code to find it with
	key = "Neon",
	-- The name of the file, for the code to pull the atlas from
	path = "Wamp.png",
	-- Width of each sprite in 1x size
	px = 710,
	-- Height of each sprite in 1x size
	py = 950
}

SMODS.Atlas {
	-- Key for code to find it with
	key = "Tags",
	-- The name of the file, for the code to pull the atlas from
	path = "Tags.png",
	-- Width of each sprite in 1x size
	px = 34,
	-- Height of each sprite in 1x size
	py = 34
}

SMODS.Atlas{
    key = 'DENIM',
    path = 'venom.png',
    px = 120,   -- frame width
    py = 180,   -- frame height
}

SMODS.Atlas {
	-- Key for code to find it with
	key = "SODA",
	-- The name of the file, for the code to pull the atlas from
	path = "Soda.png",
	-- Width of each sprite in 1x size
	px = 142,
	-- Height of each sprite in 1x size
	py = 190
}

SMODS.Sound({key = "akbil1", path = "akbil1.ogg",})
SMODS.Sound({key = "akbil2", path = "akbil2.ogg",})
SMODS.Sound({key = "akbil3", path = "akbil3.ogg",})
SMODS.Sound({key = "akbil4", path = "akbil4.ogg",})
SMODS.Sound({key = "akbil5", path = "akbil5.ogg",})
SMODS.Sound({key = "thirdsoda", path = "bottleopen.ogg",})
SMODS.Sound({key = "idroppedit", path = "break.ogg",})
SMODS.Sound({key = "rizeli2", path = "crazycenk.ogg",})

SMODS.Rarity{
	key = 'notnothing',          -- internal key
	loc_txt = { name = 'nil', text = {} },  -- shows literally: nil
	pools = { Joker = true, ["xdmod_joker"] = true },    -- allow in Joker pool
	default_weight = 0.01,         -- spawn weight
	badge_colour = HEX'0093FF',  -- whatever color
}:register()

SMODS.Rarity{
	key = 'gaming',          -- internal key
	loc_txt = { name = 'Gaming', text = {} },  -- shows literally: nil
	pools = { Joker = true, ["xdmod_joker"] = true },    -- allow in Joker pool
	default_weight = 0.00001,         -- spawn weight
	badge_colour = HEX'FF30C7',  -- whatever color
}:register()

SMODS.Rarity{
	key = 'ncalvert',          -- internal key
	loc_txt = { name = 'AMEN BREAK!', text = {} },  -- shows literally: nil
	pools = { Joker = true, ["xdmod_joker"] = true },    -- allow in Joker pool
	default_weight = 0.1,         -- spawn weight
	badge_colour = HEX'3A3DFF',  -- whatever color
	xdm_ncalvert_jokers = { 
		"j_xdm_abstract_golden",
		"j_xdm_plasma_joker",
		"j_xdm_jokerpokerbalala",
		"j_xdm_jordanrules",
		"j_xdm_tomhollandmanwtf",
		"j_xdm_YTisnotwhitevro",
		"j_xdm_SWAMPIZZO",
		"j_xdm_holo_error",
		"j_xdm_turkish_internet",
		"j_xdm_fire_cenk",
		"j_xdm_crayzhamburger",
		"j_xdm_MKULTRA",
		"j_xdm_SKY",
		"j_xdm_ankara"
	}
}:register()
xdm_ncalvert_jokers = { 
		"j_xdm_abstract_golden",
		"j_xdm_plasma_joker",
		"j_xdm_jokerpokerbalala",
		"j_xdm_jordanrules",
		"j_xdm_tomhollandmanwtf",
		"j_xdm_YTisnotwhitevro",
		"j_xdm_SWAMPIZZO",
		"j_xdm_holo_error",
		"j_xdm_turkish_internet",
		"j_xdm_fire_cenk",
		"j_xdm_crayzhamburger",
		"j_xdm_MKULTRA",
		"j_xdm_SKY",
		"j_xdm_ankara"
	}

function get_all_jokers()
    local all_jimbos = {}
    for key, center in pairs(G.P_CENTERS) do
        if key:sub(1, 2) == "j_" then
            table.insert(all_jimbos, key)
        end
    end
    return all_jimbos
end


-- credits to SMG9000 for the code

function create_UIBox_custom_video1(name, buttonname)
  local file_path = SMODS.Mods["chiefsosa"].path.."/resources/"..name..".ogv"
  local file = NFS.read(file_path)
  love.filesystem.write("temp.ogv", file)
  local video_file = love.graphics.newVideo('temp.ogv')
  local vid_sprite = Sprite(0,0,11*16/9,11,G.ASSET_ATLAS["ui_"..(G.SETTINGS.colourblind_option and 2 or 1)], {x=0, y=0})
  video_file:getSource():setVolume(G.SETTINGS.SOUND.volume*G.SETTINGS.SOUND.game_sounds_volume/(100*10))
  vid_sprite.video = video_file
  video_file:play()

  local t = create_UIBox_generic_options({ back_delay = 2 , back_label = buttonname, colour = G.C.BLACK, padding = 0, contents = {
    {n=G.UIT.O, config={object = vid_sprite}} }})
  return t
end

function round(val, n)
	return math.floor(val * 10^n + 0.5) / 10^n
end

MOVEBITCH = function (self, card, context)
	local framex = turkishint.framex
	local framey = turkishint.framey
	local increase = (turkishint.frame_movement) or 1
	framex = turkishint.framex
	framey = turkishint.framey
	increase = (turkishint.frame_movement) or 1
	if framex ~= 14 then
		framex = framex + increase
	end
	if framex > 13 then
		framex = (framex + 1) % 15
		framey = framey + turkishint.frame_movement
	end
	if framey > 3 then
		framey = 0
	end
	card.children.floating_sprite:set_sprite_pos( { x = framex, y = framey } )
	turkishint.framex = framex
	turkishint.framey = framey
end

--ben bu götsüz dilin ve programın amına ve yarrağını patlatacam aq
--function jokerExists(abilityname)
--    local _check = false
--    if G.jokers and G.jokers.cards then
--        for i = 1, #G.jokers.cards do
--            if G.jokers.cards[i].ability.key == abilityname then _check = true end
--        end
--    end
--    return _check
--end
--
--xdm = xdm or {}
--xdm.animations = xdm.animations or {}
--xdm.ticks = xdm.ticks or 0
--
--function xdm:startAnimation(joker)
--    xdm.animations[joker.key] = {
--        frame = 1,
--        timer = 0,
--        fps = 15,
--        total_frames = 60,
--        joker = joker
--    }
--end
--
--function xdm:updateAnimations(dt)
--    for key, anim in pairs(xdm.animations) do
--        anim.timer = anim.timer + dt
--        local frame_time = 1 / anim.fps
--        if anim.timer >= frame_time then
--            anim.timer = anim.timer - frame_time
--            anim.frame = (anim.frame % anim.total_frames) + 1
--
--            local frame_index = anim.frame - 1
--            local cols = 15
--            anim.joker.pos.x = frame_index % cols
--            anim.joker.pos.y = math.floor(frame_index / cols)
--        end
--    end
--end
--
--function xdm:update(dt)
--	xdm:updateAnimations(dt)
--	
--    if G.GAME.cards then
--        for _, card in pairs(G.GAME.cards) do
--            if card.ability and card.ability.set == "Joker" and card.ability.key == "DISBITCH" then
--                if card.update then
--                    card:update()
--                end
--            end
--        end
--    end
--end
--
--function xdm:updateAllJokers(dt)
--    if G.GAME.cards then
--        for _, card in pairs(G.GAME.cards) do
--            if card.ability and card.ability.set == "Joker" and card.ability.key == "DISBITCH" then
--                if card.update then
--                    card:update(dt)
--                end
--            end
--        end
--    end
--end
--
--local _old_Game_update = Game.update
--function Game:update(dt)
--    _old_Game_update(self, dt) -- keep game's real logic running
--	xdm:updateAllJokers(dt)
--	xdm.ticks = (xdm.ticks or 0) + 1
--    if jokerExists("j_xdm_DISBITCH") then
--        decrementingTickEvent("j_xdm_DISBITCH", xdm.ticks)
--    end
--	xdm:update(dt)
--end
--
--function decrementingTickEvent(type, tick)
--	if not G or not G.P_CENTERS then return end
--	
--    if type == "j_xdm_DISBITCH" then
--        if tick % 4 == 0 then -- adjust for animation speed
--            local center = G.P_CENTERS.j_xdm_DISBITCH
--            if center then
--                center.frame = (center.frame or 0) + 1
--                local f = center.frame
--                center.pos = {
--                    x = f % 15,              -- assuming 15 frames wide
--                    y = math.floor(f / 15)   -- rows as needed
--                }
--                if center.frame > 59 then center.frame = 0 end -- assuming 60 frames total
--            end
--        end
--    end
--end

--ATLAS END-------------------------------------------------------------------------------------------------
--JOKER START-----------------------------------------------------------------------------------------------

SMODS.Joker {
	-- How the code refers to the joker.
	key = 'imajoke',
	-- loc_text is the actual name and description that show in-game for the card.
	loc_txt = {
		name = 'New Joker',
		text = {
			--[[
			The #1# is a variable that's stored in config, and is put into loc_vars.
			The {C:} is a color modifier, and uses the color "mult" for the "+#1# " part, and then the empty {} is to reset all formatting, so that Mult remains uncolored.
				There's {X:}, which sets the background, usually used for XMult.
				There's {s:}, which is scale, and multiplies the text size by the value, like 0.8
				There's one more, {V:1}, but is more advanced, and is used in Castle and Ancient Jokers. It allows for a variable to dynamically change the color. You can find an example in the Castle joker if needed.
				Multiple variables can be used in one space, as long as you separate them with a comma. {C:attention, X:chips, s:1.3} would be the yellow attention color, with a blue chips-colored background,, and 1.3 times the scale of other text.
				You can find the vanilla joker descriptions and names as well as several other things in the localization files.
				]]
			"{C:mult}+#1# {} Mult"
		}
	},
	--[[
		Config sets all the variables for your card, you want to put all numbers here.
		This is really useful for scaling numbers, but should be done with static numbers -
		If you want to change the static value, you'd only change this number, instead
		of going through all your code to change each instance individually.
		]]
	config = { extra = { mult = 10 } },
	-- loc_vars gives your loc_text variables to work with, in the format of #n#, n being the variable in order.
	-- #1# is the first variable in vars, #2# the second, #3# the third, and so on.
	-- It's also where you'd add to the info_queue, which is where things like the negative tooltip are.
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult } }
	end,
	-- Sets rarity. 1 common, 2 uncommon, 3 rare, 4 legendary.
	rarity = 2,
	-- Which atlas key to pull from.
	atlas = 'Jokers',
	-- This card's position on the atlas, starting at {x=0,y=0} for the very top left.
	pos = { x = 0, y = 0 },
	-- Cost of card in shop.
	cost = 2,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	-- The functioning part of the joker, looks at context to decide what step of scoring the game is on, and then gives a 'return' value if something activates.
	calculate = function(self, card, context)
		-- Tests if context.joker_main == true.
		-- joker_main is a SMODS specific thing, and is where the effects of jokers that just give +stuff in the joker area area triggered, like Joker giving +Mult, Cavendish giving XMult, and Bull giving +Chips.
		if context.joker_main then
			-- Tells the joker what to do. In this case, it pulls the value of mult from the config, and tells the joker to use that variable as the "mult_mod".
			return {
				mult = card.ability.extra.mult,
				-- This is a localize function. Localize looks through the localization files, and translates it. It ensures your mod is able to be translated. I've left it out in most cases for clarity reasons, but this one is required, because it has a variable.
				-- This specifically looks in the localization table for the 'variable' category, specifically under 'v_dictionary' in 'localization/en-us.lua', and searches that table for 'a_mult', which is short for add mult.
				-- In the localization file, a_mult = "+#1#". Like with loc_vars, the vars in this message variable replace the #1#.
				-- Without this, the mult will stil be added, but it'll just show as a blank red square that doesn't have any text.
			}
		end
	end
}

SMODS.Joker {
	key = 'gambling',
	loc_txt = {
		name = 'LETS GO GAMBLING',
		text = {
			"{C:red}+#1#{} discards",
			"each round,",
			"{C:red}#2#{} hand size"
		}
	},
	config = { extra = { discard_size = 1000, hand_size = -3 } },
	rarity = 2,
	atlas = 'Jokers',
	pos = { x = 1, y = 0 },
	cost = 4,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.discard_size, card.ability.extra.hand_size } }
	end,
	-- This function is called when the card is added to deck. from_debuff is true whenever a card gets debuffed and then undebuffed.
	-- Debuffs usually call both of these functions, essentially, when a joker is debuffed, it's simply removed from your jokers, except for the fact that it takes up a slot.
	add_to_deck = function(self, card, from_debuff)
		-- Changes a G.GAME variable, which is usually a global value that's specific to the current run.
		-- These are initialized in game.lua under the Game:init_game_object() function, and you can look through them to get an idea of the things you can change.
		G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discard_size
		G.hand:change_size(card.ability.extra.hand_size)
	end,
	-- Inverse of above function.
	remove_from_deck = function(self, card, from_debuff)
		-- Adds - instead of +, so they get subtracted when this card is removed.
		G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discard_size
		G.hand:change_size(-card.ability.extra.hand_size)
	end
	-- Because all the functionality is in remove_from_deck and add_to deck, calculate is unnecessary.

	--[[
	Extra note, having the config as something like
	config = {d_size = 3, h_size = -1, extra = {whatever variables you put}}
	automatically applies these changes.
	However, these values outside of the extra table are constants, so they aren't good for jokers with values that change.
	You can find a fuller list of them at card.lua:275.
	]]
}

SMODS.Joker {
	key = 'asexual_card',
	loc_txt = {
		name = 'Wild Ace',
		text = {
			"Retrigger all",
			"played {X:attention,C:white}aces{}"
		}
	},
	config = { extra = { repetitions = 1 } },
	rarity = 2,
	atlas = 'Jokers',
	pos = { x = 2, y = 0 },
	cost = 5,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		-- Checks that the current cardarea is G.play, or the cards that have been played, then checks to see if it's time to check for repetition.
		-- The "not context.repetition_only" is there to keep it separate from seals.
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			-- context.other_card is something that's used when either context.individual or context.repetition is true
			-- It is each card 1 by 1, but in other cases, you'd need to iterate over the scoring hand to check which cards are there.
			if context.other_card:get_id() == 14 then
				return {
					repetitions = card.ability.extra.repetitions,
					-- The card the repetitions are applying to is context.other_card
					card = context.other_card
				}
			end
		end
	end
}

SMODS.Joker {
	key = 'abstract_golden',
	loc_txt = {
		name = 'Golden Sushi',
		text = {
			"Earn {X:money,C:white}$#1#{} for",
			"each {C:Attention}Joker{} at",
			"the end of round"
		}
	},
	config = { extra = { money = 2} },
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 3, y = 0 },
	cost = 5,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.money } }
	end,
	-- SMODS specific function, gives the returned value in dollars at the end of round, double checks that it's greater than 0 before returning.
	calc_dollar_bonus = function(self, card)
		local x = 0
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i].ability.set == 'Joker' then x = x + 1 end
		end
		local bonus = (card.ability.extra.money)*(x)
		if bonus > 0 then return bonus end
	end
	-- Since there's nothing else to calculate, a calculate function is completely unnecessary.
}

SMODS.Joker {
	key = 'plasma_joker',
	loc_txt = {
		name = 'Plasma Joker',
		text = {
			"Each played card adds half their",
			"value as {C:mult}mult{} and removes",
			" half their value from {C:chips}chips{}."
		}
	},
	config = { extra = { half_of_sum = 0.5 } },
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 4, y = 0 },
	cost = 5,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			-- :get_id tests for the rank of the card. Other than 2-10, Jack is 11, Queen is 12, King is 13, and Ace is 14.
				-- Specifically returning to context.other_card is fine with multiple values in a single return value, chips/mult are different from chip_mod and mult_mod, and automatically come with a message which plays in order of return
					if context.other_card:get_id() == 14 then
						xxchips = 11
					end
					if context.other_card:get_id() == 13 or 12 or 11 then
						xxchips = 10
					end
					if context.other_card:get_id() < 11 and context.other_card:get_id() > 1 then
						xxchips = context.other_card:get_id()
					end
					if context.other_card:get_id() < 0 then
						xxchips = 50
					end
					local half = self.config.extra.half_of_sum or 0.5
					return {
						chips = (xxchips - (2*xxchips))*half,
						mult = xxchips *half,
						card = context.other_card
					}
				end
			end
}

SMODS.Joker {
	key = 'YTisnotwhitevro',
	loc_txt = {
		name = 'Youtube Music',
		text = {
			"Gives {X:mult,C:white}X#1# Mult{} and",
			"{X:chips,C:white}X#2# Chips{} for each",
			"unmodified card played."
		}
	},
	config = { extra = { xmult = 2, xchips = 2 } },
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 5, y = 0 },
	cost = 5,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult, card.ability.extra.xchips } }
	end,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			-- :get_id tests for the rank of the card. Other than 2-10, Jack is 11, Queen is 12, King is 13, and Ace is 14.
				-- Specifically returning to context.other_card is fine with multiple values in a single return value, chips/mult are different from chip_mod and mult_mod, and automatically come with a message which plays in order of return.
				--DO NOT TRY TO REDO THIS IT WILL PROBABLY WORK BETTER
				local csharp = context.other_card
				local has_enhanced = next(SMODS.get_enhancements(csharp, false)) ~= nil
				local has_edited = (csharp.edition ~= nil)
				local has_sealed = csharp.ability and csharp.ability.seal ~= nil
				local unmodified = not has_enhanced and not has_edited and not has_sealed
				if unmodified then
					return{
						x_mult = card.ability.extra.xmult,
						x_chips = card.ability.extra.xchips,
						card = context.other_card
					}
				end
			end
		end
}

SMODS.Joker {
	key = 'jokerpokerbalala',
	loc_txt = {
		name = 'GoDaddy',
		text = {
			"{C:blue}+#1#{} hands",
			"each round,",
			"{X:rare,C:white}#2#X{} blind size"
		}
	},
	config = { extra = { extra_hands = 10, blindmult = 3} },
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 6, y = 0 },
	cost = 4,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.extra_hands, card.ability.extra.blindmult } }
	end,
	add_to_deck = function(self, card, from_debuff)
		-- Changes a G.GAME variable, which is usually a global value that's specific to the current run.
		-- These are initialized in game.lua under the Game:init_game_object() function, and you can look through them to get an idea of the things you can change.
		G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.extra_hands
	end,
	-- Inverse of above function.
	remove_from_deck = function(self, card, from_debuff)
		-- Adds - instead of +, so they get subtracted when this card is removed.
		G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.extra_hands
	end,
	calculate = function(self, card, context)
        if context.setting_blind then
            G.GAME.blind.chips = G.GAME.blind.chips*card.ability.extra.blindmult
        end
		
    end
}

SMODS.Joker {
	key = 'divider',
	loc_txt = {
		name = 'A101',
		text = {
			"{C:mult}+#1# mult{} divided by {C:attention}how many{}",
			"{C:attention}cards were scored{}, per card"
		}
	},
	config = { extra = { mult = 4 } },
	rarity = 2,
	atlas = 'Jokers',
	pos = { x = 7, y = 0 },
	cost = 5,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult } }
	end,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			-- :get_id tests for the rank of the card. Other than 2-10, Jack is 11, Queen is 12, King is 13, and Ace is 14.	
			-- Specifically returning to context.other_card is fine with multiple values in a single return value, chips/mult are different from chip_mod and mult_mod, and automatically come with a message which plays in order of return.
			if #context.scoring_hand > 0 then	
				local returnmult = card.ability.extra.mult / #context.scoring_hand
				return {
					mult = returnmult,
					card = context.other_card
				}
			end
		end
	end
}

SMODS.Joker {
	key = 'floppy',
	loc_txt = {
		name = 'Floppy Disk',
		text = {
			"{C:attention}1 in #1#{} to retrigger each card, goes",
			"down by #2# when it does get triggered."
		}
	},
	config = { extra = { odds = 10, repetitions = 1 , removal = 1} },
	rarity = 2,
	atlas = 'Jokers',
	pos = { x = 8, y = 0 },
	cost = 5,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.odds, card.ability.extra.removal } }
	end,
	calculate = function(self, card, context)
		-- Checks that the current cardarea is G.play, or the cards that have been played, then checks to see if it's time to check for repetition.
		-- The "not context.repetition_only" is there to keep it separate from seals.
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			-- context.other_card is something that's used when either context.individual or context.repetition is true
			-- It is each card 1 by 1, but in other cases, you'd need to iterate over the scoring hand to check which cards are there.
			local fathertime = card.ability.extra
			if fathertime.odds > 1 then
				if pseudorandom('ROCKSTARMADEE') < (1 / fathertime.odds) then
					fathertime.odds = fathertime.odds - fathertime.removal
				end
			end
				return {
					repetitions = card.ability.extra.repetitions,
					card = context.other_card
				}
			end
		end
}

SMODS.Joker {
	key = 'vampanthem',
	loc_txt = {
		name = 'Ultimate Sushi',
		text = {
			"{X:mult,C:white}#1#X Mult",
			"Increases by {C:mult}#2# when hand is played,",
			"divides by {C:attention}#3# when clicked on"
		}
	},
	config = { extra = { xmult = 2, increaser = 2, divider = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult, card.ability.extra.increaser, card.ability.extra.divider } }
	end,
	rarity = 4,
	atlas = 'Jokers',
	pos = { x = 9, y = 0 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 1 },
	cost = 20,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.cry_press and card.states.hover.is == true then
			beno.xmult = beno.xmult / beno.divider
		end
		if context.joker_main then
			beno.xmult = beno.xmult + beno.increaser
			return {
				x_mult = beno.xmult
			}
		end

	end
}

SMODS.Joker {
	key = 'eviljordans',
	loc_txt = {
		name = 'Fractal',
		text = {
			"{X:mult,C:white}#1#X Mult{}, multiplied by",
			"{C:mult}#2#X{} when hand is played,"
		}
	},
	config = { extra = { xmult = 1.4, xmult_mult = 1.4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult, card.ability.extra.xmult_mult } }
	end,
	rarity = 3,
	atlas = 'Jokers',
	pos = { x = 0, y = 1 },
	cost = 10,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.xmult = beno.xmult * beno.xmult_mult
			return {
				x_mult = beno.xmult,
			}
		end

	end
}

SMODS.Joker {
	key = 'sourceengine',
	loc_txt = {
		name = 'Super Fractal',
		text = {
			"{X:edition,C:dark_edition}#1#X Mult{}, multiplied by",
			"itself when hand is played,"
		}
	},
	config = { extra = { xmult = 1.1, } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult } }
	end,
	rarity = 'xdm_gaming',
	atlas = 'Neon',
	pos = { x = 0, y = 0 },
	cost = 40,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.xmult = beno.xmult * beno.xmult
			return {
				x_mult = beno.xmult
			}
		end

	end
}

SMODS.Joker {
	key = 'jordanrules',
	loc_txt = {
		name = 'Beams Up!',
		text = {
			"{X:chips,C:white}+#1#^#2# Chips{}, second number increases",
			"by #3# {C:attention}every played hand.{}"
		}
	},
	config = { extra = { power = 2, hands_played = 0, adder = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.power, card.ability.extra.hands_played, card.ability.extra.adder } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 1, y = 1 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 2, y = 1 },
	cost = 7,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_played = beno.hands_played + beno.adder
			return {
				chips = (beno.power^beno.hands_played)
			}

		end

	end
}

SMODS.Joker {
	key = 'tomhollandmanwtf',
	loc_txt = {
		name = 'headphone warning',
		text = {
			"{X:mult,C:white}#1#X Mult{}, changes",
			"based on game volume."
		}
	},
	config = { extra = { xmult = 2, sfx_vol = 0, music_vol = 0, main_vol = 0, division = 250000 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 3, y = 1 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 8,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	update = function(self, card, front)
		local beno = card.ability.extra
		beno.sfx_vol = G.SETTINGS.SOUND.game_sounds_volume
		beno.music_vol = G.SETTINGS.SOUND.music_volume
		beno.main_vol = G.SETTINGS.SOUND.volume
		beno.xmult = math.floor((beno.sfx_vol * beno.music_vol * beno.main_vol) / beno.division) or 1
    end,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			return {
				x_mult = beno.xmult
				
			}
		end

	end
}

T4Joker = {
	T4stations = {
		'Topkapı',
		'Fetihkapı',
		'Vatan',
		'Edirnekapı',
		'Şehitlik',
		'Demirkapı',
		'Topçular',
		'Rami',
		'Uluyol-Bereç',
		'Sağmalcılar',
		'Bosna Çukurçeşme',
		'Ali Fuat Başgil',
		'Taşköprü',
		'Karadeniz',
		'KİPTAŞ Venezia',
		'Cumhuriyet Mahallesi',
		'50. Yıl Baştabya',
		'Hacı Şükrü',
		'Yenimahalle',
		'Sultançiftliği',
		'Cebeci',
		'Mescid-i Selam'
	},
	current_station = 8,
	next_station = 9,
	direction = 1,
	extras = {
		[1] = { mult = 5, chips = 86, xmult = 3, xchips = 6},
		[2] = { mult = 6, chips = 88, xmult = 1, xchips = 1},
		[3] = { mult = 5, chips = 77, xmult = 2, xchips = 5},
		[4] = { mult = 11, chips = 41, xmult = 2, xchips = 8},
		[5] = { mult = 6, chips = 37, xmult = 2, xchips = 9},
		[6] = { mult = 1, chips = 24, xmult = 1, xchips = 9},
		[7] = { mult = 6, chips = 93, xmult = 1, xchips = 5},
		[8] = { mult = 11, chips = 53, xmult = 2, xchips = 7},
		[9] = { mult = 11, chips = 99, xmult = 3, xchips = 9},
		[10] = { mult = 4, chips = 35, xmult = 1, xchips = 8},
		[11] = { mult = 12, chips = 58, xmult = 3, xchips = 2},
		[12] = { mult = 7, chips = 83, xmult = 3, xchips = 4},
		[13] = { mult = 3, chips = 92, xmult = 2, xchips = 1},
		[14] = { mult = 1, chips = 46, xmult = 4, xchips = 10},
		[15] = { mult = 10, chips = 88, xmult = 3, xchips = 8},
		[16] = { mult = 1, chips = 74, xmult = 1, xchips = 9},
		[17] = { mult = 1, chips = 18, xmult = 1, xchips = 7},
		[18] = { mult = 5, chips = 52, xmult = 3, xchips = 10},
		[19] = { mult = 6, chips = 29, xmult = 2, xchips = 8},
		[20] = { mult = 8, chips = 53, xmult = 3, xchips = 4},
		[21] = { mult = 11, chips = 12, xmult = 3, xchips = 9},
		[22] = { mult = 5, chips = 51, xmult = 1, xchips = 7},

	},
	sounds = {
		"xdm_akbil1",
		"xdm_akbil2",
		"xdm_akbil3",
		"xdm_akbil4",
		"xdm_akbil5"
	}
}

SMODS.Joker {
	key = 'SWAMPIZZO',
	loc_txt = {
		name = 'T4 Topkapı - Mescid-i Selam',
		text = {
			"{B:1,C:white}Durak:#2#{},",
			"Sonraki Durak: #3#",
			"{C:mult}+#4# mult{}, {C:chips}+#5# chips{}",
			"{X:mult,C:white}X#6#Mult{}, {X:chips,C:white}X#7#Chips{}"
		}
	},
	config = { extra = { chips = 0, mult = 0, xmult = 1, xchips = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { colours = { HEX('FF803E') },
		[2] = T4Joker.T4stations[T4Joker.current_station] or 'Sik',
		[3] = T4Joker.T4stations[T4Joker.next_station] or 'am',
		[4] = card.ability.extra.mult,
		[5] = card.ability.extra.chips,
		[6] = card.ability.extra.xmult,
		[7] = card.ability.extra.xchips,
	 } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 0, y = 2 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 9,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,

	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then

			--this section is for current_station
			T4Joker.current_station = T4Joker.next_station
			if T4Joker.direction == 1 then -- 1 is forwards(1 to 5), -1 is backwards(5 to 1)
				if T4Joker.current_station == #T4Joker.T4stations then
					T4Joker.direction = -1 --only changes direction of train
				end
			end
			if T4Joker.direction == -1 then
				if T4Joker.current_station == 1 then
					T4Joker.direction = 1 --only changes direction of train
				end
			end
			T4Joker.next_station = T4Joker.next_station + T4Joker.direction
			beno.mult = T4Joker.extras[T4Joker.current_station].mult
			beno.chips = T4Joker.extras[T4Joker.current_station].chips
			beno.xmult = T4Joker.extras[T4Joker.current_station].xmult
			beno.xchips = T4Joker.extras[T4Joker.current_station].xchips
			local next_stop = "Sonraki Durak: "..T4Joker.T4stations[T4Joker.next_station]
			local playablesound = T4Joker.sounds[math.random(#T4Joker.sounds)]
			return {
				sound = playablesound,
				mult = beno.mult,
				chips = beno.chips,
				x_mult = beno.xmult,
				x_chips = beno.xchips,
				message = next_stop
			}
		end

	end
}

SMODS.Joker {
	key = 'holo_error',
	loc_txt = {
		name = 'Winamp',
		text = {
			"MisprintXMULT'"
		}
	},
	config = { extra = { xmult = 0, xchips = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 2, y = 2 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		beno.xchips = pseudorandom('xchips') + 1
		beno.xmult = pseudorandom('xmult') + 1
		if context.joker_main then
			return {
				xmult = beno.xmult,
				xchips = beno.xchips
			}
		end
	end
}

turkishint = {
	framex = 0,
	framey= 0,
	frame_movement = 1
}

SMODS.Joker {
	key = 'turkish_internet',
	loc_txt = {
		name = 'Türk Telekom İnternet',
		text = {
			"her oynanan kart için #1# frame",
			"her oynanan kart {C:mult}+#2# mult{}",
			"el sonu {X:mult,C:white}X#3#Mult{}"
		}
	},
	config = { extra = { plusmult = 4, xmult = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { turkishint.frame_movement, card.ability.extra.plusmult, card.ability.extra.xmult } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'DENIM',
	pos = { x = 0, y = 4 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 0, y = 0},
	cost = 4,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.individual and context.cardarea == G.play then
			-- :get_id tests for the rank of the card. Other than 2-10, Jack is 11, Queen is 12, King is 13, and Ace is 14.	
			-- Specifically returning to context.other_card is fine with multiple values in a single return value, chips/mult are different from chip_mod and mult_mod, and automatically come with a message which plays in order of return
			return {
				mult = beno.plusmult
			}
		end
		if context.joker_main then
			local framex = turkishint.framex
			local framey = turkishint.framey
			local increase = (turkishint.frame_movement * #context.scoring_hand) or 1
			framex = turkishint.framex
			framey = turkishint.framey
			increase = (turkishint.frame_movement * #context.scoring_hand) or 1
			if framex ~= 14 then
				framex = framex + increase
			end
			if framex > 13 then
				framex = (framex + 1) % 15
				framey = framey + turkishint.frame_movement
			end
			if framey > 3 then
				framey = 0
			end
			card.children.floating_sprite:set_sprite_pos( { x = framex, y = framey } )
			turkishint.framex = framex
			turkishint.framey = framey
			return {
				xmult = beno.xmult
			}
		end
	end
}

--local framex = turkishint.framex
--local framey = turkishint.framey
--local increase = (turkishint.frame_movement * #context.scoring_hand) or 1
--framex = turkishint.framex
--framey = turkishint.framey
--increase = (turkishint.frame_movement * #context.scoring_hand) or 1
--if framex ~= 14 then
--	framex = framex + increase
--end
--if framex > 13 then
--	framex = (framex + 1) % 15
--	framey = framey + turkishint.frame_movement
--end
--if framey > 3 then
--	framey = 0
--end
--card.children.floating_sprite:set_sprite_pos( { x = framex, y = framey } )
--turkishint.framex = framex
--turkishint.framey = framey

sodabottles = {
	[1] = "j_xdm_ozkaynak",
	[2] = "j_xdm_beypazar",
	[3] = "j_xdm_sirma",
	[4] = "j_xdm_damla",
	[5] = "j_xdm_kizilay",
	[6] = "j_xdm_camlica",
	[7] = "j_xdm_avsar"
}

SMODS.Joker {
	key = 'chiefkeef',
	loc_txt = {
		name = 'hello cuh',
		text = {
			"'hello cuh'",
			"'hello chief sosa'",
			"Creates one {C:common}Soda Bottle{} if hand",
			"contains a non scoring card."
		}
	},
	config = { extra = { xmult = 0, xchips = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	rarity = 2,
	atlas = 'Jokers',
	pos = { x = 1, y = 2 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			if #context.scoring_hand ~= #context.full_hand then
				local card = create_card("Joker", G.jokers, nil, nil, nil, nil, sodabottles[math.random(#sodabottles)], self.key)
                card:add_to_deck()
                G.jokers:emplace(card)
				play_sound("xdm_thirdsoda")
			end
		end
	end
}

--SODA BOTTLE JOKERS

SMODS.Joker {
	key = 'ozkaynak',
	loc_txt = {
		name = 'Özkaynak Soda',
		text = {
			"{C:chips}+#1# chips,",
			"#2# el içinde bitiyor."
		}
	},
	config = { extra = { chips = 50, hands_left = 6} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.hands_left } }
	end,
	rarity = 1,
	atlas = 'SODA',
	pos = { x = 0, y = 0 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = true, -- i mean theyre already perishing
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left == 0 then
				card:start_dissolve()
    			card = nil
				play_sound("xdm_idroppedit")
			end
			return {
				chips = beno.chips
			}
		end
	end
}

SMODS.Joker {
	key = 'beypazar',
	loc_txt = {
		name = 'Beypazarı Soda',
		text = {
			"{C:mult}+#1# mult,",
			"#2# el içinde bitiyor."
		}
	},
	config = { extra = { mult = 4, hands_left = 5} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.hands_left } }
	end,
	rarity = 1,
	atlas = 'SODA',
	pos = { x = 1, y = 0 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = true, -- i mean theyre already perishing
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left == 0 then
				card:start_dissolve()
    			card = nil
				play_sound("xdm_idroppedit")
			end
			return {
				mult = beno.mult
			}
		end
	end
}

SMODS.Joker {
	key = 'sirma',
	loc_txt = {
		name = 'Sırma Soda',
		text = {
			"{C:chips}+#1# chips,",
			"#2# el içinde bitiyor."
		}
	},
	config = { extra = { chips = 20, hands_left = 11} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.hands_left } }
	end,
	rarity = 1,
	atlas = 'SODA',
	pos = { x = 2, y = 0 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = true, -- i mean theyre already perishing
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left == 0 then
				card:start_dissolve()
    			card = nil
				play_sound("xdm_idroppedit")
			end
			return {
				chips = beno.chips
			}
		end
	end
}

SMODS.Joker {
	key = 'damla',
	loc_txt = {
		name = 'Damla Soda',
		text = {
			"{C:money}$#1# veriyor,",
			"#2# el içinde bitiyor."
		}
	},
	config = { extra = { money = 3, hands_left = 4} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.money, card.ability.extra.hands_left } }
	end,
	rarity = 1,
	atlas = 'SODA',
	pos = { x = 3, y = 0 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = true, -- i mean theyre already perishing
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left == 0 then
				card:start_dissolve()
    			card = nil
				play_sound("xdm_idroppedit")
			end
			return {
				dollars = beno.money
			}
		end
	end
}

SMODS.Joker {
	key = 'kizilay',
	loc_txt = {
		name = 'Kızılay Soda',
		text = {
			"{C:attention}4'te 3{} {C:mult}+#1# mult{} şansı,",
			"{C:attention}4'te 1{} {C:mult}#2# mult{} şansı,",
			"#3# el içinde bitiyor."
		}
	},
	config = { extra = { plusmult = 10, minusmult = -20, hands_left = 6} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.plusmult, card.ability.extra.minusmult, card.ability.extra.hands_left } }
	end,
	rarity = 1,
	atlas = 'SODA',
	pos = { x = 4, y = 0 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = true, -- i mean theyre already perishing
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left == 0 then
				card:start_dissolve()
    			card = nil
				play_sound("xdm_idroppedit")
			end
			local givemult = beno.plusmult
			if pseudorandom('JPEGMAFIA') < 0.25 then
				givemult = beno.minusmult
			end
			return {
				mult = givemult
			}
		end
	end
}

SMODS.Joker {
	key = 'camlica',
	loc_txt = {
		name = 'Çamlıca Gazoz',
		text = {
			"{C:chips}+#1# chips,",
			"{C:mult}+#2# mult",
			"#3# el içinde bitiyor."
		}
	},
	config = { extra = { chips = 40, mult = 5, hands_left = 8} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.hands_left } }
	end,
	rarity = 2,
	atlas = 'SODA',
	pos = { x = 5, y = 0 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = true, -- i mean theyre already perishing
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left == 0 then
				card:start_dissolve()
    			card = nil
				play_sound("xdm_idroppedit")
			end
			return {
				chips = beno.chips,
				mult = beno.mult
			}
		end
	end
}

SMODS.Joker {
	key = 'avsar',
	loc_txt = {
		name = 'Avşar Soda',
		text = {
			"her oynanan kart için",
			"{C:chips}+#1# chips,",
			"{C:mult}+#2# mult",
			"#3# el içinde bitiyor."
		}
	},
	config = { extra = { chips = 10, mult = 3, hands_left = 6} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.hands_left } }
	end,
	rarity = 2,
	atlas = 'SODA',
	pos = { x = 6, y = 0 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = true, -- i mean theyre already perishing
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.individual and context.cardarea == G.play then
			-- :get_id tests for the rank of the card. Other than 2-10, Jack is 11, Queen is 12, King is 13, and Ace is 14.	
			-- Specifically returning to context.other_card is fine with multiple values in a single return value, chips/mult are different from chip_mod and mult_mod, and automatically come with a message which plays in order of return.
			return {
				chips = beno.chips,
				mult = beno.mult
			}
		end
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left == 0 then
				card:start_dissolve()
    			card = nil
				play_sound("xdm_idroppedit")
			end
		end
	end
}

--soda bottle end

SMODS.Joker {
	key = 'fire_cenk',
	loc_txt = {
		name = 'cenk',
		text = {
			"{X:mult,C:white}X#1#Mult{}, ",
			"blind ateş efektleri ile kazanılırsa",
			"{C:attention}X#2#{} yükseliyor"
		}
	},
	config = { extra = { xmult = 1, increment = 1, triggered = false } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult, card.ability.extra.increment } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 7, y = 1 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 5,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.end_of_round and beno.triggered == false then
            if G.ARGS.chip_flames.real_intensity >= 0.000001 then
				beno.triggered = true
				beno.xmult = beno.xmult + beno.increment
			end
		end
		if context.joker_main then
			beno.triggered = false
			return {
				xmult = beno.xmult,
			}
		end
	end
}

SMODS.Joker {
	key = 'crayzhamburger',
	loc_txt = {
		name = 'crazy cenk 2',
		text = {
			"{C:legendary}+#1# kart şeçim limiti{},",
			"{C:blue}+#2# el boyutu"
		}
	},
	config = { extra = { card_select = 4, hand_size = 10 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.card_select, card.ability.extra.hand_size } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 3, y = 2 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 7,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	add_to_deck = function(self, card, from_debuff)
		SMODS.change_play_limit(card.ability.extra.card_select)
		SMODS.change_discard_limit(card.ability.extra.card_select)
		G.hand:change_size(card.ability.extra.hand_size)
	end,
	remove_from_deck = function(self, card, from_debuff)
		SMODS.change_play_limit(-1 * card.ability.extra.card_select)
		SMODS.change_discard_limit(-1 * card.ability.extra.card_select)
		G.hand:change_size(-card.ability.extra.hand_size)
		if not G.GAME.before_play_buffer then
			G.hand:unhighlight_all()
		end
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			play_sound("xdm_rizeli2")
		end
	end
}

SMODS.Joker {
	key = 'MKULTRA',
	loc_txt = {
		name = 'crazy cenk 1.5',
		text = {
			"{C:legendary,E:1,s:1.5}+#1# kart şeçim limit{},",
			"{C:blue,E:1,s:1.4}+#1# el boyutu{},",
			"{C:blue,E:1,s:1.3}+#1# el{},",
			"{C:red,E:1,s:1.2}+#1# discard{},",
			"{C:money,E:1,s:1.1}$#1#{},",
			"{C:mult,E:1,s:1}+#1# mult{},",
			"{C:chips,E:1,s:0.9}+#1# chips{},",
			"{X:mult,C:white,E:1,s:0.8}X#1# mult{},",
			"{X:chips,C:white,E:1,s:0.7}X#1# chips{},",
			"{E:1,s:0.6}her kart #1# retrigger"

		}
	},
	config = { extra = { two = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.two } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 4, y = 2 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 7,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	add_to_deck = function(self, card, from_debuff)
		local benox = card.ability.extra.two
		SMODS.change_play_limit(benox)
		SMODS.change_discard_limit(benox)
		G.hand:change_size(benox)
		G.GAME.round_resets.hands = G.GAME.round_resets.hands + benox
		G.GAME.round_resets.discards = G.GAME.round_resets.discards + benox
	end,
	remove_from_deck = function(self, card, from_debuff)
		local benox = card.ability.extra.two
		SMODS.change_play_limit(-1 * benox)
		SMODS.change_discard_limit(-1 * benox)
		G.hand:change_size(-benox)
		G.GAME.round_resets.hands = G.GAME.round_resets.hands - benox
		G.GAME.round_resets.discards = G.GAME.round_resets.discards - benox
		if not G.GAME.before_play_buffer then
			G.hand:unhighlight_all()
		end
	end,
	calculate = function(self, card, context)
		local benox = card.ability.extra.two
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			-- context.other_card is something that's used when either context.individual or context.repetition is true
			-- It is each card 1 by 1, but in other cases, you'd need to iterate over the scoring hand to check which cards are there.
			return {
				repetitions = benox,
				-- The card the repetitions are applying to is context.other_card
				card = context.other_card
			}
		end
		if context.joker_main then
			return {
				dollars = benox,
				mult = benox,
				chips = benox,
				xmult = benox,
				xchips = benox
			}
		end
	end
}

SMODS.Joker {
	key = 'SKY',
	loc_txt = {
		name = '   sushi       ',
		text = {
			"oynanan her kart için {C:money}$#1#{},",
			"{C:red}-#2# kart seçim limiti"

		}
	},
	config = { extra = { bonus = 20, remove = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.bonus, card.ability.extra.remove } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 5, y = 2 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 7,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	add_to_deck = function(self, card, from_debuff)
		local benox = card.ability.extra
		SMODS.change_play_limit(-1 * benox.remove)
		SMODS.change_discard_limit(-1 * benox.remove)
		if not G.GAME.before_play_buffer then
			G.hand:unhighlight_all()
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		local benox = card.ability.extra.two
		SMODS.change_play_limit(benox.remove)
		SMODS.change_discard_limit(benox.remove)
		if not G.GAME.before_play_buffer then
			G.hand:unhighlight_all()
		end
	end,
	calculate = function(self, card, context)
		local benox = card.ability.extra
		if context.individual and context.cardarea == G.play then
			-- context.other_card is something that's used when either context.individual or context.repetition is true
			-- It is each card 1 by 1, but in other cases, you'd need to iterate over the scoring hand to check which cards are there.
			return {
				dollars = benox.bonus,
				card = context.other_card
			}
		end
	end
}

SMODS.Joker {
	key = 'ankara',
	loc_txt = {
		name = 'ankara',
		text = {
			"oynanan her kart, {C:attention}toplam oynanan kart sayısı kadar retrigger{} eder.",
			"{E:2,s:0.8}(#1# retrigger zurnacı){}"

		}
	},
	config = { extra = { retrig = 0, inc = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.retrig } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 6, y = 2 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 7,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local benox = card.ability.extra
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			benox.retrig = benox.retrig + benox.inc
			return {
				repetitions = benox.retrig,
				card = context.other_card
			}
		end
	end
}

SMODS.Joker {
	key = 'over',
	loc_txt = {
		name = 'WatchDatClock',
		text = {
			"{C:attention}sistem saatine göre{} {C:mult}+mult{} ve {X:chips,C:white}XChips{} verir"

		}
	},
	config = { extra = { mult = 10, xchips =6 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.retrig } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 7, y = 2 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 7,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	calculate = function(self, card, context)
		local benox = card.ability.extra
		if context.joker_main then
			benox.mult = os.date("*t").min
			benox.xchips = os.date("*t").hour
			return {
				mult = benox.mult,
				xchips = benox.xchips,
			}
		end
	end
}

--next update: ^ this fucking thing, Emult_mod

--the joker below is bugged on purpose
SMODS.Joker {
	key = 'YEAHTYLER',
	loc_txt = {
		name = 'nil',
		text = {
			"{X:dark_edition,C:edition,E:1,T:j_xdm_YEAHTYLER}#1#"
		}
	},
	config = { extra = { moneymult = 2} },
	rarity = 'xdm_notnothing',
	atlas = 'Jokers',
	pos = { x = 4, y = 1 },
	soul_pos = { x = 5, y = 1 },
	cost = 1,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.monen } }
	end,
	-- SMODS specific function, gives the returned value in dollars at the end of round, double checks that it's greater than 0 before returning.
	calc_dollar_bonus = function(self, card)
		local bonus = G.GAME.dollars*card.ability.extra.moneymult
		card.ability.extra.moneymult = card.ability.extra.moneymult * 2
		if bonus > 0 then return bonus end
	end
	-- Since there's nothing else to calculate, a calculate function is completely unnecessary.
}

--JOKER END--------------------------------------------------------------------------------------------------
--DECK START-------------------------------------------------------------------------------------------------

SMODS.Back({
    key = "wthelly",
    loc_txt = {
        name = "The Challenge",
        text={
        "Start with 1",
        "{C:attention} Eternal{} {B:1,C:white,T:j_xdm_jokerpokerbalala}GoDaddy Joker",
        },
    },
    
    config = { hands = 0, discards = 0 },
	loc_vars = function (self, info_queue, card)
		return{ vars = { colours = { HEX('3A3DFF') } } }
	end,
    pos = { x = 6, y = 1 },
    order = 1,
    atlas = "Jokers",
    unlocked = true,

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                if G.jokers then
                        local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_xdm_jokerpokerbalala", self.key)
                        card:set_eternal(true) -- make joker eternal
                        card:add_to_deck()
                        G.jokers:emplace(card)
                end
				return true
            end,
        }))
    end
})

SMODS.Back({
    key = "cenkdeck",
    loc_txt = {
        name = "cenk deck",
        text={
        "Start with 5",
        "{C:attention}Random Eternal Jokers{}",
        },
    },
    
    config = { hands = 0, discards = 0 },
    pos = { x = 8, y = 1 },
    order = 1,
    atlas = "Jokers",
    unlocked = true,

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                if G.jokers then
                        for i = 1, 5 do
							local all_jimbos = get_all_jokers()
                        	local card = create_card("Joker", G.jokers, nil, nil, nil, nil, all_jimbos[math.random(#all_jimbos)], self.key)
                        	card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:add_to_deck()
                        	G.jokers:emplace(card)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
							card:set_eternal(true)
                    	end
                	end
				return true
            end,
        }))
    end
})

--DECK END
--TAG START

SMODS.Tag{
    key = 'crankthat',
    loc_txt= {
        name = 'AMEN SKIP',
        text = { "Immediately grants you a",
                "{B:1,C:white}AMEN BREAK!{} Joker!", }},
    atlas = 'Tags',
    pos = { x = 0, y = 0 },
    min_ante = 0,
	loc_vars = function (self, info_queue, card)
		return{ vars = { colours = { HEX('3A3DFF') } } }
	end,
    apply = function(self, tag, context)
        tag:yep('+', G.C.DARK_EDITION, print() )

			G.FUNCS.overlay_menu{
                definition = create_UIBox_custom_video1("DENIM","DENIM!!"),
                config = {no_esc = true}
            }
        	local card = create_card("Joker", G.jokers, nil, nil, nil, nil, xdm_ncalvert_jokers[math.random(#xdm_ncalvert_jokers)], self.key)
        	card:add_to_deck()
        	G.jokers:emplace(card)

        tag.triggered = true
        return true
    end,
}

SMODS.Tag{
    key = 'Sushitag',
    loc_txt= {
        name = 'Sushi Tag',
        text = { "Immediately gives you the",
                "{B:1,C:white}Ultimate Sushi{} Joker", }},
    atlas = 'Tags',
    pos = { x = 1, y = 0 },
	min_ante = 0,
	loc_vars = function (self, info_queue, card)
		return{ vars = { colours = { HEX('3A3DFF') } } }
	end,


    apply = function(self, tag, context)
        tag:yep('+', G.C.DARK_EDITION, print() )

			local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_xdm_vampanthem", self.key)
        	card:add_to_deck()
        	G.jokers:emplace(card)

        tag.triggered = true
        return true
    end,
}

SMODS.Tag{
    key = 'fake_brainstorm',
    loc_txt= {
        name = 'Schematic Tag',
        text = { "Shop has a",
                "{C:attention}Braimstorm", }},
    atlas = 'Tags',
    pos = { x = 2, y = 0 },
	min_ante = 0,
    apply = function(self, tag, context)
        tag:yep('+', G.C.DARK_EDITION, print() )

            G.FUNCS.overlay_menu{
                definition = create_UIBox_custom_video1("siktirgit","I understand..."),
                config = {no_esc = true}
            }
			local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_xdm_YEAHTYLER", self.key)
			card:set_eternal(true)
        	card:add_to_deck()
        	G.jokers:emplace(card)

        tag.triggered = true
        return true
    end,
}

SMODS.Tag{
    key = 'sixpack',
    loc_txt= {
        name = 'SIX PACK',
        text = { "Immediately grants you 6 of the same",
                 "{C:blue}Soda Bottle Joker"}},
    atlas = 'Tags',
    pos = { x = 3, y = 0 },
    min_ante = 0,
	loc_vars = function (self, info_queue, card)
		return{ vars = {  } }
	end,
    apply = function(self, tag, context)
        tag:yep('+', G.C.DARK_EDITION, print() )

			G.FUNCS.overlay_menu{
                definition = create_UIBox_custom_video1("yapyap","tmm"),
                config = {no_esc = true}
            }
        	local zingboing = sodabottles[math.random(#sodabottles)]
			for i = 1, 6 do
                local card = create_card("Joker", G.jokers, nil, nil, nil, nil, zingboing, self.key)
				card:add_to_deck()
                G.jokers:emplace(card)
            end
        tag.triggered = true
        return true
    end,
}

--BU AŞAĞIDAKİLER MAL

--ben SMODS'un amına koyacam
--"until next time!" ahh joker get out my fucking face
--SMODS.Joker{
--    key = 'DISBITCH',
--    loc_txt= {
--        name = 'Subway Surfers',
--        text = { "Randomly gains {C:blue}Chips{} ",
--                 "and {C:red}Mult{} over time",
--                 "Can randomly lose all {C:blue}Chips{} and {C:red}Mult{}",
--                 "{C:inactive}(Currently {C:blue}#1#{C:inactive} Chips {C:red}#2#{C:inactive} Mult)",}
--    },
--    ability = {
--        extra = {
--            anim_timer = 0,
--            current_frame = 1
--        },
--        set = "Joker",
--        mult = 0,
--        chips = 0,
--        xp = 0,
--        played_this_ante = false
--    },
--    atlas = 'DENIM',
--	pos = { x = 0, y = 0 },
--    rarity = 3,
--    cost = 10,
--    pools = {["xdmod_joker"] = true},
--
--    pixel_size = { w = 71 , h = 95 },
--    frame = 0,
--
--    unlocked = true,
--    discovered = true,
--    blueprint_compat = true,
--    eternal_compat = false,
--    perishable_compat = false,
--
--    set_ability = function(self)
--        self.ability.extra.anim_timer = 0
--        self.ability.extra.current_frame = 1
--		xdm:startAnimation(self)  -- 'self' being the joker object
--    end,
--
--	 update = function(self)
--        local total_cols = 15
--        local total_rows = 4
--        local total_frames = total_cols * total_rows
--        local fps = 15
--        local frame_time = 1 / fps
--
--        local anim = self.ability.extra
--        anim.anim_timer = anim.anim_timer + G.TIMERS.REAL
--        if anim.anim_timer >= frame_time then
--            anim.anim_timer = anim.anim_timer - frame_time
--            anim.current_frame = (anim.current_frame % total_frames) + 1
--
--            -- Calculate x, y atlas position (zero-based)
--            local frame_index = anim.current_frame - 1
--            local x = frame_index % total_cols
--            local y = math.floor(frame_index / total_cols)
--
--            -- Set the atlas frame position for this joker
--            self.pos = { x = x, y = y }
--        end
--    end,
--
--    custom_render = function(self, card)
--        local frame_w = 120
--        local frame_h = 180
--
--        local atlas = G.ASSET_ATLAS["venom"]
--        local quad_x = (self.pos.x or 0) * frame_w
--        local quad_y = (self.pos.y or 0) * frame_h
--
--        draw_image{
--            atlas = atlas,
--            x = card.pos.x,
--            y = card.pos.y,
--            w = card.T.w,
--            h = card.T.h,
--            z = card.T.z,
--            quad = {
--                x = quad_x,
--                y = quad_y,
--                w = frame_w,
--                h = frame_h
--            },
--            colour = card.colour,
--            alpha = card.alpha,
--            rotation = card.rotation,
--            pivot_x = 0.5,
--            pivot_y = 0.5
--        }
--    end
--}

--SMODS.Joker {
--	-- How the code refers to the joker.
--	key = 'T4topkapı_to_mescid_i_selam',
--	-- loc_text is the actual name and description that show in-game for the card.
--	loc_txt = {
--		name = 'T4 Topkapı - Mescid-i Selam',
--		text = {
--			"{C:mult}+#1# {} Mult,",
--			"self destructs in #2# hands.",
--			"Increases by #3# every {C:money}$#4#",
--			"earned between rounds."
--		}
--	},
--	config = { extra = { mult = 40, hands_left = 4, increase = 1, modd = 5, prevmoney = 0 } },
--	loc_vars = function(self, info_queue, card)
--		return { vars = { card.ability.extra.mult, card.ability.extra.hands_left, card.ability.extra.increase, card.ability.extra.modd } }
--	end,
--	-- Sets rarity. 1 common, 2 uncommon, 3 rare, 4 legendary.
--	rarity = 2,
--	-- Which atlas key to pull from.
--	atlas = 'Jokers',
--	-- This card's position on the atlas, starting at {x=0,y=0} for the very top left.
--	pos = { x = 0, y = 0 },
--	-- Cost of card in shop.
--	cost = 2,
--	pools = { ["xdmod_joker"] = true },
--	-- The functioning part of the joker, looks at context to decide what step of scoring the game is on, and then gives a 'return' value if something activates.
--	calculate = function(self, card, context)
--		if context.ending_shop then
--			local bonustemp = tonumber(G.GAME.dollars) - card.ability.extra.prevmoney
--			if bonustemp >= card.ability.extra.modd then
--				local bonus = math.floor(bonustemp / card.ability.extra.modd)
--				card.ability.extra.hands_left = card.ability.extra.hands_left + bonus
--				print("current m:"..tonumber(G.GAME.dollars))
--				print("end of round m:"..card.ability.extra.prevmoney)
--				print("added hands:"..bonus)
--			end
--			if card.ability.extra.hands_left == 0 then
--				card:start_dissolve()
--				card = nil
--			end
--		end
--		if context.joker_main then
--			card.ability.extra.prevmoney = tonumber(G.GAME.dollars)
--			card.ability.extra.hands_left = card.ability.extra.hands_left - 1
--			return {
--				print(card.ability.extra.prevmoney),
--				print(type(G.GAME.dollars)),
--				mult = card.ability.extra.mult,
--			}
--		end
--	end
--}

--ÇALIŞMAYAN MAL JOKER
--SMODS.Joker {
--    key = 'flopyy',
--    loc_txt = {
--        name = 'Floppy Disk',
--        text = {
--            "Saves chip and mult of",
--            "played hand every 3 rounds",
--            "({C:chips}+#1# Chips{} {C:mult}+#2# Mult)",
--            "({C:attention}#3# hands left)"
--        }
--    },
--    config = { extra = { chips = 0, mult = 0, hands_left = 3 } },
--    loc_vars = function(self, info_queue, card)
--        return { vars = { card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.hands_left } }
--    end,
--    rarity = 2,
--    atlas = 'Jokers',
--    pos = { x = 0, y = 0 },
--    cost = 2,
--    calculate = function(self, card, context)
--        if context.joker_main and context.scoring_hand then
--            print("context DEBUG flopyy calculate: chips=", context.chips, "mult=", context.mult)
--			print("G.GAME DEBUG chips:", G.GAME.Chips, "mult:", G.GAME.Mult)
--
--            local amhac = card.ability.extra
--            amhac.hands_left = amhac.hands_left - 1
--
--            if amhac.hands_left <= 0 then
--                amhac.chips = math.floor(tonumber(context.chips) or 0)
--                amhac.mult  = math.floor(tonumber(context.mult) or 1)
--                amhac.hands_left = 3
--            end
--
--            return {
--                chips = amhac.chips,
--                mult = amhac.mult
--            }
--        end
--    end
--}