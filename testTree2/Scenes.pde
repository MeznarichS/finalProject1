public class Scenes implements Comparable {
  PImage img;
  public Scenes() {
  }

  void scene0() {
    textAlign(CENTER);
    img = loadImage("data/blue.jpg");
    image(img, 0, 0, 400, 200);
  }

  void scene1() {
    //img = loadImage("data/txel.png");
    //image(img, 0, 0, 400, 200);
    text("You got Zazu!", width/2, height/3);
  }
  void scene2() {
    //img = loadImage("data/augs.jpg");
    //image(img, 0, 0, 400, 200);
    text("You got Stitch!", width/2, height/3);
  }
  void scene3() {
    text("You got Bagheera!", width/2, height/3);
  }
  
  
  
  
  int compareTo(Object o) {
    return -1;
  }
}
