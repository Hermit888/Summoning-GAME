// Inherit the parent event
event_inherited();

background = c_black;
lineBreak = "\n\n";

global.character1Name = "You"
global.character2Name = "Hungry Spirit"

dialog.add(sNarrative, "\n\nA long banquet table sits in the middle of the street, covered in decadent food - yet no one is eating. Ghostly figures linger nearby, watching longingly.");
dialog.add(sSpirit2, global.character2Name+lineBreak+"We remember the feast, but not the flavor. It has been so long...");
dialog.add(sYou, global.character1Name+lineBreak+"What do you want me to do?");

dialog.add_choice(sSpirit2, global.character2Name + "\n\nTell us. Describe it. Make us feel the taste again.",
					[{
						text: "Describe something sweet",
							callback: function(dialogue){
								dialogue.add(sSpirit2, global.character2Name + "\n\nAh... yes. Like honey on a warm day...");
								dialogue.add(sSpirit2, global.character2Name + "\n\nThank you. That was... delicious.");
								dialogue.add(sNarrative, "\n\nOne of the keys appears in your hands.");
							}
					},
					{
						text: "Describe something spicy",
							callback: function(dialogue){
								dialogue.add(sSpirit2, global.character2Name + "\n\nFire on the tongue! A thrill!");
								dialogue.add(sSpirit2, global.character2Name + "\n\nThank you. That was... delicious.");
								dialogue.add(sNarrative, "\n\nOne of the keys appears in your hands.");
							}	
					},
					{
						text: "Describe something refreshing",
							callback: function(dialogue){
								dialogue.add(sSpirit2, global.character2Name + "\n\nA cool breeze in the heat of summer... I can almost taste it again...");
								dialogue.add(sSpirit2, global.character2Name + "\n\nThank you. That was... delicious.");
								dialogue.add(sNarrative, "\n\nOne of the keys appears in your hands.");
							}
					},]);
