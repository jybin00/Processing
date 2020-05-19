Mover m;
int counter = 0;
void setup() {
  size(640, 320, P3D);
  m = new Mover();
  smooth(4);
}

void draw() {
  
  counter++;


  pushMatrix();
  fill(200, 200, 200);
  ellipse(m.location.x, m.location.y, 50, 30);

  PVector f = new PVector(0, 0.1);
  ambientLight(255, 255, 255, m.location.x, m.location.y, 0);
  m.applyForce(f);
  m.wind();
  m.edges();
  m.display();
  m.update();
  textSize(15);
  fill(0, 0, 0);
  popMatrix();

  fill(0, 102, 153);

  if (counter == 30) {
    background(25, 100, 10);
    pushMatrix();
    text("acceleration: " + m.acceleration.x +" " + m.acceleration.y, 10, 15);
    text("velocity: " + String.format("%.2f", m.velocity.x) +" " +
      String.format("%.2f", m.velocity.y), 10, 30);
    text("location " + String.format("%.2f", m.location.x) + " " + String.format("%.2f", m.location.y), 10, 45);
    popMatrix();

    fill(255);
    ellipse(random(width), random(height), 5, 5);
    counter = 0;
  }
}
