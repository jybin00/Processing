class Mover {
  PImage helicopter;
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector tmp_vel;
  PVector wind_up= new PVector(0, -0.2);
  PVector wind_left= new PVector(-0.1, 0);
  PVector wind_right= new PVector(0.1, 0);
  PVector gravity = new PVector(0, 0.1);

  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(1, -1);
    tmp_vel = velocity;
    acceleration = new PVector(0, 0);
    helicopter = loadImage("helicopter.png");
  }

  void update() {
    //PVector mouse = new PVector(mouseX, mouseY);
    //mouse.sub(location);
    //mouse.setMag(0.5);
    //acceleration = mouse;

    velocity.add(acceleration);
    location.add(velocity);
    //velocity.limit(3);
  }

  void edges() {
    if (location.x > width) {
      //rotateY(360);
      velocity.x *= -0.96; 
      //location.x = width;
    } else if (location.x < 3) {
      //rotateY(360);
      velocity.x *= -0.96; 
      //location.x = 1;
    }
    if (location.y >= height-1) {
      velocity.y *= -0.96;
      //location.y = height;
    } else if (location.y < 3) {
      velocity.y *= -0.96; 
      //location.y = 1;
    }
    if (location.y >height) {
      location.y = height-5;
    }
  }

  void display() {
    imageMode(CENTER);
    image(helicopter, m.location.x, m.location.y, 50, 50);
  }

  void wind() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == UP) {
          tmp_vel = velocity;
          acceleration.add(wind_up);
        } 
        if (keyCode == LEFT) {
          tmp_vel = velocity;
          acceleration.add(wind_left);
        } 
        if (keyCode == RIGHT) {
          tmp_vel = velocity;
          acceleration.add(wind_right);
        }
      }
    } else velocity = tmp_vel;
  }

  void applyForce(PVector force) {
    acceleration = force;
  }
}
