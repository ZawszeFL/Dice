Die dez;
int sum=0;
void setup()
{
	size(1000,1000);
	noLoop();
	}
void draw()
{
	background(255,0,0);

	for(int s=0; s<1000;s=s+50)
	{	
		for(int r=0;r<750;r=r+50)
		{
		dez=new Die(s,r);
		dez.show();
		dez.roll();
		
		}
	}
textSize(50);
textAlign(CENTER);
text("this is " + sum,500,850);
}
void mousePressed()
{
	redraw();
	sum=0;
}

class Die 
{	

	int myX, myY;
	int value;

	Die (int x, int y) 
	{
		myX=x;
		myY=y;
		value=(int)(Math.random()*6)+1;

	}

	void roll()
		{
			fill(0);
			if (value ==1)
			{
				ellipse(myX+25,myY+25,10,10);
				sum+=1;
			}
			if(value==2)
			{
			ellipse(myX+12,myY+12,10,10);
			ellipse(myX+38,myY+38,10,10);
			sum+=2;
			}
			if(value==3)
			{
				ellipse(myX+12,myY+12,10,10);
				ellipse(myX+25,myY+25,10,10);
				ellipse(myX+38,myY+38,10,10);
				sum+=3;
			}
			if(value==4)
			{
				ellipse(myX+12,myY+12,10,10);
				ellipse(myX+38,myY+12,10,10);
				ellipse(myX+12,myY+38,10,10);
				ellipse(myX+38,myY+38,10,10);
				sum+=4;
			}
			if(value==5)
			{
				ellipse(myX+12,myY+12,10,10);
				ellipse(myX+38,myY+12,10,10);
				ellipse(myX+25,myY+25,10,10);
				ellipse(myX+12,myY+38,10,10);
				ellipse(myX+38,myY+38,10,10);
				sum+=5;
			}
			if(value==6)
			{
				ellipse(myX+12,myY+12,10,10);
				ellipse(myX+38,myY+12,10,10);
				ellipse(myX+12,myY+25,10,10);
				ellipse(myX+38,myY+25,10,10);
				ellipse(myX+12,myY+38,10,10);
				ellipse(myX+38,myY+38,10,10);
				sum+=6;
			}

				
		}
	void show()
	{
		fill(255);
		rect(myX,myY,50,50);

	}
}
