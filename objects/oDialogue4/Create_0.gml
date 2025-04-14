// Inherit the parent event
event_inherited();

background = c_black;
lineBreak = "\n\n";

global.character1Name = "You"
global.character2Name = "Demon 1"
global.character3Name = "Demon 2"

dialog.add(sDemon1, global.character1Name + lineBreak + "Tell us - what does humanity taste like?");
dialog.add(sYou, global.character1Name+ lineBreak + "...Excuse me?");
dialog.add(sDemon2, global.character3Name + lineBreak + "Not literally! Ugh, we don't eat people. We mean... what does it feel like to be human? What's your essence?");
dialog.add_choice(sDemon2, global.character2Name +"\n\nNot literally! Ugh, we don't eat people. We mean... what does it feel like to be human? What's your essence?",
					[
						{
							text: "Tell a joke",
							callback: function(dialogue){
								dialogue.add(sNarrative, "\n\nAfter hearing the joke, they laugh.");
								dialogue.add(sDemon1, global.character2Name + "\n\nPfft - what?! That makes no sense! I love it! Humans are weird!")
								
								dialogue.add(sNarrative, "\n\nA key is thrown into your hand");
								dialogue.add(sDemon1, global.character2Name+"\n\nAlright, that was fun. You earned this.");
							}
						},
						{
							text: "Demonstrate a human habit",
							callback: function(dialogue){
								dialogue.add(sNarrative, "\n\nAfter watching the protagonist stretch and yawn.");
								dialogue.add(sDemon2, global.character3Name + "\n\nHah. So you guys just... do that? No reason? You're so inefficient.");
							
								dialogue.add(sNarrative, "\n\nA key is thrown into your hand");
								dialogue.add(sDemon1, global.character2Name+"\n\nAlright, that was fun. You earned this.");
							}
						},
						{
							text:"Sing a song",
							callback: function(dialogue){
								dialogue.add(sNarrative, "\n\nAfter hearing the song, their eyes sparkle");
								dialogue.add(sDemon1, global.character1Name+"\n\nWhoa... that was kind of... beautiful. Can you do that all the time?");
							
								dialogue.add(sNarrative, "\n\nA key is thrown into your hand");
								dialogue.add(sDemon1, global.character2Name+"\n\nAlright, that was fun. You earned this.");
							}
						}
					]);

