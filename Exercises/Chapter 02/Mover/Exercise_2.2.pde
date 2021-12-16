  public void applyForce(PVector force) {
    f = new PVector.div(f, mass);
    acceleration.add(f);
  }
