public void setup()
{

}
public void draw()
{
	/*int x = 100;
    int y = 100;
    int len = 150;*/
	//triangle(x,y,x+len/2,y-len,x+len,y);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		beginShape();
		vertex(x, y);
		vertex(x+len/2, y-len);
		vertex(x+len, y);
		endShape(CLOSE);
	}
	else{
			
	}
}