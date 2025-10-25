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

SMODS.Atlas {
	-- Key for code to find it with
	key = "NewTags",
	-- The name of the file, for the code to pull the atlas from
	path = "Tags.png",
	-- Width of each sprite in 1x size
	px = 34,
	-- Height of each sprite in 1x size
	py = 34,
	frames = 1,
    atlas_table = 'ANIMATION_ATLAS'
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

SMODS.Atlas {
	-- Key for code to find it with
	key = "Jphotos",
	-- The name of the file, for the code to pull the atlas from
	path = "Jphotos.png",
	-- Width of each sprite in 1x size
	px = 71,
	-- Height of each sprite in 1x size
	py = 95
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
	key = 'hipower',          -- internal key
	loc_txt = { name = 'Empty Value Error', text = {} },  -- shows literally: nil
	pools = { Joker = true, ["xdmod_joker"] = true },    -- allow in Joker pool
	default_weight = 0.04,         -- spawn weight
	badge_colour = HEX'5D0E63',  -- whatever color
}:register()
xdm_hipower_jokers = {
	'j_xdm_fuckingit',
	'j_xdm_putitong',
	'j_xdm_justobservatory',
	'j_xdm_HONEST',
	'j_xdm_negativeaintbad',
	'j_xdm_yemeksepeti',
	'j_xdm_bitchassn',
	'j_xdm_hazard',
	'j_xdm_clyptid',
	'j_xdm_jimbo',
	'j_xdm_thankyou',
	'j_xdm_codebasist',
	'j_xdm_plasma_hd',
	'j_xdm_donerkebab',
	'j_xdm_adobe'
}

SMODS.Rarity{
	key = 'ncalvert',          -- internal key
	loc_txt = { name = 'AMEN BREAK!', text = {} },  -- shows literally: nil
	pools = { Joker = true, ["xdmod_joker"] = true },    -- allow in Joker pool
	default_weight = 0.1,         -- spawn weight
	badge_colour = HEX'3A3DFF',  -- whatever color
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
		"j_xdm_ankara",
		"j_xdm_over",
		"j_xdm_nofearorsum",
		"j_xdm_dontrely",
		"j_xdm_3g",
		"j_xdm_advert"
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

function get_all_base_jokers()
    local jokers = {}
    for key, center in pairs(G.P_CENTERS) do
        if key:sub(1, 2) == "j_" and center.set == "Joker" and not center.mod then
            table.insert(jokers, key)
        end
    end
    return jokers
end

function list_contains(list, str)
    for _, v in ipairs(list) do
        if v == str then
            return true
        end
    end
    return false
end

function psuedorand_num(bottom, top, key)
	local pskey = key
	local t_count = bottom
	local t_end = top + 1
	local responsetable = {}
	while t_count < t_end do
		table.insert(responsetable,t_count)
		t_count = t_count+1
	end

	local rtablenum = #responsetable
	local t_am = rtablenum + 1
	local t_multcount = 1
	local multtable = {}

	if 0 < rtablenum and rtablenum < 11 then
		table.insert(multtable,0)
		while t_multcount < t_am do
			table.insert(multtable,(t_multcount*100))
			t_multcount = t_multcount + 1
		end
	end
	if 10 < rtablenum and rtablenum < 101 then
		table.insert(multtable,0)
		while t_multcount < t_am do
			table.insert(multtable,(t_multcount*10))
			t_multcount = t_multcount + 1
		end
	end
	if 100 < rtablenum and rtablenum < 1001 then
		while t_multcount < t_am do
			table.insert(multtable,t_multcount)
			t_multcount = t_multcount + 1
		end
	end

	local findint = pseudorandom(pskey)
	local foundint = nil
	if rtablenum < 101 then
		local intfound = false
		local t_tablesearch = 1
		while t_tablesearch < t_am or intfound ~= true do
			local above = t_tablesearch + 1
			if multtable[t_tablesearch] < findint < multtable[above] then
				foundint = t_tablesearch
				intfound = true
			else t_tablesearch = t_tablesearch + 1 end
		end
	end

	if rtablenum > 100 then
		
	end
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
			"{C:mult}+#1#{} Mult"
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
	demicoloncompat = true,
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
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
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
	demicoloncompat = true,
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
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
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
	demicoloncompat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			-- :get_id tests for the rank of the card. Other than 2-10, Jack is 11, Queen is 12, King is 13, and Ace is 14.
				-- Specifically returning to context.other_card is fine with multiple values in a single return value, chips/mult are different from chip_mod and mult_mod, and automatically come with a message which plays in order of return
					local xxchips = context.other_card:get_chip_bonus()
					local half = card.ability.extra.half_of_sum or 0.5
					return {
						chips = xxchips * (-half),
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
	demicoloncompat = true,
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
			"{X:rare,C:white}X#2#{} blind size"
		}
	},
	config = { extra = { extra_hands = 10, blindmult = 2.5 } },
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 6, y = 0 },
	cost = 4,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.extra_hands, card.ability.extra.blindmult } }
	end,
	add_to_deck = function(self, card, from_debuff)
		-- Changes a G.GAME variable, which is usually a global value that's specific to the current run.
		-- These are initialized in game.lua under the Game:init_game_object() function, and you can look through them to get an idea of the things you can change.
		G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.extra_hands
		G.GAME.starting_params.ante_scaling = G.GAME.starting_params.ante_scaling * card.ability.extra.blindmult
	end,
	-- Inverse of above function.
	remove_from_deck = function(self, card, from_debuff)
		-- Adds - instead of +, so they get subtracted when this card is removed.
		G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.extra_hands
		G.GAME.starting_params.ante_scaling = G.GAME.starting_params.ante_scaling / card.ability.extra.blindmult
	end,
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
	config = { extra = { mult = 50 } },
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
	demicoloncompat = true,
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
			"{C:attention}#3# in #1#{} to retrigger each card, odds",
			"increase by #2# when it does get triggered."
		}
	},
	config = { extra = { odds = 6, repetitions = 1 , removal = 1} },
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
	demicoloncompat = true,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.odds, card.ability.extra.removal, G.GAME.probabilities.normal } }
	end,
	calculate = function(self, card, context)
		local fathertime = card.ability.extra
		-- Checks that the current cardarea is G.play, or the cards that have been played, then checks to see if it's time to check for repetition.
		-- The "not context.repetition_only" is there to keep it separate from seals.
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			-- context.other_card is something that's used when either context.individual or context.repetition is true
			-- It is each card 1 by 1, but in other cases, you'd need to iterate over the scoring hand to check which cards are there.
			
			if fathertime.odds > 1 then
				if pseudorandom('ROCKSTARMADEE') < (G.GAME.probabilities.normal / fathertime.odds) then
					fathertime.odds = fathertime.odds - fathertime.removal
					return {
						repetitions = card.ability.extra.repetitions,
						message = "Upgrade",
						card = context.other_card
					}
				end
			else if fathertime.odds < 1.1 then
				return {
					repetitions = card.ability.extra.repetitions,
					card = context.other_card
				}
			end
		end
		end
	end
}

SMODS.Joker {
	key = 'vampanthem',
	loc_txt = {
		name = 'Ultimate Sushi',
		text = {
			"{X:mult,C:white}X#1# Mult",
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
	demicoloncompat = true,
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
			"{X:mult,C:white}X#1# Mult{}, multiplied by",
			"{C:mult}X#2#{} when hand is played,"
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
	demicoloncompat = true,
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
			"{X:edition,C:dark_edition}X#1# Mult{}, multiplied by",
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
	demicoloncompat = true,
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
			"{X:chips,C:white}+#1#^#2# Chips{}, power increases",
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
	demicoloncompat = true,
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
			"{X:mult,C:white}X#1# Mult{}, changes",
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
	demicoloncompat = true,
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
		'Bosna-Çukurçeşme',
		'Ali Fuat Başgil',
		'Taşköprü',
		'Karadeniz',
		'KİPTAŞ Venezia',
		'Cumhuriyet Mahallesi',
		'50. Yıl-Baştabya',
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
	demicoloncompat = true,
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
			"ultra-misprintttt"
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
	demicoloncompat = true,
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
			"each played card is #1# frame moved,",
			"each card played gets {C:mult}+#2# mult{}",
			"{X:mult,C:white}X#3#Mult{} at the end of hand"
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
	demicoloncompat = true,
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
	config = { extra = { xmult = 0, xchips = 0, goodkid = 1 } },
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
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			if #context.scoring_hand ~= #context.full_hand then
				local l = 0
				while l < beno.goodkid do
					local card = create_card("Joker", G.jokers, nil, nil, nil, nil, sodabottles[math.random(#sodabottles)], self.key)
                card:add_to_deck()
                G.jokers:emplace(card)
				play_sound("xdm_thirdsoda")
				l = l + 1
				end
			end
		end
	end
}

--SODA BOTTLE JOKERS

SMODS.Joker { key = 'ozkaynak', loc_txt = { name = 'Özkaynak Soda', text = { "{C:chips}+#1# chips,", "finishes in #2# hands." } },
	config = { extra = { chips = 50, hands_left = 6} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.hands_left } }
	end, rarity = 1, atlas = 'SODA', pos = { x = 0, y = 0 }, cost = 4, pools = { ["xdmod_joker"] = true }, unlocked = true, discovered = true,
	blueprint_compat = false, eternal_compat = false, perishable_compat = true, demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left < 0.1 then
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

SMODS.Joker { key = 'beypazar', loc_txt = { name = 'Beypazarı Soda', text = { "{C:mult}+#1# mult,", "finishes in #2# hands." } },
	config = { extra = { mult = 4, hands_left = 5} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.hands_left } }
	end, rarity = 1, atlas = 'SODA', pos = { x = 1, y = 0 }, cost = 4, pools = { ["xdmod_joker"] = true }, unlocked = true, discovered = true,
	blueprint_compat = false, eternal_compat = false, perishable_compat = true, demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left < 0.1 then
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

SMODS.Joker { key = 'sirma', loc_txt = { name = 'Sırma Soda', text = { "{C:chips}+#1# chips,", "finishes in #2# hands." } },
	config = { extra = { chips = 20, hands_left = 11} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.hands_left } }
	end, rarity = 1, atlas = 'SODA', pos = { x = 2, y = 0 }, cost = 4, pools = { ["xdmod_joker"] = true }, unlocked = true, discovered = true,
	blueprint_compat = false, eternal_compat = false, perishable_compat = true, demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left < 0.1 then
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

SMODS.Joker { key = 'damla', loc_txt = { name = 'Damla Soda', text = { "gives {C:money}$#1#,", "finishes in #2# hands." } },
	config = { extra = { money = 3, hands_left = 4} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.money, card.ability.extra.hands_left } }
	end, rarity = 1, atlas = 'SODA', pos = { x = 3, y = 0 }, cost = 4, pools = { ["xdmod_joker"] = true }, unlocked = true, discovered = true,
	blueprint_compat = false, eternal_compat = false, perishable_compat = true, demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left < 0.1 then
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

SMODS.Joker { key = 'kizilay', loc_txt = { name = 'Kızılay Soda', text = { "{C:attention}#5# in #6# chance for{} {C:mult}+#1# mult{},",
			"{C:attention}#4# in #6# chance for{} {C:mult}#2# mult{},",
			"finishes in #3# hands." } },
	config = { extra = { plusmult = 10, minusmult = -20, hands_left = 6, div = 4} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.plusmult, card.ability.extra.minusmult, card.ability.extra.hands_left, G.GAME.probabilities.normal, 4 - G.GAME.probabilities.normal, card.ability.extra.div } }
	end, rarity = 1, atlas = 'SODA', pos = { x = 4, y = 0 }, cost = 4, pools = { ["xdmod_joker"] = true }, unlocked = true, discovered = true,
	blueprint_compat = false, eternal_compat = false, perishable_compat = true, demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left < 0.1 then
				card:start_dissolve()
    			card = nil
				play_sound("xdm_idroppedit")
			end
			local givemult = beno.plusmult
			if pseudorandom('JPEGMAFIA') < (G.GAME.probabilities.normal / beno.div) then
				givemult = beno.minusmult
			end
			return {
				mult = givemult
			}
		end
	end
}

SMODS.Joker { key = 'camlica', loc_txt = { name = 'Çamlıca Gazoz', text = { "{C:chips}+#1# chips,", "{C:mult}+#2# mult", "finishes in #3# hands." } },
	config = { extra = { chips = 40, mult = 5, hands_left = 8} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.hands_left } }
	end, rarity = 2, atlas = 'SODA', pos = { x = 5, y = 0 }, cost = 4, pools = { ["xdmod_joker"] = true }, unlocked = true, discovered = true,
	blueprint_compat = false, eternal_compat = false, perishable_compat = true, demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_left = beno.hands_left - 1
			if beno.hands_left < 0.1 then
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

SMODS.Joker { key = 'avsar', loc_txt = { name = 'Avşar Soda', text = { "{C:chips}+#1# chips,", "{C:mult}+#2# mult{} for each card", "finishes in #3# hands." } },
	config = { extra = { chips = 10, mult = 3, hands_left = 6} },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.hands_left } }
	end, rarity = 2, atlas = 'SODA', pos = { x = 6, y = 0 }, cost = 4, pools = { ["xdmod_joker"] = true }, unlocked = true, discovered = true,
	blueprint_compat = false, eternal_compat = false, perishable_compat = true, demicoloncompat = true,
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
			if beno.hands_left < 0.1 then
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
			"{X:mult,C:white}X#1#Mult{}, if blind is",
			"beaten with fire effects,",
			"gains {C:attention}X#2# Mult{}"
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
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.end_of_round and beno.triggered == false then
            if SMODS.last_hand_oneshot then
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
			"{C:legendary}+#1# card selection limit{},",
			"{C:blue}+#2# hand size"
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
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
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
			"{C:legendary,E:1,s:1.5}+#1# card selection limit{},",
			"{C:blue,E:1,s:1.4}+#1# hand size{},",
			"{C:blue,E:1,s:1.3}+#1# hands{},",
			"{C:red,E:1,s:1.2}+#1# discards{},",
			"{C:money,E:1,s:1.1}$#1#{},",
			"{C:mult,E:1,s:1}+#1# mult{},",
			"{C:chips,E:1,s:0.9}+#1# chips{},",
			"{X:mult,C:white,E:1,s:0.8}X#1# mult{},",
			"{X:chips,C:white,E:1,s:0.7}X#1# chips{},",
			"{E:1,s:0.6}each card gets retriggered #1# times"

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
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
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
			"each played card gives {C:money}$#1#{},",
			"{C:red}-#2# card selection limit"

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
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	add_to_deck = function(self, card, from_debuff)
		local benox = card.ability.extra
		SMODS.change_play_limit(-1 * benox.remove)
		SMODS.change_discard_limit(-1 * benox.remove)
		if not G.GAME.before_play_buffer then
			G.hand:unhighlight_all()
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		local benox = card.ability.extra
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
			"each card played, {C:attention}gets retriggered by how many cards were played{}.",
			"{E:2,s:0.8}(#1# retriggers zurnacı){}"

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
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
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
			"gives {C:mult}+mult{} and {X:chips,C:white}XChips{} based on {C:attention}the system clock"

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
	demicoloncompat = true,
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



googlephotos = {
	photopos = {
		[1] = { x = 1, y = 0, name = 'cenk' },-- crazy cenk 1.5 photo
		[2] = { x = 2, y = 0, name = 'cenk 2' }, --crazy cenk 2 photo
		[3] = { x = 3, y = 0, name = 'sushi' }, --sushi photo
	},
	photovars = {
		[1] = { chips_eoh = 100,
				mult_eoh = 5,
				bonus_eor = 5,
				xmult_eoh = 2,
				xchips_eoh = 3,
				message_eoh = 'cenk!'
		}, --put some other shit here LATER
		[2] =  { xmult_eoh = 4.5,
				 xchips_eof = 3.5,
				 message_eoh = 'lol oynuyom'
		},
		[3] = { chips_eoh = 99, 
				mult_eoh = 17,
				bonus_eor = 55,
				Emult_eoh = 1.6,
				message_eoh = 'miaaw'
		}

	},
	photoatlas = 'Jphotos'
}

SMODS.Joker {
	key = 'nofearorsum',
	loc_txt = {
		name = 'Google Photograph',
		text = {
			"{C:attention}Pulls a random photo from xdec's gallery{},",
			"gives different {C:mult}mult{}, {C:chips}chips{}, and etc. based on the photo"

		}
	},
	config = { extra = { chips_eoh = 0, --pc is 'per card', eoh is 'end of hand', eor is 'end of round'
						 mult_eoh = 0,
						 bonus_eoh = 0,
						 bonus_eor = 0,
						 xmult_eoh = 1,
						 xchips_eoh = 1,
						 Emult_eoh = 1,
						 message_eoh = '',
						 photo_id = 3
	} },
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = googlephotos.photoatlas,
	pos = { x = 0, y = 0 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 3, y = 0 },
	cost = 7,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beep = card.ability.extra
		local gp = googlephotos
		if context.joker_main then
			local photo = math.random(#googlephotos.photopos)
			beep.photo_id = photo
			local framepos = { x = googlephotos.photopos[photo].x, y = googlephotos.photopos[photo].y }
			card.children.floating_sprite:set_sprite_pos( framepos )
			beep.chips_eoh = (gp.photovars[photo].chips_eoh) or 0
			beep.mult_eoh = (gp.photovars[photo].mult_eoh) or 0
			beep.bonus_eoh = (gp.photovars[photo].bonus_eoh) or 0
			beep.bonus_eor = (gp.photovars[photo].bonus_eor) or 0
			beep.xchips_eoh = (gp.photovars[photo].xchips_eoh) or 1
			beep.xmult_eoh = (gp.photovars[photo].xmult_eoh) or 1
			beep.Emult_eoh = (gp.photovars[photo].Emult_eoh) or 1
			beep.message_eoh = (gp.photovars[photo].message_eoh) or ''
			return{
				chips = beep.chips_eoh,
				mult = beep.mult_eoh, 
				bonus = beep.bonus_eoh,
				xchips = beep.xchips_eoh,
				xmult = beep.xmult_eoh,
				Emult_mod = beep.Emult_eoh,
				message = beep.message_eoh,
			}
		end
	end,
	calc_dollar_bonus = function(self, card)
		local bonus = (card.ability.extra.bonus_eor)
		if bonus > 0 then return bonus end
	end
}

SMODS.Joker {
	key = 'dontrely',
	loc_txt = {
		name = 'Bank Error',
		text = {
			"{X:green,C:money}#1#"

		}
	},
	config = { extra = { var1 = {
							[1] = -1,
							[2] = 27,
							[3] = 1738,
							[4] = -26,
							[5] = 1
						},
						var2 = { 
							[1] = 20,
							[2] = 5,
							[3] = 10,
							[4] = -58,
							[5] = 2
						},
						var3 = {
							[1] = 0.5,
							[2] = 100,
							[3] = 7,
							[4] = 69,
							[5] = 420,
						},
						var4 = {
							[1] = 3,
							[2] = 48,
							[3] = 55,
							[4] = 16,
							[5] = 80
						},
						var5 = {
							[1] = 1,
							[2] = 2,
							[3] = 1,
							[4] = 5,
							[5] = 1.1
						}
	} },
	loc_vars = function(self, info_queue, card)
		return { vars = { [1] = 'Adds a random amount of money to your account' } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 9, y = 2 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 7,
	pools = { ["ncalvert"] = true, ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calc_dollar_bonus = function(self, card)
		local brb = card.ability.extra
		local v1 = brb.var1[math.random(5)]
		local v2 = brb.var2[math.random(5)]
		local v3 = brb.var3[math.random(5)]
		local v4 = brb.var4[math.random(5)]
		local v5 = brb.var5[math.random(5)]
		local bonus = (((v1 - v2) * v3) / v4) ^v5
		if bonus ~= 0 then return bonus end
		if pseudorandom('xdec') > 0.4 then
			card:start_dissolve()
    		card = nil
		end
	end
}

SMODS.Joker {
	key = 'fuckingit',
	loc_txt = {
		name = 'Lag',
		text = {
			"Sends you to a {C:attention}random ante between 0 and #3#",
			"every boss blind. {X:mult,C:white}X#1#Mult{}, increases by {C:mult}#2#{} every hand."
		}
	},
	config = { extra = { max_ante = 7, triggered = false, hp = 1, inc = 0.5, checkend = true } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.hp, card.ability.extra.inc, card.ability.extra.max_ante + 1 } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 8, y = 2 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.end_of_round and beno.triggered == false then
			beno.triggered = true
			if G.GAME.round_resets.ante > 9 then
				beno.max_ante = 38
				beno.checkend = false
			end
			if (G.GAME.round_resets.ante < 7 or G.GAME.round_resets.ante > 9) or beno.checkend ~= true then
				if G.GAME.blind:get_type() == 'Boss' then
					G.GAME.round_resets.ante = math.random(-1, beno.max_ante)
				end
			end
		end
		if context.ending_shop then
			beno.triggered = false
		end
		if context.joker_main then
			beno.hp = beno.hp + beno.inc
			beno.triggered = false
			
			return {
				xmult = beno.hp
			}
		end
	end
}

SMODS.Joker {
	key = 'putitong',
	loc_txt = {
		name = '/teleport @a',
		text = {
			"Gives you {C:mult}mult{} and {C:chips}chips{} based on cursor position."
		}
	},
	config = { extra = { chips = 0, mult = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.hp, card.ability.extra.inc } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 1, y = 3 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			local cc, mm = love.mouse.getPosition()
			return {
				chips = cc,
				mult = mm
			}
		end
	end
}

give_mult=false
SMODS.Joker {
	key = 'justobservatory',
	loc_txt = {
		name = 'Blue Screen',
		text = {
			"{C:blue}Gives you{} {C:red}+#1# mult{} {C:blue}UNLESS",
			"{C:blue}the game crashes or you exit",
			"{C:blue}out of the game."
		}
	},
	config = { extra = { mult = 404 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 2, y = 3 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	add_to_deck = function(self, card, from_debuff)
		give_mult=true
		local beno = card.ability.extra
		beno.mult = 404
	end,
	remove_from_deck = function(self, card, from_debuff)
		give_mult=false
	end,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		beno.mult = 404
		if context.joker_main then
			if give_mult ~= false then
				return{mult = beno.mult}
			end
			beno.mult = 404
		end
	end
}

--card.ability.name
SMODS.Joker {
	key = 'HONEST',
	loc_txt = {
		name = 'Reverseprint',
		text = {
			"Creates a new copy of the Joker",
			"to the right {C:red}and then kills itself."
		}
	},
	config = { extra = { triggered = false, making = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.hp, card.ability.extra.inc } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 3, y = 3 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			local index = nil
			local rightindex = nil
			local rightkey = nil
			for i, j in ipairs(G.jokers.cards) do
			    if j == card then
			        index = i
					rightindex = i +1
					if G.jokers.cards[rightindex] ~= nil then
						rightkey = G.jokers.cards[rightindex].config.center_key
					end
			    end
			end
			print(rightkey)
			print(rightindex)
			if rightkey ~= nil and rightkey ~= 'j_xdm_HONEST' then
				card:start_dissolve()
    			card = nil
				local g = 0
				while g < beno.making do
					local card = create_card("Joker", G.jokers, nil, nil, nil, nil, rightkey, self.key)
                	card:add_to_deck()
                	G.jokers:emplace(card)
					g = g +1
				end
			end
		end
	end
}

--the joker below is bugged on purpose
--I CAN FINALLY FUCKING LEAVE THIS DIPSHIT JOKER BEHIND LETS GO
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
	cost = 0,
	pools = { ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	demicoloncompat = false,
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

--hol up
xdm_futureversions = 1
SMODS.Joker {
	key = 'negativeaintbad',
	loc_txt = {
		name = 'Broken Printer',
		text = {
			"Buying this joker gives {C:dark_edition}+#1# joker slots{}.",
			"Selling does not revoke the extra slots,",
			"Next version of this joker will have +#2#"
		}
	},
	config = { extra = { next = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { xdm_futureversions, card.ability.extra.next } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 4, y = 3 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = false,
	perishable_compat = true,
	demicoloncompat = true,
	add_to_deck = function(self, card, from_debuff)
		G.jokers.config.card_limit = (G.jokers.config.card_limit + xdm_futureversions)
	end,
	remove_from_deck = function(self, card, from_debuff)
		local beno = card.ability.extra
		xdm_futureversions = xdm_futureversions + beno.next
	end,
}

SMODS.Joker {
	key = 'yemeksepeti',
	loc_txt = {
		name = 'Overflow',
		text = {
			"{X:legendary,C:white}^#1# Mult{}, increases by #2# for each joker",
			"above the joker limit of #3#"	
		}
	},
	config = { extra = { emult = 1, incr = 1, fake_limit = 5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.emult, card.ability.extra.incr, card.ability.extra.fake_limit } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 5, y = 3 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	add_to_deck = function(self, card, from_debuff)
		local beno = card.ability.extra
		beno.fake_limit = G.jokers.config.card_limit
		if #G.jokers.cards > G.jokers.config.card_limit then
			beno.emult = 1 + (beno.incr * (#G.jokers.cards - G.jokers.config.card_limit))
		else beno.emult = 1 end
	end,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.ending_shop then
			beno.fake_limit = G.jokers.config.card_limit
			if #G.jokers.cards > G.jokers.config.card_limit then
				beno.emult = 1 + (beno.incr * (#G.jokers.cards - G.jokers.config.card_limit))
			else beno.emult = 1 end
		end
		if context.end_of_round then
			beno.fake_limit = G.jokers.config.card_limit
			if #G.jokers.cards > G.jokers.config.card_limit then
				beno.emult = 1 + (beno.incr * (#G.jokers.cards - G.jokers.config.card_limit))
			else beno.emult = 1 end
		end
		if context.joker_main then
			beno.fake_limit = G.jokers.config.card_limit
			if #G.jokers.cards > G.jokers.config.card_limit then
				beno.emult = 1 + (beno.incr * (#G.jokers.cards - G.jokers.config.card_limit))
			else beno.emult = 1 end
			return { 
				Emult_mod = beno.emult,
				message = '^'..beno.emult..' MULT!'
			}
		end
	end
}

SMODS.Joker {
	key = 'bitchassn',
	loc_txt = {
		name = 'Steppin On BUSINEZZ',
		text = {
			"Increases discard selection limit and hand size",
			"by #1# for {C:attention}every #3# hands played [#2#]."
		}
	},
	config = { extra = { remove = 0, inr = 1, hands_played = 0, three = 3 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.inr, card.ability.extra.hands_played, card.ability.extra.three } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 6, y = 3 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	remove_from_deck = function(self, card, from_debuff)
		local beno = card.ability.extra
		SMODS.change_discard_limit(beno.remove)
		G.hand:change_size(beno.remove)
	end,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			beno.hands_played = beno.hands_played + 1
			if beno.hands_played > beno.three - 1 then
				beno.hands_played = 0
				SMODS.change_discard_limit(beno.inr)
				G.hand:change_size(beno.inr)
				beno.remove = beno.remove - beno.inr
			end
		end
	end
}

SMODS.Joker {
	key = 'hazard',
	loc_txt = {
		name = 'Tesseract',
		text = {
			"{X:legendary,C:white}^#1##2#"
		}
	},
	config = { extra = { echips = 6, played = 0, death = false, triggered = false } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.echips, [2] = ' Chips' } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 7, y = 3 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.cry_press and card.states.hover.is == true and beno.triggered ~= true then
			beno.triggered = true
			card:start_dissolve()
    		card = nil
			return{
				message = 'Disrupted!'
			}
		end
		if context.end_of_round and beno.death == true and beno.triggered ~= true then
			beno.triggered = true
			card:start_dissolve()
    		card = nil
			return{
				message = 'Disrupted!'
			}
		end
		if context.joker_main then
			beno.played = beno.played + 1
			if beno.played > 10 then
				beno.death = true
			end
			return { 
				message = '^'..beno.echips.." MULT!",
				Echip_mod = beno.echips
			}
		end
	end
}

SMODS.Joker {
	key = 'clyptid',
	loc_txt = {
		name = 'Clyptid',
		text = {
			"{C:inactive,E:1,s:0.6}CHAT CLIP THAT!{}",
			"Spawns a {C:spectral}Negative Cryptid Spectral Card{}",
			"every time a consumeable is used.",
			"{C:inactive,s:0.8}Only works when the in rightmost Joker spot."
		}
	},
	config = { extra = { spawn = 1, clyptid = 'c_cryptid', wild = 'c_lovers', death = 'c_death' } },
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 8, y = 3 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.using_consumeable or context.forcetrigger and not context.consumeable.beginning_end then
			if G.jokers.cards[#G.jokers.cards] == card then
				local i = 0
				while i < beno.spawn do
					if context.consumeable.config.center_key ~= beno.clyptid then
						local card = create_card("Spectral", G.consumeables, nil, nil, nil, nil, beno.clyptid, 'j_xdm_clyptid')
						card:set_edition('e_negative', true)
						card:add_to_deck()
           				G.consumeables:emplace(card)
					end
					if context.consumeable.config.center_key == beno.wild then
						local card = create_card("Tarot", G.consumeables, nil, nil, nil, nil, beno.death, 'j_xdm_clyptid')
						card:set_edition('e_negative', true)
						card:add_to_deck()
           				G.consumeables:emplace(card)
					end
					i = i + 1
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'jimbo',
	loc_txt = {
		name = 'Jimbo',
		text = {
			"{C:mult}+#1# mult{}, spawns one of it's brothers."
		}
	},
	config = { extra = {  mult = 4, jimbo = 'j_joker', joke = 'j_xdm_jimbo', triggered = false, spawner = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 0, y = 4 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			local j = 0
			while j < beno.spawner do
				if pseudorandom('SKATE.FOUR') < 0.06 then
					local card = create_card("Joker", G.jokers, nil, nil, nil, nil, beno.joke, 'j_xdm_jimbo')
					card:set_edition('e_negative', true)
					card:add_to_deck()
           			G.jokers:emplace(card)
				end
				local card = create_card("Joker", G.jokers, nil, nil, nil, nil, beno.jimbo, 'j_xdm_jimbo')
				card:add_to_deck()
           		G.jokers:emplace(card)
				j = j + 1
			end
			return{
				mult = beno.mult
			}
		end
	end
}

--the joker below lags the game?? im not sure??
--this is fixed now, only lags when you have an unreasonable amount of jokers
SMODS.Joker {
	key = 'thankyou',
	loc_txt = {
		name = 'BİM',
		text = {
			"{C:dark_edition}Makes all Jokers negative at the end of round,{}",
			"{C:attention}and makes them all regular at the end of the shop.",
			"{C:red,s:0.8}WARNING, this removes all previous editions like{}{C:enhanced,s:0.8} Polychrome, Foil, etc.{} "
		}
	},
	config = { extra = { state = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = {  } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 1, y = 4 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.end_of_round and beno.state == 0 then
			beno.state = 1
			local jimb = #G.jokers.cards + 1
			local index = 1
			while index < jimb do
				local lss = G.jokers.cards[index]
				lss:set_edition('e_negative', true)
				lss = nil
				index = index + 1
			end
		end
		if context.ending_shop and beno.state == 1 then
			beno.state = 0
			local jimb = #G.jokers.cards + 1
			local index = 1
			while index < jimb do
				local lss = G.jokers.cards[index]
				lss:set_edition(nil, true)
				lss = nil
				index = index + 1
			end
		end
	end
}

SMODS.Joker {
	key = 'codebasist',
	loc_txt = {
		name = ',',
		text = {
			"Each vanilla Joker in deck gives {C:mult}+#1# mult{},",
			"Each non-vanilla(Modded) Joker in deck gives {C:mult}+#2# mult{}",
			"{C:inactive}(Currently +#3# and #4# mult)",
			"{C:inactive,s:0.4}slightly bugged"
		}
	},
	config = { extra = { vanillamult = 6, moddedmult = 4.5, bimult = 0, exmult = 1.5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.vanillamult, card.ability.extra.moddedmult, card.ability.extra.bimult, card.ability.extra.exmult } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 2, y = 4 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			local vmult = 0
			local mmult = 0
			local non = 1
			local gg = get_all_base_jokers()
			local kdot = #G.jokers.cards + 1
			while non < kdot do
				local aa = G.jokers.cards[non].config.center_key
				if list_contains(gg, aa) then
					vmult = vmult + beno.vanillamult
				else mmult = mmult + beno.moddedmult end
				non = non + 1
			end
			beno.bimult = vmult
			beno.exmult = mmult
			return{
				mult = vmult + mmult,
			}
		end
	end
}

SMODS.Joker {
	key = 'plasma_hd',
	loc_txt = {
		name = 'Incrementing Value',
		text = {
			"Adds a(#1#) permanent {C:blue}hand{} and {C:red}discard{},",
			"whenever a round is finished"
		}
	},
	config = { extra = { adder = 1, triggered = false } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.adder } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 8, y = 4 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 10,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = false,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.end_of_round and beno.triggered ~= true then
			beno.triggered = true
			G.GAME.round_resets.discards = G.GAME.round_resets.discards + beno.adder
			G.GAME.round_resets.hands = G.GAME.round_resets.hands + beno.adder
		end
		if context.joker_main then
			beno.triggered = false
		end
	end
}

SMODS.Joker {
	key = 'donerkebab',
	loc_txt = {
		name = 'Chicken Döner',
		text = {
			"{C:dark_edition}ALL{} {C:attention}played cards and triggered jokers",
			"are retriggered #1# extra times.",
		}
	},
	config = { extra = { triggers = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.triggers } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 6, y = 4 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 1024,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = false,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.cardarea == G.play and context.repetition and not context.repetition_only then
			-- context.other_card is something that's used when either context.individual or context.repetition is true
			-- It is each card 1 by 1, but in other cases, you'd need to iterate over the scoring hand to check which cards are there.
			return{
				message = 'run it back',
				repetitions = beno.triggers,
				card= context.other_card
			}
		end

		if context.retrigger_joker_check and not context.retrigger_joker and not (context.other_card.ability and context.other_card.ability.name == "j_xdm_donerkebab") then
			return {
				message = 'run it back',
				repetitions = beno.triggers,
				card = card,
			}
		end

		if context.end_of_round and context.repetition then
			return{
				message = 'run it back',
				repetitions = beno.triggers,
			}
		end
	end
}

SMODS.Joker {
	key = 'adobe',
	loc_txt = {
		name = 'i love pirating adobe software',
		text = {
			"{X:chips,C:white}X#1#Chips{} and {X:mult,C:white}X#2#Mult{}",
			"{C:attention}totally random 1 in #3# chance to{} {C:red}crash the game"
		}
	},
	config = { extra = { xchips = 5, xmult = 3, odds = 5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xchips, card.ability.extra.xmult, card.ability.extra.odds } }
	end,
	rarity = 'xdm_hipower',
	atlas = 'Jokers',
	pos = { x = 9, y = 4 },
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	soul_pos = { x = 9, y = 3 },
	cost = 20,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			local gga = math.random(1,beno.odds)
			if gga == 2 then
				local card = create_card("Joker", G.jokers, nil, nil, nil, nil, 'this just makes the game crash LMAOOOOOOOOOOO', self.key)
				card:add_to_deck()
            	G.jokers:emplace(card)
				print(gga)
			else return { xchips = beno.xchips, xmult = beno.xmult} end
		end
	end
}

SMODS.Joker {
	key = 'secks',
	loc_txt = {
		name = '144p Joker',
		text = {
			"{X:chips,C:white}X#1#Chips"
		}
	},
	config = { extra = { xchips = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xchips  } }
	end,
	rarity = 2,
	atlas = 'Jokers',
	pos = { x = 0, y = 5 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.joker_main then
			return {
				xchips = beno.xchips
			}
		end
	end
}

SMODS.Joker {
	key = 'pullup',
	loc_txt = {
		name = 'Pocket Calender',
		text = {
			"Gives {C:money}$#1#{} every round, gives",
			"{X:money,C:white}X#2#{} if blind is {C:green}Boss Blind."
		}
	},
	config = { extra = { money = 3, multip = 5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.money, card.ability.extra.multip  } }
	end,
	rarity = 2,
	atlas = 'Jokers',
	pos = { x = 4, y = 4 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 7,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calc_dollar_bonus = function(self, card)
		local beep = card.ability.extra
		local bonus = beep.money
		if G.GAME.blind:get_type() == 'Boss' then
			bonus = bonus * beep.multip
		end
		return bonus
	end
}

SMODS.Joker {
	key = '3g',
	loc_txt = {
		name = 'Gradient Joker',
		text = {
			"{X:mult,C:white}X#1# Mult{} per card, increases by",
			"{X:mult,C:white}X#2#{} for each distinct suit",
			"scored, resets after each round."
		}
	},
	config = { extra = { xmult = 1.1, inc = 0.2, suits = {}, trig = false, gl_reset = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult, card.ability.extra.inc } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 1, y = 5 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	add_to_deck = function(self, card, from_debuff)
		local beno = card.ability.extra
		beno.gl_reset = beno.xmult
	end,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.individual and context.cardarea == G.play then
			beno.trig = false
			local mms = nil
			local suit = context.other_card.base.suit
			if suit and not list_contains(beno.suits, suit) then
			    table.insert(beno.suits, suit)
			    beno.xmult = beno.xmult + beno.inc
			    mms = 'Upgrade'
			end
			return {
				message = mms,
				xmult = beno.xmult
			}
		end
		if context.end_of_round and beno.trig ~= true then
			beno.trig = true
			beno.xmult = beno.gl_reset
			beno.suits = {}
		end
	end
}

SMODS.Joker {
	key = 'advert',
	loc_txt = {
		name = 'Advertisement Joker',
		text = {
			"{X:red,C:white}X#1# Mult{}, plays an ad after",
			"exiting shop and upgrades by {X:mult,C:white}X#2#",
			
		}
	},
	config = { extra = { xmult = 1, incc = 0.5 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult, card.ability.extra.incc } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 2, y = 5 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.ending_shop then
			beno.xmult = beno.xmult + beno.incc
			G.FUNCS.overlay_menu{
                definition = create_UIBox_custom_video1("a101","Skip Ad..."),
                config = {no_esc = true}
            }
		end
		if context.joker_main then
			return{xmult = beno.xmult}
		end
	end
}

SMODS.Joker {
	key = 'reroller',
	loc_txt = {
		name = 'Reroll Maxxer',
		text = {
			"{X:green,C:white}X#1#Mult{}, loses {C:red}#2# mult",
			"each reroll in the shop."
			
		}
	},
	config = { extra = { xmult = 10.0, rincc = 0.1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult, card.ability.extra.rincc } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 3, y = 5 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.reroll_shop then
			if beno.xmult > 1.0 then
				beno.xmult = beno.xmult - beno.rincc
				return{
					message = "X"..beno.xmult.." Mult"
				}
			end
		end
		if context.joker_main then
			return{xmult = beno.xmult}
		end
	end
}

SMODS.Joker {
	key = 'familytied',
	loc_txt = {
		name = 'Real Chips',
		text = {
			"Gives you {C:money}$#1#{} for each time you",
			"pass the required score.",
			"{C:inactive,s:0.8}(Scored chips / Required chips = Payout)"
		}
	},
	config = { extra = { money_mult = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.money_mult } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 4, y = 5 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calc_dollar_bonus = function(self, card)
		local beno = card.ability.extra
		local req_chips = G.GAME.blind.chips
		local total_chips = G.GAME.chips
		local little_overflow = total_chips % req_chips
		local babykeem = total_chips - little_overflow
		local bonus = (babykeem / req_chips) * beno.money_mult
		return bonus
	end
}

SMODS.Joker {
	key = 'gullotine',
	loc_txt = {
		name = 'So No Head?',
		text = {
			"All played {C:attention}Aces and numbered cards give{}",
			"{X:mult,C:white}X#1#Mult{}, all {C:attention}played face",
			"{C:attention}cards give{} {X:mult,C:white}X#2#Mult{}"
		}
	},
	config = { extra = { nohead_xmult = 3.25, head_xmult = 0.35 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.nohead_xmult, card.ability.extra.head_xmult } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 5, y = 5 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.individual and context.cardarea == G.play then
			if context.other_card:is_face() then
				return{
					xmult = beno.head_xmult
				}

			else 
				return{
					xmult = beno.nohead_xmult
				}
			end
		end
	end
}

SMODS.Joker {
	key = 'aintnoskipper',
	loc_txt = {
		name = 'No Skippin',
		text = {
			"Gain {C:red}#1# Double Tag{} at the end of round,",
			"increases by #2# for each consecutive",
			"round played/not skipped."
		}
	},
	config = { extra = { dtag = 1, inb = 1, nuhuh = false, cryp_reset = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.dtag, card.ability.extra.inb } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 7, y = 5 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	add_to_deck = function(self, card, from_debuff)
		local beno = card.ability.extra
		beno.cryp_reset = beno.dtag
	end,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.skip_blind then
			beno.dtag = beno.cryp_reset
			return{
				message = "Reset!"
			}
		end

		if context.setting_blind then
			beno.dtag = beno.dtag + beno.inb
			beno.nuhuh = true
			return{
				message = "Increased!"
			}
		end

		if context.end_of_round and beno.nuhuh ~= false then
			beno.nuhuh = false
			local cc = 1
			while cc < beno.dtag + 1 do
				G.E_MANAGER:add_event(Event({
				    func = function()
				        add_tag(Tag('tag_double'))
				        return true
				    end
				}))
				cc = cc+1
			end
		end
	end
}

SMODS.Joker {
	key = 'diduncsnap',
	loc_txt = {
		name = 'did unc Türkiye?',
		text = {
			"Gives {X:money,C:white}$#1#{} if the played",
			"{C:attention}hand level{} is below #1#"
		}
	},
	config = { extra = { gmoney = 41 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.gmoney } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 8, y = 5 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.before then
		    local text, disp_text, poker_hands, scoring_hand, non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.play.cards)
        	local level = to_number(G.GAME.hands[text].level)
			if level < beno.gmoney then
				return{
					dollars = beno.gmoney
				}
			end
		end
	end
}

SMODS.Joker {
	key = 'scarce',
	loc_txt = {
		name = 'first blood',
		text = {
			"Decreases level of first played hand, but",
			"gives {X:mult,C:white}X#1#Mult{} for each hand played."
		}
	},
	config = { extra = { mmmult = 12, hands__played = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mmmult } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 9, y = 5 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.before then
		    local text, disp_text, poker_hands, scoring_hand, non_loc_disp_text = G.FUNCS.get_poker_hand_info(G.play.cards)
        	local level = to_number(G.GAME.hands[text].level)
			if level > 1.1 then
				if beno.hands__played < 0.9 then
					beno.hands__played = beno.hands__played+1
					return{
						level_up = -1
					}
				end
			end
		end

		if context.joker_main then
			return{
				xmult = beno.mmmult
			}
		end
	end
}

SMODS.Joker {
	key = 'qcumber',
	loc_txt = {
		name = 'Salatalık',
		text = {
			"{C:green}#1# free rerolls{}"
		}
	},
	config = { extra = { rerolls = 20 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.rerolls } }
	end,
	rarity = 'xdm_ncalvert',
	atlas = 'Jokers',
	pos = { x = 0, y = 6 }, 
	-- soul_pos sets the soul sprite, only used in vanilla for legendary jokers and Hologram.
	cost = 4,
	pools = {  ["xdmod_joker"] = true },
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	demicoloncompat = true,
	calculate = function(self, card, context)
		local beno = card.ability.extra
		if context.starting_shop then
			if beno.rerolls < 2 then
				card:start_dissolve()
    			card = nil
			end
			G.GAME.current_round.free_rerolls = beno.rerolls
			beno.rerolls = beno.rerolls - 1
		end

		if context.reroll_shop then
			beno.rerolls = beno.rerolls - 1
		end
	end
}

--JOKER END
--CONSUMABLE START

SMODS.Consumable({
    key = "master",
    set = "Spectral",
    object_type = "Consumable",
    name = "master_card",
    loc_txt = {
        name = "Master Card",
        text={
        "Creates a new copy of {C:dark_edition}all of your jokers{},",
		"and makes said copies negative. {C:red}Prices of{},",
		"{C:red}jokers are now doubled."
        },
    },
	
	config = {},
	pos = {x=7, y= 4},
	atlas = 'Jokers',
    unlocked = true,
    cost = 20,
    sell_cost = 11,

    use = function(self, card, area, copier)
		local aga = {}
		for i = 1, #G.jokers.cards do
			aga[i] = G.jokers.cards[i].config.center_key
		end
		for i = 1, #aga do
			local card = create_card("Joker", G.jokers, nil, nil, nil, nil, aga[i], self.key)
			card:set_edition('e_negative', true)
			card:add_to_deck()
            G.jokers:emplace(card)
		end
		G.GAME.cry_shop_joker_price_modifier = G.GAME.cry_shop_joker_price_modifier * 2
		for k, v in pairs(G.I.CARD) do
			if v.set_cost then
				v:set_cost()
			end
		end
    end,

    can_use = function(self, card)
		return true
	end,
})

--CONSUMABLE END--------------------------------------------------------------------------------------------------
--DECK and STAKE START-------------------------------------------------------------------------------------------------

SMODS.Back({
    key = "masterdeck",
    loc_txt = {
        name = "Master Red Deck",
        text={
        "Start with {C:attention}2 Jokers{},",
		"{C:green}1 Pocket Calender{},",
		"{C:spectral}1 Master Card",
		"and {C:red}+1 discard"
        },
    },
    
    config = { hands = 0, discards = 1 },
	loc_vars = function (self, info_queue, card)
		return{ vars = { self.config.discards } }
	end,
    pos = { x = 3, y = 4 },
    order = 1,
    atlas = "Jokers",
    unlocked = true,

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                if G.jokers then
                        for i = 1, 2 do
                        	local card = create_card("Joker", G.jokers, nil, nil, nil, nil, 'j_joker', self.key)
							card:add_to_deck()
                        	G.jokers:emplace(card)
                    	end
						local card = create_card("Joker", G.jokers, nil, nil, nil, nil, 'j_xdm_pullup', self.key)
						card:add_to_deck()
                        G.jokers:emplace(card)
						local card = create_card("Spectral", G.consumeables, nil, nil, nil, nil, 'c_xdm_master', self.key)
						card:add_to_deck()
           				G.consumeables:emplace(card)
                	end
				return true
				
            end,
        }))
    end
})

SMODS.Back({
    key = "masterdeckblu",
    loc_txt = {
        name = "Master Blue Deck",
        text={
        "Start with {C:attention}2 Jokers{},",
		"{C:green}1 Pocket Calender{},",
		"{C:spectral}1 Master Card",
		"and {C:blue}+1 hand"
        },
    },
    
    config = { hands = 1, discards = 0 },
	loc_vars = function (self, info_queue, card)
		return{ vars = { self.config.hands } }
	end,
    pos = { x = 5, y = 4 },
    order = 1,
    atlas = "Jokers",
    unlocked = true,

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                if G.jokers then
                        for i = 1, 2 do
                        	local card = create_card("Joker", G.jokers, nil, nil, nil, nil, 'j_joker', self.key)
							card:add_to_deck()
                        	G.jokers:emplace(card)
                    	end
						local card = create_card("Joker", G.jokers, nil, nil, nil, nil, 'j_xdm_pullup', self.key)
						card:add_to_deck()
                        G.jokers:emplace(card)
						local card = create_card("Spectral", G.consumeables, nil, nil, nil, nil, 'c_xdm_master', self.key)
						card:add_to_deck()
           				G.consumeables:emplace(card)
                	end
				return true
            end,
        }))
    end
})

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
					local all_jimbos = get_all_jokers()
                        for i = 1, 5 do
							local aah = math.random(#all_jimbos)
							local aac = math.random(aah)
							local aar = math.random(aac, #all_jimbos)
                        	local card = create_card("Joker", G.jokers, nil, nil, nil, nil, all_jimbos[aar], self.key)
                        	card:set_eternal(true)
							card:add_to_deck()
                        	G.jokers:emplace(card)
                    	end
                	end
				return true
            end,
        }))
    end
})

SMODS.Back({
    key = "oops_deck",
    loc_txt = {
        name = "Oops! All 999s",
        text={
			"All listed probabilities",
			"are set to 999"
        },
    },
    
    config = { hands = 0, discards = 0 },
    pos = { x = 6, y = 5 },
    order = 1,
    atlas = "Jokers",
    unlocked = true,

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.probabilities.normal = 999
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
        	--local card = create_card("Joker", G.jokers, nil, nil, nil, nil, xdm_ncalvert_jokers[math.random(#xdm_ncalvert_jokers)], self.key)
			local card = create_card("Joker", G.jokers, nil, 'xdm_ncalvert', nil, nil, nil, self.key)
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

SMODS.Tag{
    key = 'negtag',
    loc_txt= {
        name = 'Negative Joker Tag',
        text = { "Next shop has the",
				 "{C:dark_edition}Broken Printer Joker"
			}},
    atlas = 'Tags',
    pos = { x = 4, y = 0 },
    min_ante = 0,
	loc_vars = function (self, info_queue, card)
		return{ vars = {  } }
	end,
    apply = function(self, tag, context)
        if context.type == "store_joker_create" then
			local card
			if not G.GAME.banned_keys["j_xdm_negativeaintbad"] then
				card = create_card("Joker", context.area, nil, nil, nil, nil, "j_xdm_negativeaintbad")
				create_shop_card_ui(card, "Joker", context.area)
				card.states.visible = false
				tag:yep("+", G.C.RED, function()
					card:start_materialize()
					card:set_cost()
					return true
				end)
			else
				tag:nope()
			end
			tag.triggered = true
			return card
		end
	end
}

SMODS.Tag{
    key = 'noticeme',
    loc_txt= {
        name = 'Command Prompt',
        text = { "Immediately grants you a",
                "{B:1,C:white}Empty Value Error{} Joker!", }},
    atlas = 'Tags',
    pos = { x = 5, y = 0 },
    min_ante = 0,
	loc_vars = function (self, info_queue, card)
		return{ vars = { colours = { HEX('5D0E63') } } }
	end,
    apply = function(self, tag, context)
        tag:yep('+', G.C.DARK_EDITION, print() )

			G.FUNCS.overlay_menu{
                definition = create_UIBox_custom_video1("FUCK_oggvorbis","got it"),
                config = {no_esc = true}
            }
        	local card = create_card("Joker", G.jokers, nil, nil, nil, nil, xdm_hipower_jokers[math.random(#xdm_hipower_jokers)], self.key)
        	card:add_to_deck()
        	G.jokers:emplace(card)

        tag.triggered = true
        return true
    end,
}

--TAG END
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