/*

wallclock (base from jsui help/Cycling 74)

*/

outlets = 3;
sketch.default2d();
var vbrgb = [1.,1.,1.,1.];
var vfrgb = [0.2,0.2,0.2,1.];
var vrgb2 = [0.5,0.5,0.5,1.];
var vtask = new Task(taskfun);

var hour  = 0.;
var minute = 0.;
var second = 0.;
 
vtask.interval = 1000;
vtask.repeat();
draw();



function draw()
{
	var theta,i,x,y;
	
	with (sketch) {
		// erase background
		glclearcolor(vbrgb);
		glclear();			
		glenable("line_smooth");
		moveto(0,0);
		// fill bgcircle
		shapeslice(180,1);
		glcolor(vrgb2);
		circle(0.9);
		glcolor(vbrgb);
		circle(0.8);
		// draw hour marks		
		for (i=0;i<12;i++) {
			theta = i/12*2*Math.PI;
			x = Math.cos(theta);
			y = Math.sin(theta);
			beginstroke("basic2d");
			strokeparam("order",1)
			strokeparam("slices",2)
			strokeparam("color",vrgb2);
			if (i%3) {
				strokeparam("scale",0.03);
				strokepoint(0.75*x,0.75*y);
				strokepoint(0.7*x,0.7*y);
			} else {
				strokeparam("scale",0.05);
				strokepoint(0.75*x,0.75*y);
				strokepoint(0.6*x,0.6*y);			
			}
			endstroke();
		}
				

		// hour hand
		theta = ((3-hour)/12)*2*Math.PI;
		x = Math.cos(theta);
		y = Math.sin(theta);
		beginstroke("basic2d");
		strokeparam("order",1)
		strokeparam("slices",2)
		strokeparam("color",vfrgb);
		strokeparam("scale",0.05);
		strokepoint(-0.1*x,-0.1*y);
		strokepoint(0.3*x,0.3*y);
		endstroke();

		// minute hand			
		theta = ((15-minute)/60)*2*Math.PI;
		x = Math.cos(theta);
		y = Math.sin(theta);
		beginstroke("basic2d");
		strokeparam("order",1)
		strokeparam("slices",2)
		strokeparam("color",vfrgb);
		strokeparam("scale",0.05);
		strokepoint(-0.1*x,-0.1*y);
		strokepoint(0.55*x,0.55*y);
		endstroke();

		// second hand			
		theta = ((15-second)/60)*2*Math.PI;
		x = Math.cos(theta);
		y = Math.sin(theta);
		glcolor(vfrgb);
		moveto(-0.2*x,-0.2*y);
		circle(0.025);
		beginstroke("basic2d");
		strokeparam("order",1)
		strokeparam("slices",2)
		strokeparam("color",vfrgb);
		strokeparam("scale",0.01);
		strokepoint(-0.2*x,-0.2*y);
		strokepoint(0.75*x,0.75*y);
		endstroke();

		glcolor(vrgb2);
		moveto(0,0);
		circle(0.02);

	}
}

function hours(v)
{
	hour = v;
	draw;
	refresh();
	outlet(0,Math.floor(hour));
}

function minutes(v)
{
	minute = v;
	draw;
	refresh();
	outlet(1,minute);
}

function seconds(v)
{
	second = v;
	draw;
	refresh();
	outlet(2,second);
}

function frgb(r,g,b)
{
	vfrgb[0] = r/255.;
	vfrgb[1] = g/255.;
	vfrgb[2] = b/255.;
	draw();
	refresh();
}

function rgb2(r,g,b)
{
	vrgb2[0] = r/255.;
	vrgb2[1] = g/255.;
	vrgb2[2] = b/255.;
	draw();
	refresh();
}

function brgb(r,g,b)
{
	vbrgb[0] = r/255.;
	vbrgb[1] = g/255.;
	vbrgb[2] = b/255.;
	draw();
	refresh();
}

function taskfun()
{
	// vdate = new Date();
	draw();
	refresh();
}
taskfun.local = 1; //private

function forcesize(w,h)
{
	if (w!=h) {
		h = w;
		box.size(w,h);
	}
}
forcesize.local = 1; //private

function onresize(w,h)
{
	forcesize(w,h);
	draw();
	refresh();
}
onresize.local = 1; //private
