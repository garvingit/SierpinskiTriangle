int value = 400;
int r = 255;
int g = 255;
int b = 255;
int changeBy = 50;
public void setup()
{
	size(500,500);
}
public void draw()
{
	noStroke();
	fill(r,g,b);
	sierpinski(0,500,250+changeBy);

}
public void mousePressed()//optional
{
	r = (int)(Math.random()*256);
	g = (int)(Math.random()*256);
	b = (int)(Math.random()*256);
	if(value > 500)
		changeBy = -10;
	else if(value < 100)
		changeBy = 10;
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		triangle(x,y,x+len/2,y-len,x+len,y);
	}
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}