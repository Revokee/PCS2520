class RockSystem {
  // It's just an ArrayList of particle objects
  ArrayList<Rock> rocks;
  PShape shape;
  
  RockSystem(int n) {
    rocks = new ArrayList<Rock>();
    shape = loadShape("New_Stone_Forest.obj");
    
    // Make all the Rocks
    for (int i = 0; i < n; i++) {
      Rock newRock = new Rock(width + random(50, 500), random(height - 800, height), 0, shape, random(-7,-1));
      rocks.add(newRock);
    }
  }

  void update() {
    for (Rock r : rocks) {
      r.update();
    }
  }

  void recreate() {
    for (Rock r : rocks) {
      if (r.isDead()) {
        r.reset();
      }
    }
  }

  void display() {
    //shape(particleShape);
    for (Rock r : rocks) {
      r.drawShape();
    }  
  }
}
