// issue 1: 
// the padding makes the movement fast but it stops the text before the loops finished
// - solution: removes padding and uses transform translate instead. and places the animation value in offset

// issue 2:
// the seconds sometimes came too long or too slow therefore the animation either 
// finishes before showing the fulltext or takes a long time before it repeats
//solution(revise): relate the length of text to the length of time

// issue 3:
// the distance and time are not proportional therefore it causes an inconsistent speed.