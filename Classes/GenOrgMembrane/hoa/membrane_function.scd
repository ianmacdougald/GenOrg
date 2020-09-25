var decodingOrder = 2; 
var encodingOrder = 1;
{ | modules, in, distance, azimuth, elevation | 
	SynthDef.wrap({ 
		var sig = HOAEncoder.ar(
			encodingOrder, 
			in, 
			azimuth, 
			elevation, 
			plane_spherical: 1, 
			radius: distance
		); 
		HOADecLebDev26.ar(decodingOrder, sig);
	});
}