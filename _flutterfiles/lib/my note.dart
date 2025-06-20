// issue 1: 
// the padding makes the movement fast but it stops the text before the loops finished
// - solution: removes padding and uses transform translate instead. and places the animation value in offset

// issue 2:
// the seconds sometimes came too long or too slow therefore the animation either 
// finishes before showing the fulltext or takes a long time before it repeats
//solution(revise): relate the length of text to the length of time

// issue 3:
// the distance and time are not proportional therefore it causes an inconsistent speed.
// at first short message generate faster animation
//solution: in the distance; the animation value.I remove the multiplication, therefore it is no longer
//connected to length

//issue 3.2:
// now its opposite, short message now generate slower animation ONLY when i multiply
// the animation value to addition and divide that thing
// WHYYY???HOW TO FIND BALANCE????

// issue 4:
// now the speed is consistent, but the cycle repeat before it finished showing all messages

//final take:
//in regards to issue 2-4, it occur because the time and distance is inbalanced.
//to solve it, I declare a variable of time and distance and make a function to
//why is speed a function? because its connected to distance and time. as letter(speed) increases
// the time and duration increases without changing the speed or cutting off the message