// Inherit the parent event
event_inherited();

background = c_black;
lineBreak = "\n\n";

global.character1Name = "You"
global.character2Name = "Restless Spirit"


dialog.add(sYou, global.character1Name+lineBreak+"... This place feels different.");
dialog.add(sSpirit1, global.character2Name+lineBreak+"You... You have a name, don't you? But me... I have none.");
dialog.add(sYou, global.character1Name+lineBreak+"You don't remember your name?");
dialog.add(sSpirit1, global.character2Name+lineBreak+"It's gone. Time stole it from me. The longer I remain forgotten, the more I fade. But if you... if you could remember...");
dialog.add(sYou, global.character1Name+lineBreak+" I don't even know you. How am I supposed to -");
dialog.add_choice(sSpirit1, global.character2Name + "\n\nJust think! Give me something to anchor myself!",
					[{
						text: "Elowen",
							callback: function(dialogue){
								dialogue.add(sSpirit1, global.character2Name + "\n\nYes... yes. That was it. That was me. Thank you, human. Take this... before I forget again.");
								dialogue.add(sNarrative, "\n\nOne of keys appears in your hands.");
							}
					},
					{
						text: "Kaela",
							callback: function(dialogue){
								dialogue.add(sSpirit1, global.character2Name + "\n\nUhhh... no, that wasn't the name... it's not a name that suits me!!!");
								dialogue.add(sNarrative, "\n\nYou are attacked by the angry spirit.");
								global.nextRoom = End3;
							}	
					},
					{
						text: "Jessie",
							callback: function(dialogue){
								dialogue.add(sSpirit1, global.character2Name + "\n\nNo!!! That's not a familiar name at all! I want you to tell me my name, not your friend's name!!");
								dialogue.add(sNarrative, "\n\nYou are attacked by the angry spirit.");
								global.nextRoom = End3;
							}
					},]);
