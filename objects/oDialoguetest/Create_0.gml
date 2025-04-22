// Inherit the parent event
event_inherited();

background = c_black;

global.character1Name = "You"
global.character2Name = "Roommate"
// global.nextroom = Hallway;

dialog.add(sRoommate, global.character2Name + "\n\nhello traveler!");
dialog.add(sYou,  global.character1Name + "\n\nHi");
dialog.add_choice(sRoommate, global.character2Name +"\n\nwhich way you want to go?",
					[
						{
							text: "east",
							callback: function(dialogue){
								dialogue.add(sRoommate, global.character2Name + "\n\nGood luck for the east path")
							}
						},
						{
							text: "west",
							callback: function(dialogue){
								global.nextRoom = Hallway;
								
								dialogue.add(sRoommate, global.character2Name + "\n\nBye");
							}
						},
						{
							text:"south",
							callback: function(dialogue){
								global.nextRoom = End2;
								dialogue.add(sRoommate, global.character2Name+"\n\nyou dead");
							}
						}
					]);
