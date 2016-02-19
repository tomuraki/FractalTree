private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,110,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1=angle+branchAngle;
	double angle2=angle-branchAngle;
	int endX1,endY1,endX2,endY2;
	branchLength*=fractionLength;
	endX1=(int)(branchLength*Math.cos(angle1)+x);
	endX2=(int)(branchLength*Math.cos(angle2)+x);
	endY1=(int)(branchLength*Math.sin(angle1)+y);
	endY2=(int)(branchLength*Math.sin(angle2)+y);

	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);

	if(branchLength>smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength-1,angle+Math.PI/4);
		drawBranches(endX2,endY2,branchLength-1,angle-Math.PI/4);
	}
	
		
	
} 
