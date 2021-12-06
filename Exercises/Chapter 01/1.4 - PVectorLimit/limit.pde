void limit(float max) {
  if (vector.mag() > max*max) {
    _________();
    vector.setMag(max);
  }
}