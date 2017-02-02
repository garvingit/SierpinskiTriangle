int value = 400;
int r = 255;
int g = 255;
int b = 255;
public void setup()
{
	size(500,500);
}
public void draw()
{
//<<<<<<< HEAD
	background(0,0,0);
	noStroke();
	fill(r,g,b);
	for(int i = 0; i < 360; i+=90){
		sierpinski(130+50*cos(radians(i)),360+50*sin(radians(i)),250);
	}

//=======
	//sierpinski(0,0,500);
//>>>>>>> 02baca5bfcc319d0504edd6fa20906b656dad869
}
public void mousePressed()//optional
{
	r = (int)(Math.random()*256);
	g = (int)(Math.random()*256);
	b = (int)(Math.random()*256);
}
public void sierpinski(float x, float y, int len) 
{
	if(len <= 20){
		triangle(x,y,x+len/2,y-len,x+len,y);
	}
	else{
//<<<<<<< HEAD
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
//=======
   	 	//sierpinski(x, y + len/2, len/2);
    		//sierpinski(x + len, y +len/2, len/2);
    		//sierpinski(x + len/2, y - len/2, len/2);
//>>>>>>> 02baca5bfcc319d0504edd6fa20906b656dad869
	}
}
