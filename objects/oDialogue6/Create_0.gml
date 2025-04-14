// Inherit the parent event
event_inherited();

background = c_black;
lineBreak = "\n\n";

global.character1Name = "You"
global.character2Name = "Underworld Officer"

dialog.add(sOfficer, global.character2Name + lineBreak + "Halt! You there! Do you have a permit for being alive?");
dialog.add(sYou, global.character1Name+ lineBreak + "...What now?");
dialog.add_choice(sOfficer, global.character2Name +"\n\nA permit! You know, a Proof of Death Certificate. Standard paperwork for all Underworld residents.",
					[
						{
							text: "Try to talk your way out",
							callback: function(dialogue){
								dialogue.add(sYou, "\n\nUh, you see... I am technically dead. Just, uh... on vacation from being dead?");
								dialogue.add(sOfficer, global.character2Name + "\n\nA death vacation? ...That's actually a thing?");
								dialogue.add(sOfficer, global.character2Name + "\n\nA death vacation? ...That's actually a thing?");
								dialogue.add(sOfficer, global.character2Name + "\n\nHmmm. Fine. But if I see you breaking any more rules, you're coming with us!");
							}
						},
						{
							text: "Show fake paperwork",
							callback: function(dialogue){
								dialogue.add(sNarrative, "\n\nThe police is squinting at your fake ID.");
								dialogue.add(sOfficer, global.character2Name + "\n\nHmmm... This ID looks... suspiciously normal. Alright, let's see if you really are who you claim to be.");
								dialogue.add(sOfficer, global.character2Name + "\n\nI'm going to ask you 3 simple questions about yourself. Answer wrong, and it's straight to the Ghost Jail for you.");
								dialogue.add_choice(sOfficer, global.character2Name + "\n\nAccording to your ID... What's your full Underworld name?",
								[
									{
										text: "Greg Humanstein",
										callback: function(dialogue){
											dialogue.add(sOfficer, "\n\nLooks that is not your name.");
											global.nextRoom = End2;
										}
									},
									{
										text: "Soulreaper Von Darkblood III",
										callback: function(dialogue){
											dialogue.add_choice(sOfficer, global.character2Name + "\n\nWhat's your Underworld Occupation listed here?", 
											[
												{
													text: "Shadow Tax Collector",
													callback: function(dialogue){
													dialogue.add_choice(sOfficer, "\n\nFinal question... Date of Death?",
													[
														{
															text: "9999 B.C.",
															callback: function(dialogue){
															dialogue.add(sOfficer, "\n\nWhy do you dress differently from the primitive people?");
															global.nextRoom = End2;
															}
														},
														{
															text: "Yesterday at Lunch",
															callback: function(dialogue){
															dialogue.add(sOfficer, "\n\nDid you choke to death?");
															global.nextRoom = End2;
															}
														},
														{
															text: "Pending Approval",
															callback: function(dialogue){
															dialogue.add(sOfficer, global.character2Name + "\n\nHmmm. Alright. You can go.");
															}
														},
													]);
													}
												},
												{
													text: "Professional Napper",
													callback: function(dialogue){
													dialogue.add(sOfficer, "\n\n? What is that about?");
													global.nextRoom = End2;
													}
												},
												{
													text: "Licensed Spirit Therapist",
													callback: function(dialogue){
													dialogue.add(sOfficer, "\n\nShow me your license.");
													dialogue.add(sNarrative, "\n\nYou don't have a license.");
													global.nextRoom = End2;
													}
												},
											]);
											
										}
									},
									{
										text: "Kevin",
										callback: function(dialogue){
											dialogue.add(sOfficer, "\n\nLooks that is not your name.");
											global.nextRoom = End2;
										}
									}
								]);
								
								
							}
						},
						{
							text: "Run",
							callback: function(dialogue){
								dialogue.add(sNarrative, "\n\nYou tried to run away, but underworld officer spread his wings and caught up with you");
								global.nextRoom = End2;
							}
						},
					]);

