class RockSystem {
  // It's just an ArrayList of particle objects
  ArrayList<Rock> rocks;
  PShape shape;
  
  RockSystem(int n) {
    rocks = new ArrayList<Rock>();
    shape = loadShape("Stone_Forest_1_LOD1.obj");
    
    // Make all the Rocks
    for (int i = 0; i < n; i++) {
      Rock newRock = new Rock(width/2+100, random(height - 800, height), 0, shape, random(-7,-1));
      rocks.add(newRock);
    }
  }

  void update() {
    for (Rock r : rocks) {
      r.update();
    }
  }

  /*void setEmitter(float x, float y) {
    for (Particle p : particles) {
      // Each particle gets reborn at the emitter location
      if (p.isDead()) {
        p.rebirth(x, y);
      }
    }
  }*/

  void display() {
    //shape(particleShape);
    for (Rock r : rocks) {
      r.drawShape();
    }  
  }
}

