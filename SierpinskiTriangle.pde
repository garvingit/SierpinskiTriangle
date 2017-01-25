public void setup()
{
	size(500,500);
}
public void draw()
{
	sierpinski(100,250,10000);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		/*beginShape();
		vertex(x, y);
		vertex(x+len/2, y-len);
		vertex(x+len, y);
		endShape(CLOSE);*/
		triangle(x,y,x+len/2,y-len,x+len,y);
	}
	else{
		sierpinski(x,y,len/2);
		sierpinski(len/2,y,len/2);
		sierpinski(len/4,len/2,len/2);
		len -= 1;
	}
}