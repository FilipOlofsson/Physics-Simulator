Particle[] particles = new Particle[15000];

int Force = 50;

void setup() {
  size(800, 600);
  stroke(255);
  for(int i = 0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  background(0, 0, 0);
  for(int i = 0; i < particles.length; i++) {
    particles[i].update();
    particles[i].draw();
  }
}

void keyPressed() {
  for(int i = 0; i < particles.length; i++) {
    particles[i].x = (int) random(width);
    particles[i].y = (int) random(height);
    particles[i].xV = 0;
    particles[i].yV = 0;
  }
}

void mouseMoved() {
  for(int i = 0; i < particles.length; i++) {
    float Distance = (float) Math.sqrt(Math.pow(particles[i].x - mouseX, 2) + Math.pow(particles[i].y - mouseY, 2));
    float angle = (float) Math.atan2(particles[i].y - mouseY, particles[i].x - mouseX);
    if(Distance == 0) Distance = 1/Distance+1;
    else Distance = 1/Distance;
    Distance *= Force;
    particles[i].xV += (float) Math.cos(angle) * Distance;
    particles[i].yV += (float) Math.sin(angle * Distance);
  }
}