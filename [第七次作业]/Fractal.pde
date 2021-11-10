import java.util.Iterator;

int PARTICLE_START_FORCE = 100;
int PARTILE_MAX_VEL = 60;
int PARTICLE_MAX_ACC = 5; // Max particle acceleration
int SPAWN_COUNT = 2; // Number of particles to spawn at once
float LIFESPAN_DECREMENT = 2.0;
int START_SIZE = 50;//100;//175;
int SHRINK_RATE = 1;//2;//5;
int MAX_PARTICLES = 100;
int SPAWN_DELAY = 50; //ms

boolean displayColour = true;
int time = millis();

ParticleSystem system = new ParticleSystem();

void setup() {
  size(1200, 700);
  background(0);
  frameRate(60);
}

void draw() {
  // Update our particle system each frame
  system.update();
}

void mousePressed() {
  if (millis() > time + SPAWN_DELAY) {
    system.addParticle(new PVector(mouseX, mouseY));
    time = millis();
  }
}

void keyPressed() {

  switch (key) {
  case 'r':
    background(0);
    break;
  default:
    displayColour = !displayColour;
  }
}

class ParticleSystem {
  ArrayList<Particle> particles = new ArrayList<Particle>();
  int count = 0;

  ParticleSystem() {
  }

  void addParticle(PVector loc) {
    count++;

    if (particles.size() + SPAWN_COUNT < MAX_PARTICLES) {
      for (int i = 0; i < SPAWN_COUNT; i++) {
        particles.add(new Particle(loc));
      }
    }
  }

  void update() {
    // Use an iterator to loop through active particles
    Iterator<Particle> i = particles.iterator();

    while (i.hasNext()) {
      // Get next particle
      Particle p = i.next();

      // update position and lifespan
      p.update();

      // Remove particle if dead
      if (p.isDead()) {
        i.remove();
        count--;
      } else {
        p.display();
      }
    }
  }
}

class Particle {
  PVector loc;
  PVector vel;
  PVector acc;

  int size = START_SIZE;
  float angle;



  Particle(PVector loc2) {
    loc = new PVector(loc2.x, loc2.y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }

  void update() {
    // Move in random direction with random speed
    angle += random(0, TWO_PI);
    float magnitude = random(0, PARTICLE_START_FORCE); //3

    // Work out force
    acc.x += cos(angle) * magnitude;
    acc.y += sin(angle) * magnitude;

    // limit result
    acc.limit(PARTICLE_MAX_ACC);

    // Add to current velocity
    vel.add(acc);
    vel.limit(PARTILE_MAX_VEL);

    // Appy result to current location
    loc.add(vel);

    // Wrap around screen
    if (loc.x > width)
      loc.x -= width;
    if (loc.x < 0)
      loc.x += width;
    if (loc.y > height)
      loc.y -= height;
    if (loc.y < 0)
      loc.y += height;

    size -= SHRINK_RATE;
  }

  void display() {
    if (displayColour) {
    } else {
      fill(255);
    }
    ellipse(loc.x, loc.y, size, size);
  }

  boolean isDead() {
    if (size < 0) {
      return true;
    } else {
      return false;
    }
  }
}
