// Inherit the parent event
event_inherited();

background = c_black;
lineBreak = "\n\n";

global.character1Name = "You"
global.character2Name = "Demon 2"
global.character3Name = "Demon 3"

dialog.add(sDemon3, global.character3Name + lineBreak + "Prove you're mortal.");
dialog.add(sYou, global.character1Name+ lineBreak + "...What?!");
dialog.add(sDemon3, global.character3Name + lineBreak + "You know, that thing where you eventually stop existing? Prove you can do that.");
dialog.add(sYou, global.character1Name+ lineBreak + "How exactly do you expect me to prove I can die?");
dialog.add_choice(sDemon3, global.character3Name +"\n\nI don't know. Just... do something fragile.",
					[
						{
							text: "Pinch yourself",
							callback: function(dialogue){
								dialogue.add(sNarrative, "\n\nAfter watching you pinch yourself, they are shocked.");
								dialogue.add(sDemon2, global.character2Name + "\n\nDid you just hurt yourself on purpose?! That's so inefficient!");
								
								dialogue.add(sNarrative, "\n\nA key is thrown into your hand.");
								dialogue.add(sDemon3, global.character3Name+"\n\nFine, fine. You've convinced us. Here. But don't go dying before the fun starts.");
							}
						},
						{
							text: "Pretend to faint",
							callback: function(dialogue){
								dialogue.add(sNarrative, "\n\nAfter you pretend to faint and panic.");
								dialogue.add(sDemon3, global.character3Name + "\n\nWh - did it just die?! Oh, wait. No. It's breathing. Whew.");
							
								dialogue.add(sNarrative, "\n\nA key is thrown into your hand.");
								dialogue.add(sDemon3, global.character3Name+"\n\n Fine, fine. You've convinced us. Here. But don't go dying before the fun starts.");
							}
						},
						{
							text:"Act scared of a demon",
							callback: function(dialogue){
								dialogue.add(sNarrative, "\n\nAfter you flinch when they growl.");
								dialogue.add(sDemon2, global.character2Name+"\n\nWhoa, you guys actually feel fear?! That's kind of amazing.");
							
								dialogue.add(sNarrative, "\n\nA key is thrown into your hand.");
								dialogue.add(sDemon3, global.character3Name+"\n\nFine, fine. You've convinced us. Here. But don't go dying before the fun starts.");
							}
						}
					]);

