// KOSTIS KARAGIANNIS TX2020038




s.boot
s.reboot


// PIANO Pbind


// Melody 1

(
Pbind(\degree, Pseq([ 9 ]), \dur, 1 , \legato, 10 ;
).play
)




// Melody 2

(
Pbind(\degree, Pseq([1, 5, 1, 5, 10, 12, 10, 9], inf), \dur, 1, \legato, 2;
).play;
)






// Sygxordies

(
Pbind(\degree, Pseq([[-2, 0, -4], [1, 3, 5], [0, 3, 10], [5, 8, 12]], inf), \dur, 0.4, \legato, 3;
).play;
)






// Melody 3

(
Pbind(\degree, Pseq([1, 5, 1, 5, 10, 12, 10, 9, 1, 5, 1, 5, 10, 12, 9, 11], inf), \dur, 0.5, \legato, 3;
).play;
)





// Synth Beat SinOsc 'Baso'

(
b = {
	arg taxb = 5;
	var freq, amp, sig;
	freq = SinOsc.ar(taxb).exprange(100, 150);
	amp = SinOsc.ar(0.2).exprange(0.1,0.2);
	sig = SinOsc.ar (50, 0.2, 2) * amp;
}.play
)

b.free;





//Synth Beat SinOsc 'Metavallomeno'

(
m = {
	arg taxm = 1;
	var freq, amp, sig;
	freq = SinOsc.ar(taxm).exprange(200, 300);
	amp = SinOsc.ar(4).exprange(0.01,0.3);
	sig = SinOsc.ar (freq) * amp;
}.play;
)

m.set(\taxm, 1)
m.free;