// Inherit the parent event
event_inherited();


background = c_black;
lineBreak = "\n\n";

character1Name = "You"
character2Name = "Roommate"
global.key1 = true;
global.quit = true;

dialog.add(sYou,character1Name + lineBreak + "Ugh, wasn't today's class way too difficult? Prof. K's lectures always feel so complicated.");
dialog.add(sRoommate, character2Name + lineBreak + "Yeah, but there's a lot to learn. I actually found today's discussion on how space affects human psychology really interesting.");
dialog.add(sYou, character1Name + lineBreak + "Space influencing people...? I don't know if I'll buy that. I mean, spaces don't breathe or feel emotions, right? But we do - we're living, emotional beings.");
dialog.add(sRoommate, character2Name + lineBreak + "Hmm...!!! I think it makes sense, though. Just look at that... something's glowing over there!");

dialog.add(sNarrative, lineBreak + "A pulsing blue light flickers from their room, casting an eerie glow.");

dialog.add(sYou, character1Name + lineBreak + "Wait... isn't that our room? What the hell is going on?");
dialog.add(sRoommate, character2Name + lineBreak + "No idea, but it looks like something fun is about to happen. Prof. K was right - just that glow alone makes the space feel...inviting, almost magnetic!");
dialog.add(sYou, character1Name + lineBreak + "Yeah... It's kinda hypnotic. Let's check it out - maybe it's some kind of surprise event or something?");