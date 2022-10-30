"The Hitchhiker's Guide to the Galaxy"

The story headline is "Infocom interactive fiction - a science fiction story[line break]Copyright © 1984 by Infocom, Inc. All rights reserved.[line break]Inform 7 adaptation by Scott Vandehey".
The story genre is "Science Fiction".
The story creation year is 1984.

[
TODO:
- [ ] Add I-VOGONS queue in 50 turns
- [ ] Who am I
- [ ] What is the object of the game
- [ ] Don't panic
- [ ] Footnote
[@see https://ganelson.github.io/inform-website/book/RB_12_3.html]
[Occaisionally, the text in HITCHHIKER'S will mention the existence of a footnote. To read the footnote, simply type FOOTNOTE followed by the appropriate footnote number (for example, FOOTNOTE 7). This will not count as a turn.]
- [ ] Is "GENERIC POCKET-FLUFF" same as "does player mean pocket fluff?"
- [ ] Address carrying capacity & size (see gown)

TODO: change most actions to Report or block rules, to match standard actions

[How to replace standard response text:]
See 14.11 for replacing generic response text

[How to disable a timer:]
$timer in -1 turns from now;

[How to redirect verbs to a new noun:]
Before examining the wrong thing, now the noun is the right thing;

[How to check player's command for a word:]
Before examining the house:
	if the player's command includes "house":
		say "It's not a house, it's a home."

[How to not print clarification text:]
Rule for clarifying the parser's choice of something while Xing:
	if the noun is the right thing:
		stop the action;

]

[======================================]

Volume 1 - Setup

Use American dialect and the serial comma and scoring.
The maximum score is 400.
Include Basic Screen Effects by Emily Short.
Include Hitchhiker Actions by Scott Vandehey.

[--------------------------------------]

Book 1 - When Play Begins

After printing the banner text when not requesting the story file version, say "[paragraph break]You wake up. The room is spinning very gently round your head. Or at least it would be if you could see it which you can't."

[Return the Thing]
When play begins:
	the gift returns in 21 turns from now.

[Wreck the House]
When play begins:
	the house is wrecked in 20 turns from now.

[--------------------------------------]

Book 2 - When Play Ends

Rule for printing the player's obituary: 
	say "We are about to give you your score. Put on your peril-sensitive sunglasses now. (Hit RETURN or ENTER when ready.)[paragraph break]";
	wait for any key;
	say "Your score is [score] of a possible [maximum score], in [turn count] turn[s].";
	rule succeeds.

[--------------------------------------]

Book 3 - Variables

[Setting a global variable for the current topic is a fairly convoluted way to handle this. Modern Inform would probably just use a topic table, but I'm converting from the HHG2G ZIL code, which, perhaps as a memory-saving technique, recycles many replies across various situations, so it was easier to preserve their existing "when X happens, the topic number is Y" logic, which I've translated below into the conversation actions.]
The current topic is a number that varies.

[--------------------------------------]

Book 4 - Timers

[Reset the Current Topic]
At the time when the current topic resets:
	now the current topic is 0;

[Wreck the House]
At the time when the house is wrecked:
	if the player is in the bed or the player is in the bedroom or the player is in the front porch:
		say "Astoundingly, [a bulldozer] pokes through your wall. However, you have no time for surprise because the ceiling is collapsing on you as [better-luck]";
		end the story;

[Reset wreck the house timer if player re-enters the house]
After going north from the front garden:
	the house is wrecked in 5 turns from now;
	continue the action;

[--------------------------------------]

Book 5 - New Kinds of Things

A tool is a kind of thing.

An owned thing is a kind of thing. An owned thing has some text called the owner.

[--------------------------------------]

Book 6 - Body Parts

A body part is a kind of thing.

Understand "your" as a thing when the item described is held by the person asked.

[Ears]

Your ears are a body part. They are part of the player. Understand "ear" as your ears.

[Eyes]

Your eyes are a body part. They are part of the player. Understand "eye" as your eyes.

Instead of opening your eyes, say "They are."
Instead of closing your eyes, say "That won't help."

[Head]

Your head is a body part. It is part of the player. Understand "face" as your head.	

[Hand]

Your hand is a body part. It is part of the player. Understand "hands" as your hand.

Instead of waving your hand, try waving hands.

[TODO Instead of shaking your hand:
	if the player can see a person (called shakee):]

[Teeth]

Your teeth are a body part. They are part of the player.

[--------------------------------------]

Book 7 - Text Substitutions

Part 1 - Common Responses

To say better-luck:
	say "your home is unexpectedly demolished to make way for a new bypass. You are seriously injured in the process, but on your way to the hospital [make-way-for].[paragraph break]";
	if the light is not lit:
		say "Next time, try turning on the light.";
	else if the gown is closed and the player is hungover:
		say "Too bad you never found an aspirin for your hangover.";
	else:
		say "Better luck next life.";

To say cant-reach-from-bed:
	say "You can't reach it from the bed[if the player is hungover]. The effort almost kills you[end if]."

To say dialling-tone:
	say "A moment later, the dialing tone is suddenly cut off. Glancing through the window you can't help but notice the large old oak tree of which you are particularly fond crashing down through the phone cable".

To say get-rid:
	say "you've been trying to get rid of it for years".

To say make-way-for:
	say "[a fleet] unexpectedly arrives and demolishes the Earth to make way for a new hyperspace bypass".

To say nice-day:
	say "t's a bright morning, the sun is shining, the birds are
singing, the meadows are blooming".

To say private:
	say "You can't. It's not yours. It's [owner of the noun]'s and it's private."

To say two-trees:
	now the current topic is 9;
	the current topic resets in one turn from now;
	say "[line break]Shouldn't you be taking more interest in events in the world around you? While you've got it...?"

To say walk-around:
	now the current topic is 16;
	the current topic resets in one turn from now;
	say "Did you have any particular direction in mind?"

To say zen:
	say "A brave, Zen-like effort. It fails"

[--------------------------------------]

Part 2 - Response Tables

Table of negative replies
number	reply
3	"I should think not."
4	"The word 'no' is not in our hostess['] vocabulary."
5	"Well, tough."
6	"That was just a rhetorical question."
9	"I disagree."
12	"'Think you're funny, huh?' The TODO:ENGINEER TODO:ROARS-OFF, making sure to spray you with his Sub-Ethon exhaust."
14	"Then stop."
16	"I didn't think so."
18	"'Well, leave me alone then! I'm busy!'"

Table of positive replies
number	reply
3	"Well, tough."
5	"So do I."
6	"That was just a rhetorical question."
7	"Well, good for you!"
10	"This is family entertainment, not a video nasty."
12	"'Well, let's see the malfunctioning equipment.'"
16	"Then type it."
18	"'Well, leave me alone then! I'm busy!'"

[--------------------------------------]

Book 8 - Actions

Part 1 - Saying Yes or No to Current Topic

[Saying No]

Check an actor saying no (this is the saying no to a topic rule):
	if the actor is the player:
		if the current topic is:
			-- 1: [do nothing]
			-- 2: try going south instead;
			-- 3: try responding negatively with 3;
			-- 4: try responding negatively with 4;
			-- 5: try responding negatively with 5;
			-- 6: try responding negatively with 6;
			-- 7: try responding negatively with 5;
			-- 8: try responding negatively with 5;
			-- 9: try responding negatively with 9;
			-- 10: try responding negatively with 3;
			-- 11: try responding negatively with 6;
			-- 12:
				[TODO:ENGINEER-LEAVE]
				try responding negatively with 12;
			-- 13: try responding negatively with 5;
			-- 14: try responding negatively with 14;
			-- 15: try responding negatively with 5;
			-- 16: try responding negatively with 16;
			-- 18: try responding negatively with 18;
			-- 19: try responding negatively with 18;
			-- otherwise: say "You sound rather negative.";
	stop the action.

The saying no to a topic rule substitutes for the block saying no rule.

[Saying Yes]

Understand the command "ok" or "okay" or "sure" as "yes".

Check an actor saying yes (this is the saying yes to a topic rule):
	if the actor is the player:
		if the current topic is:
			-- 1: try going south instead;
			-- 2: [do nothing]
			-- 3: try responding positively with 3;
			-- 4: [TODO: TAKE ITEM-DROPPED-AT-PARTY]
			-- 5: try responding positively with 5;
			-- 6: try responding positively with 6;
			-- 7: try responding positively with 7;
			-- 8: try responding positively with 6;
			-- 9: try responding positively with 7;
			-- 10: try responding positively with 10;
			-- 11: try responding positively with 6;
			-- 12:
				[TODO:QUEUE I-ENGINEER]
				try responding positively with 12;
			-- 13: try responding positively with 6;
			-- 14: try responding positively with 6;
			-- 15: try responding positively with 6;
			-- 16: try responding positively with 16;
			-- 18: try responding positively with 18;
			-- 19: try responding positively with 18;
			-- otherwise: say "You sound rather positive.";
	stop the action.

The saying yes to a topic rule substitutes for the block saying yes rule.

[Responding Negatively]

Responding negatively with is an action applying to one number.

Carry out responding negatively with:
	say "[reply corresponding to a number of the number understood in the Table of negative replies][line break]";

[Responding Positively]

Responding positively with is an action applying to one number.

Carry out responding positively with:
	say "[reply corresponding to a number of the number understood in the Table of positive replies][line break]";

[--------------------------------------]

Part 2 - Taking Inventory

To say hangover-inventory:
	if the player is hungover:
		say "		[a hangover][line break]";

To say no-tea-inventory:
	if the player is Arthur:
		[TODO: check if player is holding no-tea, etc]
		unless the player is carrying the tea:
			say "		no tea[line break]";

To say inventory-intro:
	say "[We] have:[line break]";
	say "[hangover-inventory]";
	say "[no-tea-inventory]";

The print empty inventory rule does nothing.

Carry out taking inventory (this is the print hitchhikers inventory rule):
	if the first thing held by the player is nothing:
		unless the player is Arthur:
			say "You are empty-handed.";
		else:
			say "[inventory-intro]";
	else:
		say "[inventory-intro]";
		list the contents of the player, with newlines, indented, including contents, giving inventory information, with extra indentation.

The print hitchhikers inventory rule substitutes for the print standard inventory rule.

[--------------------------------------]

Part 3 - Testing - Not for release

[Demolish House]

Demolishing is an action applying to nothing. Understand "demolish" as demolishing.

Carry out demolishing:
	now your house is demolished;
	now the third planet is demolished;
	say "Crash!";

[Swap Characters]

Transforming is an action applying to nothing. Understand "transform" as transforming.

Carry out transforming:
	if the player is Arthur:
		now the player is Ford;
		now your ears are part of Ford;
		now your eyes are part of Ford;
		now your head is part of Ford;
		now your hand is part of Ford;
		now your teeth are part of Ford;
		say "You are now Ford!";
	else:
		now the player is Arthur;
		now your ears are part of Arthur;
		now your eyes are part of Arthur;
		now your head is part of Arthur;
		now your hand is part of Arthur;
		now your teeth are part of Arthur;
		say "You are now Arthur!";
	try looking;

[Walkthrough Tests]

test house with "stand up / turn on light / get gown / wear gown / look in pocket / get all from gown / get screwdriver / get toothbrush / put screwdriver and toothbrush in thing".

test bulldozer with "south / get mail / read mail / south / lie down / wait / wait / wait / wait / wait / wait".

test pub with "south / west / examine shelf / buy sandwich / drink beer / drink beer / drink beer / east / give sandwich to dog / north / wait / wait / get device / examine device / press green button".

[Other Tests]

test init with "turn on light / stand up / wear gown / look in pocket / swallow pill".

test hangover with "take phone / turn on light / open curtains / stand up / take toothbrush / take screwdriver / take phone / get gown / wear gown / look in pocket / eat tablet / take toothbrush / take screwdriver / take phone".

test phone with "call ford with screwdriver / call ford with phone / call home / call police / take phone".

test exit-bedroom with "turn on light / stand up / south / test start / south / north / open curtains / south".

test sleeves with "tie sleeves / remove gown / tie together sleeves / wear gown / untie sleeves / wear gown".

test backdrops with "x bulldozer / touch bulldozer / x home / x stairs / x ground / x rubble / x tree / x pub / x sky / x fleet / x star / x third planet / x air / x hangover / x sleep / x speech / x time".

[======================================]

Volume 2 - Rooms

Book 1 - Earth

The Indoors is a region.

The Outdoors is a region.

[--------------------------------------]

Part 1 - Bedroom

The Bedroom is a dark room in the Indoors. "The bedroom is a mess.[line break]It is a small bedroom with a faded carpet and old wallpaper. There is a washbasin, a chair[if the gown is undescribed] with a tatty dressing gown slung over it[end if], and a window with the curtains drawn. Near the exit leading south is a phone."

Before going from the bedroom when the player is hungover, say "You miss the doorway by a good eighteen inches. The wall jostles you rather rudely." instead.

Instead of going down from the Bedroom, try going south. Instead of going outside from the Bedroom, try going south. [reroute through door]

Report going from the bedroom:
	if the bulldozer is observed:
		say "You rush down the stairs in panic.";
	else:
		say "You make your way down to the front porch."

After deciding the scope of the player when the location is the bedroom:
	if the bedroom is dark:
		place the light in scope;
	if the bulldozer is observed:
		place the bulldozer in scope;

Instead of sleeping in the bedroom:
	say "You nod off and are wakened briefly a few hours later as [better-luck]";
	end the story;

Chapter 1 - Scenery

[Bed]

The bed is an enterable scenery container in the bedroom.

After exiting from the bed when the player is hungover:
		say "Very difficult, but you manage it. The room is still spinning. It dips and sways a little."

Instead of looking under the bed, say "There's nothing there. Well, there are a few soiled handkerchiefs, a book you thought you'd lost, a couple of foreign coins, and something else which can't be fully described in a family game, but nothing you'd actually want."

Before taking something when the player is in the bed:
	if the noun is not in the bed:
		say "[cant-reach-from-bed]" instead.

Instead of opening or closing the bed, say "[tell-me-how]".

Instead of lying down in the bedroom, try entering the bed.

Instead of lying down on the bed, try entering the bed.

Instead of standing when the player is in the bed, try exiting instead.

[Curtains]

Your curtains are scenery in the bedroom. Understand "your", "curtain", "shade", "shades" as your curtains.

Instead of opening or searching your curtains:
	if the player is in the bed:
		say "[cant-reach-from-bed]";
	else:
		now the bulldozer is observed;
		say "As you part [the curtains] you see that i[nice-day], and a large yellow [bulldozer] is advancing on your home."

[Door]

The bedroom door is an open scenery door. It is south of the Bedroom. The printed name is "door".

Instead of opening or closing the bedroom door when the player is in the bed, say "[cant-reach-from-bed]".

[Furnishings]

The bedroom furnishings are scenery in the bedroom. Understand "wall", "walls", "ceiling", "roof", "faded", "old", "carpet", "wallpaper", "paper", "chair" as the bedroom furnishings.

Instead of doing anything to the bedroom furnishings, say "[unimportant-thing]".

[Light]

The light is a scenery device in the bedroom. Understand "lights", "lamp" as the light.

After switching on the light:
	if the light is lit:
		say "It is.";
	else:
		now the light is lit;
		say "Good start to the day. Pity it's going to be the worst one of your life. The light is now on."

After switching off the light:
	now the light is not lit;

[Phone]

The phone is scenery in the bedroom. The printed name is "telephone". Understand "telephone", "receiver" as the phone.

Instead of taking the phone:
	if the player is hungover:
		say "[lurches]";
	else if the phone is handled:
		try calling "police"; [doesn't matter who we call, the line is down]
	else:
		now the phone is handled;
		say "You pick up the receiver. [dialling-tone].[if the toothbrush is handled][two-trees][end if]";

Instead of answering the phone, say "It isn't ringing."

Instead of calling when the player is in the bed:
	say "[cant-reach-from-bed]";

Instead of calling when the player is in the bedroom:
	if the player is hungover:
		say "You reach for the receiver. [lurches]";
	else if the phone is handled:
		say "The cable is down, remember?";
	else if the topic understood includes "police" or the topic understood includes "cops":
		now the phone is handled;
		say "You explain your situation. The desk sergeant promises to send someone over soon, and says not to try anything crazy in the meantime, like lying down in front of [the bulldozer]. [dialling-tone].[if the toothbrush is handled][two-trees][end if]";
	else if the topic understood matches "home":
		say "Who do you think you are, E.T.?";
	else:
		say "You don't know the number."

[Sink]

The sink is scenery in the bedroom. Understand "wash", "basin", "washbasin" as the sink.

Instead of doing anything to the sink, say "[unimportant-thing]".

[Stuff Under Bed]

The stuff-under-bed is scenery in the bedroom. Understand "soiled", "foreign", "book", "coin", "coins", "handkerchief", "handkerchiefs" as the stuff-under-bed.

Instead of doing anything to the stuff-under-bed, say "[unimportant-thing]".

[Water]

The water is scenery in the bedroom.

Instead of doing anything to the water, say "[unimportant-thing]".

[Window]

The bedroom window is scenery in the bedroom. The printed name is "window".

Instead of searching or examining the bedroom window, try opening the curtains.

Instead of opening or closing the bedroom window, say "The bloody thing's been jammed shut for months, now."

Chapter 2 - Items

[Fluff]

Some pocket fluff is in your gown. Understand "lint" as the pocket fluff.

[Gown]

[TODO gown-hung description]
Your gown is in the bedroom. It is a wearable closed openable undescribed container. The description is "The dressing gown is faded and battered, and is clearly a garment which has seen better decades. It has a pocket which is [if gown is open]open[else]closed[end if], and a small loop at the back of the collar[if the sleeves are tied]. The sleeves are tied closed[end if]." Understand "your", "dressing", "tatty", "faded", "battered", "pocket", "loop", "robe" as your gown. The carrying capacity is 14.

After taking your gown when the player is hungover, say "Luckily, this is large enough for you to get hold of. You notice something in the pocket."

Before searching the gown when the gown is closed, try opening the gown instead.

Before opening or closing the gown when the player is not wearing the gown, say "It's hard to open or close the pocket unless you're wearing the gown." instead.

Before wearing the gown when the sleeves are tied, say "You'll have to untie the sleeve first." instead.

Instead of tying the gown, try tying the sleeves.

Instead of untying the gown, try untying the sleeves.

[Sleeves]

The sleeves are part of the gown. Understand "sleeve" as the sleeves. The sleeves can be tied or untied.

Instead of tying together the sleeves, try tying the sleeves.

Before tying the sleeves when the player is wearing the gown, say "You'll have to take off the gown first." instead.

Instead of tying or closing the sleeves:
	if the sleeves are tied:
		say "It is.";
	else:
		now the sleeves are tied;
		say "The sleeves are now tied closed."

Instead of untying or opening the sleeves:
	if the sleeves are untied:
		say "It isn't tied!";
	else:
		now the sleeves are untied;
		say "Untied."

[Screwdriver]

The screwdriver is a tool in the bedroom. The printed name is "flathead screwdriver". Understand "proper", "tool", "tools" as the screwdriver.

Instead of taking the screwdriver when the player is hungover, say "[lurches]".

[Tablet]

The tablet is in your gown. It is edible. The printed name is "buffered analgesic". Understand "large", "buffered", "analgesic", "aspirin", "pill" as the tablet.

Instead of eating or drinking or taking the tablet:
	now the tablet is nowhere;
	now the player is not hungover;
	increase the score by 10;
	say "You swallow the tablet. After a few seconds the room begins to calm down and behave in an orderly manner. Your terrible headache goes."

[Thing: renamed "gift" because inform won't allow "thing"]

The gift is a container in your gown. The printed name is "thing your aunt gave you which you don't know what it is". The description is "Apart from a label on the bottom saying 'Made in Ibiza' it furnishes you with no clue as to its purpose, if indeed it has one. You are surprised to see it because you thought you'd thrown it away. Like most gifts from your aunt, [get-rid]." Understand "aunt's", "thing" as the gift. The carrying capacity is 90.

After dropping the gift, say "It falls to the ground with a light 'thunk.' It doesn't do anything else at all."

Instead of closing the gift, say "Come to think of it, you vaguely remember an instruction booklet with directions for that. You never read it and lost it months ago."

At the time when the gift returns:
	the gift returns in a random number between 4 and 8 turns from now;
	unless the gift is held by the player or the gift is in the gown or the gift is visible:
		if a random chance of 2 in 5 succeeds:
			now the gift is in the location of the player;
			say "(MOVED THE THING here)";
		else if the player is wearing the gown and the gown is open and a random chance of 2 in 3 succeeds:
			now the gift is in the gown;
			say "(MOVED THE THING to your pocket)";
		else:
			now the gift is in the player;
			say "(MOVED THE THING to your inventory)";

[Toothbrush]

The toothbrush is a tool in the bedroom. Understand "proper", "brush", "tool", "tools" as the toothbrush.

Instead of taking the toothbrush when the player is hungover, say "[lurches]".

After taking the toothbrush:
	say "As you pick up [the toothbrush] a tree outside the window collapses. There is no causal relationship between these two events.[if the phone is handled][two-trees][end if]";

[--------------------------------------]

Part 2 - Front Porch

The Front Porch is south of the bedroom door and down from the Bedroom and outside from the Bedroom and in the Indoors. "This is the enclosed front porch of your home. Your front garden lies to the south, and you can re-enter your home to the north."

Instead of going up from the Front Porch, try going north. Instead of going inside from the Front Porch, try going north. [reroute through door]

Instead of going outside from the front porch, try going south. [reroute through south for exit condition]

Before going south from the front porch:
	unless the player is wearing something:
		now the current topic is 10;
		the current topic resets in one turn from now;
		say "Do you want to get arrested for indecent exposure?" instead.

Chapter 1 - Scenery

[Doormat]

The doormat is scenery in the front porch. Understand "mat" as the doormat.

Instead of doing anything to the doormat, say "[unimportant-thing]".

[Stairs]

The stairs are a backdrop in the bedroom and in the front porch. Understand "stair", "stairway" as the stairs.

Instead of climbing the stairs, try going up.
Instead of climbing up the stairs, try going up.
Instead of climbing down the stairs, try going down.

Chapter 2 - Items

[Furnishings]

The porch furnishings are scenery in the front porch. Understand "wall", "walls", "ceiling", "roof" as the porch furnishings.

Instead of doing anything to the porch furnishings, say "[unimportant-thing]".

[Mail]

The mail is in the front porch. "On the doormat is a pile of junk mail." The printed name is "loose pile of junk mail". Understand "demolition", "order", "junk", "official", "loose", "pile", "letter" as the mail. The description is "There are many pieces of mail. Most are from some computer company called Infocom which wants you to buy their games. Hidden underneath is an official letter from the local council, dated some two years ago and inexplicably not delivered till now, explaining that a demolition order has been served on your home. The date of demolition is today's date."

After taking the mail, say "You gather up the pile of mail."

Instead of opening the mail, try examining the mail.

[--------------------------------------]

Part 3 - Front of House

The Front Garden is south of the Front Porch and outside from the Front Porch and in the Outdoors. "You can enter your home to the north. A path leads around it to the northeast and northwest, and a country lane is visible to the south." The printed name is "Front of House".

Chapter 1 - Scenery

[Roses]

Some roses are scenery in the front garden. Understand "rose", "rosebed", "bed" as some roses.

Instead of doing anything to some roses, say "[unimportant-thing]".

Chapter 2 - Items

[Bulldozer]

The bulldozer is a backdrop in the Outdoors. Understand "large", "huge", "yellow", "bull", "dozer" as the bulldozer. The bulldozer can be observed or unobserved. It is unobserved.

Instead of doing anything other than examining to the bulldozer when the player is not in the front garden, say "[The bulldozer] isn't here.";

[TODO: Clarify the player means the bulldozer without (the bulldozer)]

[Digital Watch]

The digital watch is an owned thing. Understand "watches" as the digital watch. The owner of the digital watch is "Mr. Prosser".

Instead of taking or examining the digital watch:
	say "[private]";

Chapter 3 - Actors

[Bulldozer Driver]

The bulldozer driver is a man in the front garden. He is undescribed.

[Mr Prosser]

Mr Prosser is a man in the front garden. The printed name is "Mr. Prosser". Understand "foreman", "wrecking", "crew", "mister", "mr" as Mr Prosser. He is undescribed.

The digital watch is held by Mr Prosser.

[--------------------------------------]

Part 4 - Back of House

The Back Garden is northwest of the Front Garden and northeast of the Front Garden and in the Outdoors. "The rear garden is a pleasant place. I[nice-day], and it's a lovely day for a walk. A path leads around the house to the southeast and southwest." The printed name is "Back of House".

Chapter 1 - Scenery

[Birds]

Some birds are scenery in the back garden.

Instead of doing anything to some birds, say "[unimportant-thing]".

[--------------------------------------]

Part 5 - Country Lane

The Country Lane is south of the Front Garden and in the Outdoors. "The road runs from your home, to the north, toward the village Pub, to the west."

[TODO dog]

The dog is an animal in the country lane.

[--------------------------------------]

Part 6 - Pub

The Pub is west of the Country Lane and inside from the Country Lane and in the Indoors. "The Pub is pleasant and cheerful and full of pleasant and cheerful people who don't know they've got about twelve minutes to live and are therefore having a spot of lunch. Some music is playing on an old jukebox. The exit is east."

Chapter 1 - Scenery

[Bar]

The bar is a scenery supporter in the pub. Understand "counter" as the bar.

Instead of looking behind the bar, try examining the pub shelf.

[Furnishings]

The pub furnishings are scenery in the pub. Understand "wall", "walls", "ceiling", "roof", "usual", "soggy", "beermat", "beermats", "glass", "glasses", "bottle", "bottles" as the pub furnishings.

Instead of doing anything to the pub furnishings, say "[unimportant-thing]".

[Jukebox]

The jukebox is an owned thing in the pub. It is lit scenery. [lit scenery] Understand "old", "juke", "box" as the jukebox. The owner of the jukebox is "the Pub".

Instead of listening to the jukebox:
	say "The song is ";
	if a random chance of 1 in 4 succeeds:
		say "a Walker Brothers single, 'The Sun Ain't Gonna Shine Anymore.'";
	else if a random chance of 1 in 3 succeeds:
		say "'Get Back' by the Beatles.";
	else if a random chance of 1 in 2 succeeds:
		say "'Hey Jude' by the Beatles (Footnote 4). It's a particular favourite, and listening to it calms you down, and cheers you up.";
	else:
		say "'Tie a Yellow Ribbon[if the player is Ford].' You can't stand it, and are pleased to think that this is probably the last time it will ever be heard.[else].'";
	
Instead of switching off the jukebox:
	say "[private]";

[Music]

The music is scenery in the pub. Understand "song", "songs" as the music.

Instead of enjoying or listening to the music, try listening to the jukebox.

[People]

Some patrons are scenery in the pub. Understand "people" as some patrons.

Instead of doing anything to some patrons, say "[unimportant-thing]".

[Window]

The pub window is scenery in the pub. The printed name is "window".

Instead of searching or examining the pub window, say "You see the country lane."

Instead of opening or closing the pub window, say "It won't budge."

Chapter 2 - Items

[Barman]

The barman is a man in the pub. "There is a barman serving at the bar." Understand "bartender" as the barman.

[Beer]

The beer is in the pub. It is edible and undescribed. The beer can be purchased. Understand "lots", "bitter", "pint", "pints" as the beer.

[Peanuts]

Some peanuts are on the pub shelf. They are edible and undescribed. Some peanuts can be purchased. Understand "packet", "peanut", "nut", "nuts" as some peanuts.

[Sandwich]

The cheese sandwich is on the pub shelf. It is edible and undescribed. The sandwich can be purchased. Understand "plate", "univiting" as the cheese sandwich.

[Shelf]

The pub shelf is a supporter in the pub. "Behind the bar is a shelf. It is full of the sort of items you find on shelves behind bars in pubs." The printed name is "shelf of items!". Understand "shelves", "items" as the pub shelf.

To say snacks:
	unless peanuts are purchased:
		if sandwich is purchased:
			say ", and";
		else:
			say ",";
		say " some packets of peanuts";
	unless sandwich is purchased:
		say ", and a plate of uninviting [cheese sandwich]es";
		
Instead of examining the pub shelf:
	say "On the shelf behind the bar is the usual array of bottles, glasses and soggy beermats[snacks].";

[--------------------------------------]

Part 7 - Earth Backdrops

[Define these last so they don't initialize their locations]

Chapter 1 - Outdoors

[Ground]

The ground is a backdrop in the Outdoors. Understand "floor", "mud" as the ground. It is in the Outdoors.

Instead of climbing or climbing down or entering the ground, say "[wastes]".

Instead of looking under the ground, say "[impossibles]" instead.

Instead of getting out of the ground, try going up instead.

Instead of lying down on the ground when the player is in the front garden:
		[try blocking the bulldozer instead;]
		say "TODO: BLOCK BULLDOZER";

Instead of enjoying the ground when the player is in the front garden and the player is prone:
	say "It occurs to you that you've never deliberately lain in any mud before and that it's actually a pleasant sort of squishy sensation. You let the mud ooze between your toes. You may be here for some time, so you may as well make the most of it."

[Home]

[For some reason we can't say "in the Outdoors, in the bedroom," etc.]
Your house is a backdrop in the bedroom, in the front porch, in the front garden, in the back garden, and in the country lane. The printed name is "your home". Understand "your", "home" as the house. Your house can be demolished.

Instead of enjoying your house when your house is demolished, say "[zen]. You can't enjoy a [rubble] properly till it's at least a hundred years old. Also, you are haunted by the tragic vision of your favourite teapot lying shattered among the dust.[line break]There is also the matter of all your clothes."

Instead of examining your house when your house is demolished, say "It is now [a rubble]."

Instead of doing anything to your house when the player is Ford, say "[unimportant-thing]".

Instead of entering your house: ["walk through home"]
	if the player is in the front garden or the player is in the front porch:
		try going north;
	else if the player is in the bedroom:
		say "[look-around]";
	else:
		say "[walk-around]";

Instead of getting out of your house: ["leave home"]
	if the player is in the front porch:
		try going south;
	else if the player is in the bedroom:
		say "[walk-around]";
	else:
		say "[look-around]";

[Pub]

The pub-object is a backdrop in the country lane and in the pub. The printed name is "Pub". Understand "horse", "'n", "groom", "pub" as the pub-object.

Instead of entering the pub-object:
	if the player is in the pub:
		say "[look-around]";
	else:
		try going west.

Instead of getting out of the pub-object:
	if the player is in the pub:
		try going east;
	else:
		say "[look-around]".

Does the player mean getting out of or entering the pub-object when the pub-object is visible: it is very likely.

Rule for clarifying the parser's choice of something while getting out of or entering:
	if the noun is the pub-object:
		stop the action; [don't print the name of the pub-object]

[Rubble]

The rubble is a backdrop in the front garden and in the back garden. The printed name is "pile of rubble". Understand "pile", "debris" as the rubble.

Instead of examining the rubble, try examining your house.

Instead of enjoying the rubble, try enjoying your house.

[Sky]

The sky is a backdrop in the Outdoors.

Instead of examining the sky when the fleet is visible, say "The sky is filled with the ships of [the fleet]."

[Tree]

The tree is a backdrop in the Outdoors. Understand "trees" as the tree.

Instead of climbing the tree, say "You were never very good at that."

[--------------------------------------]

Chapter 2 - Space Stuff

[Fleet]

The fleet is scenery. The printed name is "fleet of Vogon Constructor ships". Understand "vogon", "constructor", "huge", "ugly", "yellow", "ship", "ships", "spaceship", "spaceships" as the fleet.

[Star]

The star is a backdrop in the Outdoors. Understand "approaching", "solar", "system", "small", "unregarded", "yellow", "orange", "sun", "sol" as the star. The printed name is "sun".

Instead of examining the star when the player is in the front garden, or the player is in the back garden, or the player is in the country lane:
	say "The sun is a smallish yellow star.";
		
[Third Planet]

The third planet is a backdrop in the Outdoors. "It is an utterly insignificant little blue-green planet, of the sort where they probably still wear [digital watch]es." Understand "third", "blue", "blue-green", "small", "earth" as the third planet. The third planet can be demolished.

Before doing anything to the third planet:
	unless the third planet is demolished:
		now the noun is the ground;

Instead of getting out of the third planet:
	if the third planet is demolished:
		say "You did!"

[--------------------------------------]

Book 2 - Everywhere

[Air]

The air is a backdrop. It is everywhere.

[Hangover] [so player can inspect hangover, which is in inventory]

The hangover is a backdrop. The printed name is "splitting headache". Understand "splitting", "big", "blinding", "throbber", "headache" as the hangover. It is everywhere.

After deciding the scope of the player while in darkness: place the hangover in scope. [allow examining with lights off]

Before examining the hangover, try diagnosing instead.

Before doing anything other than examining to the hangover, say "[impossibles]" instead.

[Sleep] [so the player can "take a nap"]

A backdrop called sleep is everywhere. Understand "sleep", "nap", "snooze" as sleep.

Instead of entering or taking sleep, try sleeping.

[Speech] [so the player can "give a speech"]

The speech is a backdrop. It is everywhere.

Before giving the speech to someone, try making the speech instead;

Instead of making the speech, say "This isn't the time or the place for making speeches."

Instead of examining the speech, say "It's extemporaneous."

[Time]

A backdrop called time is everywhere.

[======================================]

Volume 4 - Actors

[--------------------------------------]

Part 1 - Ford

Ford Prefect is a man in the back garden. "[if Ford is asleep]Ford is in the corner, snoring loudly[else]Ford Prefect is here[end if]." Understand "ford", "prefect" as Ford.

[TODO Ford, satchel, satchel fluff, towel]

[--------------------------------------]

Part 2 - Arthur

Arthur Dent is a man in the bed. "Arthur Dent is here." Understand "arthur", "dent" as Arthur. Arthur is hungover. The player is Arthur.

[TODO Arthur]

[--------------------------------------]

Volume 5 - Other

[TEMP - this should live somewhere, but I needed to check if it was in inventory earlier]

The tea is a thing held by the barman. "There is a nice, hot cup of tea here." Understand "real", "nice", "hot", "cup" as the tea. It is edible.