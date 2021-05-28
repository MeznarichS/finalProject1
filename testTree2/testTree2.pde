TreeNode tree;
TreeNode current;
String s="Ready to find out which Disney sidekick you resemble the most? Press left or right arrow to start!";
BinarySearchTree t;
Scenes sc;
boolean one=false;
boolean two=false;
boolean three=false;
boolean zero=false;
private int levelCount=0;

void setup() {
  size(800, 600);
  t=new BinarySearchTree();
  tree=t.buildTree();
  current=tree;
  sc=new Scenes();
}

void draw() {
  background(0);
  fill(255);
  textSize(16);
  text(s, width/2, height/2);
  textAlign(CENTER);
  if (zero==true) {
    //sc.scene0();
  } else if (one==true) {
    sc.scene1();
    text("play again? (press down arrow)", 200, 400);
  } else if (two==true) {
    sc.scene2();
    text("play again? (press down arrow)", 200, 400);
  } else if (three==true) {
    sc.scene3();
    text("play again? (press down arrow)", 200, 400);
  } else {
    zero=true;
  }
}

void keyPressed() {
  check();

  if (keyCode == LEFT) {
    s=(String)current.getValue();
    System.out.println(s);

    if (s.equals("Zazu")) {
      one = true;
      zero = false;
    } else if (s.equals("Bagheera")) {
      three = true;
      zero = false;
    }
    if (s.equals("Nana") || s.equals("Sven")) {
      one=true;
      zero=false;
      text("play again? (press down arrow)", 200, 400);
    } else if (s.equals("Mushu") || s.equals("Cri-kee") || s.equals("Kala") || s.equals("Jiminy Cricket")) {
      two=true;
      zero=false;
      text("play again? (press down arrow)", 200, 400);
    } else {
      current= current.getLeft();
      levelCount++;
    }
  } else if (keyCode == RIGHT) {
    s=(String)current.getValue();
    System.out.println(s);

    
    if (s.equals("Stitch") || s.equals("Abu") || s.equals("Baymax") || s.equals("Baloo")) {
      one=true;
      zero=false;
      text("play again? (press down arrow)", 200, 400);
    } else if (s.equals("Olaf") || s.equals("Tramp") || s.equals("Meeko") || s.equals("Pegasus")) {
      two=true;
      zero=false;
      text("play again? (press down arrow)", 200, 400);
    } else {
      current = current.getRight();
      levelCount++;
    }
  }
}

void check() {
  if (levelCount > 4) {
    println("play Again? Press down arrow");
  }
  if (keyCode==DOWN) {
    zero=true;
    levelCount=0;
    current=tree;
    s="Disney Quiz again? Really? Press left or right arrow";
    System.out.println(s);
  }
}


interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
