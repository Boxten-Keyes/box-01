return {
	{type = "line", text = "┌  Current version (Version " .. noxious["version"] .. ")", paddingRight = 12},
	
	{type = "paragraph",
		text = [[
Command updates:
- Added 8 'Automation' commands. (enable / disable autovotepipingtapecard, enable / disable autovotetimesupcard, enable / disable autocircleminigame, enable / disable autocircleminigame2)
- Attempted to fix some commands not working at all.

Other:
- Added all the available animations.
- Added all the available animation packs.
- Added 'Dyle', 'Razzle', and 'Dazzle' as an argument. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},
	
	{type = "line", text = "┌  Version 7.8.8 (Fully released on August 8th 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
UI changes:
- Added 'Feedback', 'Autoexecute', 'Research', and 'Distracting' functions.
- Renamed the 'File' category to 'File / Support'
- Renamed the 'Buttons' category to 'Functions'

Command updates:
- Added 3 'Map / Environment' command. (twistedglistentext [text], show / hide invisibleborders)
- Added 5 'Local Player' commands. (changeroleplaytoon, changeroleplaytwisted, completedistancemastery, enable / disable freecamonextracting)
- Added 2 'Fun / Trolls' commands. (gyrate, ungyrate)
- Brung back the 'enable / disable itemaura2' commands.
- Made the 'convulse' command more intense.
- Made it so the 'enablegeneratoraura' command uses fireproximityprompt().
- Removed the 'removeanticheat' command.
- Made it so the 'enablebuyaura' command uses fireproximityprompt().
- Made the 'noclip' command more effective.
- Fixed the 'rerundeath' and the 'rejoindeath' commands not working at all.
- Removed the 'feedback' command.
- Fixed the 'enableinfinitestamina' command causing problems with the animations.
- Removed the 'headsit2 [target]' command and made it so the 'headsit [target]' automatically detects when youre using an unoptimized Toon.
- Added optimized Toon support for the 'dance', 'cradle', 'sit', 'twirl', and 'wave' commands.
- Fixed item aura blacklist not being able to blacklist Fake Capsules and Gumballs.

Other:
- Attempted to fix the timer for Twisteds that have a grabbing ability not working at all.
- Added a 'Command Bar Focus Keybind' setting.
- Added a 'Teleport Bypass Intensity' setting.
- Updated the autofarm.
- Updated Deka's autofarm to make it so it avoids going near Twisteds.
- Attempted to fix the autofarm not being able to extract generators.
- Added more anticheat triggering prevention measures.
- Added 'Stopwatch' to the buy aura blacklist.
- Added all the available animations.
- Attempted to fix save file loading issues.
- Added a 'Current Toon' section in the 'Animations' section. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.7 (Fully released on June 22nd 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
UI changes:
- Adjusted the look of the interface.
- Added categories.
- Added 2 new categories. (Buttons, File)
- Renamed the 'Commands' tab to 'Functions'.
- Removed the 'Patched Commands' commands section.
- Renamed the 'Teleports' command section with 'Teleports / Locating'.

Command updates:
- Added 2 'Main' commands. (rerun, commandbar)
- Added 19 'Local Player' commands. (pulsespeed, unpulsespeed, disableinfinitestamina, enable / disable extractingtpwalk [speed], enable / disable dodgetwisteds, exitdeath, rejoindeath, rerundeath, enable / disable buyaura, enable / disable antitendrils, un / stretchcamera [x, y])
- Added 3 'Client Sided Skins' commands. (changeskin, clonestack [number], unclonestack)
- Added 4 'Automation' commands. (enable / disable autosprint, enable / disable autoshellyboost)
- Added 6 'Donor Commands' commands. (scriptolviajumpscare, scriptps4glitchjumpscare, scriptlucyjumpscare, noxioususercheck, scriptpatrickbatemanscreamingjumpscare, scriptkendricklamarjumpscare)
- Added 10 'Fun / Trolls' commands. (floatlay, unfloatlay, upsidedown, rightsideup, rotate [x, y, z], convulse, unconvulse, xspin [speed], zspin [speed], reversemessages)
- Added 4 'Teleports / Locating' commands. (teleporttofakeelevator, pathfindtogenerator, pathfindtoelevator, predictserverposition)
- Attempted to make the script cause less performance issues.
- Removed patched commands.
- Replaced the 'enablegodmode2' command with 'enableavoidtwisteds'.
- Replaced the 'disablegodmode3' command with 'disableavoidtwisteds'.
- Removed the 'animationsgui' and the 'autofarmgui' commands.
- Removed the 'scarletautofarm' command. Use the one in her hub.
- Attempted to fix the 'riddance' command not working at all.
- Renamed the 'infinitestamina' command to 'enableinfinitestamina'.
- Renamed the 'getresearch' command to 'encountertwisteds'.
- Made the 'fly' command easier to control.
- Made it so the 'enablegeneratoraura' command doesnt force you back into the machine when a twisted spots you or when you want to stop extracting.
- Made it so the 'teleporttogenerator' command excludes generators that are being worked on.
- Updated the 'enableautoteleporttogenerator' command.
- Made it so the 'enableautovotebestcard' command votes for the heal card if any Toons have a health lower than 3.
- Made it so the 'enableinfinitestamina' command works with Looey's passive ability.

Other:
- Attempted to fix Donor commands not working at all.
- Rewrote and optimized the script's code.
- Updated teleportation method.
- Removed the animations GUI and the autofarm GUI.
- Corrected spelling errors.
- Fixed script crashing when executing on Krnl.
- Fixed Toon checks. (idk how we keep accidentally removing it)
- Added generator statuses for the generator ESP.
- Changed 'Heals' to 'Rare Items' and 'Extraction Items' to 'Super Rare Items' for the ESP, and changed their targets.
- Updated the timer functionality for the ESP for Twisteds that have a grabbing ability. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.6 (Fully released on June 11th 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Updated the 'enablegodmode3' command.
- Attempted to fix both 'enableitemaura2' and 'enablegeneratoraura' commands causing performance issues.
- Attempted to make the 'getresearch' command more reliable.

Other:
- Updated teleportation method. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.5 (Fully released on June 9th 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added 1 'Local Player' command. (infinitestamina) 
- Added 2 'Automation' commands. (enable / disable autovotebestcard)
- Attempted to fix the 'enablegodmode3' command bugging out on some occasions.
- Attempted to fix the 'enableautoteleporttogenerator' command only working once.
- Attempted to fix the 'enablerareitemspickedupnotifier' command only working once.

Other:
- Made it so there is an ability cooldown timer for the Twisted craft siblings.
- Made it so teleporting to a generator excludes generators that are being worked on. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.4 (Fully released on June 6th 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added 2 'Local Player' commands. (disablegodmode, disablegodmode2)
- Added 1 'Automation' command. (disableautocalibration2)
- Added Twisted Toodles' old animations for the 'animationpack' command.
- Attempted to fix the 'enablegodmode3' command bugging out on some occasions.
- Attempted to fix both 'enablegeneratoraura' and 'enableitemaura2' commands causing problems with your server position.
- Made it so the 'enablegeneratoraura' command does not work on posessed machines.

Other:
- Attempted to optimize the ESP. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.3 (Fully released on June 3rd 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added an argument for the 'enablespameggsonabilityaudio' command. (speed)
- Fixed commands from update 7.8.2 disappearing.

Other:
- Updated the Animations GUI. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.2 (Fully released on June 1st 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added 12 'Automation' commands. (enable / disable panicautopickupallitems, enable / disable panicautopickupallresearchcapsules, enable / disable panicautopickupalltapes, enable / disable, panicautopickupallheals, enable / disable panicautopickupallresearchcapsules, enable / disable panicautogetresearch)
- Added 2 'Fun / Trolls' commands. (enable / disable spameggsonabilityaudio)
- Attempted to fix the 'facelessshrimpo' command making your face untextured.
- Fixed commands from update 7.8.1 disappearing. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.1 (Fully released on May 31st 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
UI changes:
- Added 1 command button. (Automation)
- Attempted to fix commands and lists not fully loading.

Command updates:
- Added 3 'Local Player' commands. (disableanticheatbypasser)
- Added 2 'Map / Environment' commands. (pointlight [target] [range] [color], unpointlight [target])
- Added 12 'Automation' commands. (enable / disable autopickupallitems, enable / disable autopickupallresearchcapsules, enable / disable autopickupalltapes, enable / disable autopickupallheals, enable / disable autopickupallextractionitems, enable / disable autogetresearch)
- Added 1 'Client Sided Skins' command. (whatsappastro)
- Replaced the 'bypassanticheat' command with 'enableanticheatbypasser'. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.0 (Fully released on May 25th 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added 1 'Main' command. (scarletdiscord)
- Added 13 'ESPs / Visuals' commands. (enable / disable elevatoresp, enable / disable elevatortracers, enable / disable sproutstendrilesp, enable / disable sproutstendriltracers, enable / disable blotshandsesp, enable / disable blotshandstracers, faketapes [number])
- Added 2 'Client Sided Skins' commands. (facelessshrimpo, smilingcosmo)
- Added 11 'Map / Environment' commands. (close / open elevator, close / open trapdoors, enable / disable panicmode, enable / disable blackout, fakefloor [number], fakerequiredmachines [number], fakemachinescompleted [number])
- Added 16 'Local Player' commands. (enable / disable autovoterandomcard, enable / disable autovotehealcard, enable / disable autovoteblindgrabcard, enable / disable autovotetapescard, enable / disable autovotefrugalcard, enable / disable autovoteelevatortimecard, enable / disable autovotemaxstaminacard, enable / disable autovotesparkplugcard, enable / disable autovoteelectriciancard, enable / disable autovotecovetouscard, enable / disable autovotetechsavvycard, enable / disable autovoteabilitycard)
- Fixed the 'fakeblackouts', 'fakeichor', 'fakedandyitemspurchased', 'fakefloorstraveled', 'fakemachinescompleted', 'fakefurthestfloor', and 'fakeitemspickedup' commands not working at all.
- Made it so the ESP for the research capsules tween to black for mains.
- Fixed the 'enablenotifer' command not executing the 'enablerareitemspickedupnotifier' command. 
- Made it so the 'enablelooprunspeed' plays your Toon's running animation when moving for Toons with new animation rigs.
- Attempted to fix the 'enablerareitemspickedupnotifier' command not working at all after notifying once. 

Other:
- Added Vee and Twisted Vee's new animations to the Animations GUI.
- Added Blot and Twisted Blot's animations to the Animations GUI. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.7.9 (Fully released on May 23rd 2025)", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
UI changes:
- Attempted to fix commands and lists not fully loading.
- Made it so executing a command in the 'Patched Commands' section will give you a warning.
- Renamed the 'Risky Commands' command button to 'Patched Commands'.
- Updated the 'Info' section.
 
Command updates:
- Added 1 'Scripts' command. (scarletdwscript)
- Added 3 'Donor Commands' commands. (scriptstripperblotjumpscare, scriptpalemachinejumpscare, jobapplicationjumpscare)
- Added 2 'Local Player' commands. (enable / disable shiftlock)
- Added some patched commands to the 'Patched Commands' section.
- Added Blot to the 'unlockalltoons' command.
- Added Blot and Twisted Blot's animations to the 'animationpack' command.
- Added Vee and Twisted Vee's new animations to the 'animationpack' command. 

Other:
- Fixed the ESP not working at all. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.7.8 (Fully released on May 23rd 2025)", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
UI changes:
- Attempted to fix commands and lists not fully loading.
- Renamed the 'Risky Commands' command button to 'Patched Commands'.
 
Command updates:
- Updated the 'enablegodmode3' command and made it more reliable.
- Renamed the 'enable / disable allvisualizers' commands to 'show / hide allvisualizers'.
- Fixed the 'smallserverhop' command always not being able to find a small server.
- Fixed the 'enablewalkfling' command glitching your character.
- Attempted to fix commands regarding teleportation always disabling noclip upon execution.
	 
Other:
- Added Blot and Twisted Blot's animations to the Animations GUI.
- Attempted to optimize the script. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.7.7 (Fully released on May 20th 2025)", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
UI changes:
- Fixed configurations and settings tab requiring two inputs in order to edit a setting for mobile.
- Removed the Settings and Configurations tab and added a 'Settings' button in the 'Credits' section.
- Attempted to fix commands and lists not fully loading.
- Updated the interface design.
- Added a minimize interface button.
- Brung back the 'Client Sided Skins' command list button.
- Updated the intro sequence.

Command updates:
- Added 1 'Map / Environment' commands. (spawnplushies)
- Added 2 'Main' commands. (serverhop, smallserverhop)
- Added 4 'Animations / Emotes' commands. (spasm, unspasm, glitch, unglitch)
- Added 1 'Donor Commands' command. (scriptforceruncommand [command])
- Added 2 'Risky Commands' commands. (enable / disable spameggsonabilityaudio)
- Added Twisted Toon animations for the animpack command.
- Renamed the 'enable / disable rareitempickedupchatguider' commands to 'enable / disable rareitempickedupnotifier.'
- Renamed 'bbang' to 'peg'.
- Removed the 'usesemiblatantloadout' command and replaced it with the 'usenonblatantloadout' command.
- Made it so the 'enablelooprunspeed' command gets adjusted and multiplied by the walkspeed modifier.
- Fixed the 'enablesprouthealnearby' and 'enablecosmohealnearby' commands not working at all.

Other:
- Attempted to fix the donor gamepass check.
- Fixed ESP configurations not working at all.
- Updated item name aliases.
- Attempted to fix random lagspikes occurring when reaching floor 5-7.
- Made it so extraction speed candies count as an extraction item.
- Adjusted some command descriptions.
- Renamed 'Premium' to 'Donor'.
- Attempted to optimize the script. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.7.6 (Fully released on May 14th 2025)", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
UI changes:
- Attempted to fix commands and lists not fully loading.
- Updated the Intro animations.
- Removed the settings and main button.
- Added 2 new tabs. (Configs, Settings)
- Renamed Changelogs tab to 'Changes'.
 
Command updates:
- Added 6 'Local Player' commands. (enable / disable dekaautofarm, enable / disable sprouthealnearby, enable / disable cosmohealnearby)
- Attempted to fix the 'enableitempickupchatguider' command spamming messages.
- Attempted to fix the 'deleteinvisibleborders' command not working at all.
- Fixed Vee's Remote causing issues for the 'gtechatguider' command.
	 
Other:
- Fixed command descriptions. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},
}
