/******************************************************************************
 * File: CollisionDetection.pde
 * Author:
 * Description: Contains Collision Detection routines
 ******************************************************************************/

void collisionDetectionSystemRunAll() {
 // get all objects
 // iterate all objects checking for collision
  detectCollisionWithShipLoop();
  detectCollisionBetweenRocksLoop();  
}

void detectCollisionWithShipLoop () {
  for (Rock r : rs.rocks) {
    if (detectCollisionWithShip(r)) {     
      // do somehing
      r.reset();
    }
  }
}

Boolean detectCollisionWithShip (Rock rock) {
 // Bounding shperes Collision Detection
 // (ax-bx)^2 + (ay-by)^2 + (az-bz)^2 < (ar+br)^2
 // return true if colision was detected
  return (  (rocket.x - rock.x)*(rocket.x - rock.x) 
          + (rocket.y - rock.y)*(rocket.y - rock.y) 
          + (rocket.z - rock.z)*(rocket.z - rock.z) 
          < (rocket.r + rock.r)*(rocket.r + rock.r));
}

void detectCollisionBetweenRocksLoop () {
  for (int i = 0; i < rs.rocks.size(); i++) {
    for (int j = i+1; j < rs.rocks.size(); j++) {
      // compare rocks.get(i) and rocks.get(j)
      if (detectCollisionBetweenRocks(rs.rocks.get(i), rs.rocks.get(j))){
        // do something
        rs.rocks.get(i).reset();
        rs.rocks.get(j).reset();
      }
    }
  }
}

Boolean detectCollisionBetweenRocks (Rock rock_a, Rock rock_b) {
 // Bounding shperes Collision Detection
 // (ax-bx)^2 + (ay-by)^2 + (az-bz)^2 < (ar+br)^2
 // return true if colision was detected
  return (  (rock_a.x - rock_b.x)*(rock_a.x - rock_b.x) 
          + (rock_a.y - rock_b.y)*(rock_a.y - rock_b.y) 
          + (rock_a.z - rock_b.z)*(rock_a.z - rock_b.z) 
          < (rock_a.r + rock_b.r)*(rock_a.r + rock_b.r));
}

