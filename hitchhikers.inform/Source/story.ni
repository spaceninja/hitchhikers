"The Hitchhiker's Guide to the Galaxy"

[======================================]

Volume 1 - Setup

The story headline is "Infocom interactive fiction - a science fiction story[line break]Copyright © 1984 by Infocom, Inc. All rights reserved.[line break]Inform 7 adaptation by Scott Vandehey". The story genre is "Science Fiction". The story creation year is 1984.

After printing the banner text when not requesting the story file version, say "[line break]You wake up. The room is spinning very gently round your head. Or at least it would be if you could see it which you can't."

Use American dialect and the serial comma.

Book 1 - Actions

Part 1 - Disable Some Standard Rules

The stand up before going rule does nothing.

Part 2 - New Actions

[Handle getting out of bed]

Getting out of is an action applying to one thing. Understand "get out of [something]" as getting out of.

Carry out getting out of something:
	try exiting instead.
	

[======================================]

Volume 2 - Rooms

Book 1 - Earth

[TODO time]

[TODO vogon fleet]

[TODO home]

[TODO house]

[TODO rubble]

[TODO hangover]

[--------------------------------------]

Part 1 - Bedroom

The Bedroom is a dark room. "The bedroom is a mess. It is a small bedroom with a faded carpet and old wallpaper. There is a washbasin, a chair with a tatty dressing gown slung over it, and a window with the curtains drawn. Near the exit leading south is a phone."

Chapter 1 - Door

The bedroom door is an open scenery door. It is south of the Bedroom and north of the Front Porch.

[Because the door can only be in one direction, but we want to treat south, out, and down as all going to the porch, we need to redirect the player through the door]

Instead of going down from the Bedroom, try going south. Instead of going outside from the Bedroom, try going south.

Instead of going up from the Front Porch, try going north. Instead of going inside from the Front Porch, try going north.

Chapter 2 - Scenery

The bed is an enterable scenery supporter in the Bedroom. The player is on the bed.

The stuff-under-bed is scenery in the bedroom. "That's not important; leave it alone." Understand "book", "coin", "coins", "handkerchief", "handkerchiefs", "soiled", "foreign" as the stuff-under-bed.

Your curtains are scenery in the bedroom. Understand "your", "curtain", "shade", "shades" as your curtains.

[TODO sink]

[TODO bedroom furnishings]

Chapter 3 - Items

The toothbrush is in the bedroom.

The screwdriver is in the bedroom.

The phone is in the bedroom.

The gown is in the bedroom. It is wearable.

[TODO sleeves]

The gift is in the bedroom

The pocket fluff is in the bedroom

The tablet is in the bedroom

Chapter 4 - Interactions

[Prevent doing things from bed]

Before taking something when the player is on the bed:
	if the noun is not on the bed:
		say "You can't reach it from the bed." instead.

Instead of opening or searching your curtains when the player is on the bed, try taking your curtains.

Instead of opening or closing the bedroom door when the player is on the bed, try taking the bedroom door.

[Get out of bed message]

After getting off the bed, say "Very difficult, but you manage it. The room is still spinning. It dips and sways a little."

[Looking under the bed]

Instead of looking under the bed, say "There's nothing there. Well, there are a few soiled handkerchiefs, a book you thought you'd lost, a couple of foreign coins, and something else which can't be fully described in a family game, but nothing you'd actually want."

Instead of doing anything other than examining to the stuff-under-bed, try examining the stuff-under-bed.

[--------------------------------------]

Part 2 - Front Porch

The Front Porch is down from the Bedroom and outside from the Bedroom. "This is the enclosed front porch of your home. Your front garden lies to the south, and you can re-enter your home to the north."

Chapter 1 - Items

The mail is in the front porch.

[--------------------------------------]

Part 3 - Front of House

The Front Garden is south of the Front Porch and outside from the Front Porch. "You can enter your home to the north. A path leads around it to the northeast and northwest, and a country lane is visible to the south." The printed name is "Front of House".

Chapter 1 - Items

The roses are in the front garden.

The bulldozer is in the front garden.

[TODO bulldozer driver]

[TODO Mr Prosser, digital watch]

[TODO dog]

[--------------------------------------]

Part 4 - Back of House

The Back Garden is northwest of the Front Garden and northeast of the Front Garden. "The rear garden is a pleasant place. It's a bright morning, the sun is shining, the birds are singing, the meadows are blooming, and it's a lovely day for a walk. A path leads around the house to the southeast and southwest." The printed name is "Back of House".

[--------------------------------------]

Part 5 - Country Lane

The Country Lane is south of the Front Garden. "The road runs from your home, to the north, toward the village Pub, to the west."

[--------------------------------------]

Part 6 - Pub

The Pub is west of the Country Lane and inside from the Country Lane. "The Pub is pleasant and cheerful and full of pleasant and cheerful people who don't know they've got about twelve minutes to live and are therefore having a spot of lunch. Some music is playing on an old jukebox. The exit is east."

Chapter 1 - Items

[TODO pub object]

The bar is in the pub.

The pub shelf is in the pub.

The jukebox is in the pub.

The music is in the pub.

The pub furnishings are in the pub.

The beer is in the pub.

The peanuts are in the pub.

The sandwich is in the pub.

[TODO barman]

[======================================]

Volume 2 - Actors

Part 1 - Ford

[TODO Ford, satchel, satchel fluff, towel]

Part 2 - Arthur

[TODO Arthur]
