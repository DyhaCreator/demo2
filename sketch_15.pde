float x[] = new float[4];
float y[] = new float[4];
float xs[] = new float[4];
float ys[] = new float[4];
void setup(){
  size(500,500);
  noFill();
  stroke(255);
  strokeWeight(5);
  for(int i = 0;i<4;i++){
    x[i]=random(width);
    y[i]=random(height);
    xs[i]=random(5);
    ys[i]=random(5);
  }
}
void draw(){
  background(0);
  bezier(x[0],y[0],x[1],y[1],x[2],y[2],x[3],y[3]);
  for(int i = 0;i<4;i++){
    x[i]+=xs[i];
    y[i]+=ys[i];
    if(x[i]>width||x[i]<0){xs[i]=-xs[i];}
    if(y[i]>height||y[i]<0){ys[i]=-ys[i];}
    //circle(x[i],y[i],10);
  }
  
}
