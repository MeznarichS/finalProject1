class BinarySearchTree {

  private TreeNode root;
  private TreeNode current;

  public BinarySearchTree() {
    root=null;
  }

  TreeNode buildTree() {
    
    root = new TreeNode("Do you find your motivation in yourself (left) or in others (right)?");
    
    //level one
    root.setLeft(new TreeNode("Do you make decisions based on facts (left) or emotion (right)?"));
    root.setRight(new TreeNode("Do you make decisions based on facts (left) or emotion (right)?"));
    
    //level two
    root.getLeft().setLeft(new TreeNode("Do you daydream a lot, particularly about the future? (Left for yes, right for no)"));
    root.getRight().setRight(new TreeNode("Do you daydream a lot, particularly about the future? (Left for yes, right for no)"));
    root.getLeft().setRight(new TreeNode("Do you daydream a lot, particularly about the future? (Left for yes, right for no)"));
    root.getRight().setLeft(new TreeNode("Do you daydream a lot, particularly about the future? (Left for yes, right for no)"));

    //level three
    root.getLeft().getLeft().setLeft(new TreeNode("Do you find schedules reassuring (left) or restrictive (right)?"));
    root.getLeft().getLeft().setRight(new TreeNode("Do you find schedules reassuring (left) or restrictive (right)?"));
    root.getLeft().getRight().setLeft(new TreeNode("Do you find schedules reassuring (left) or restrictive (right)?"));
    root.getLeft().getRight().setRight(new TreeNode("Do you find schedules reassuring (left) or restrictive (right)?"));
    root.getRight().getRight().setRight(new TreeNode("Do you find schedules reassuring (left) or restrictive (right)?"));
    root.getRight().getRight().setLeft(new TreeNode("Do you find schedules reassuring (left) or restrictive (right)?"));
    root.getRight().getLeft().setLeft(new TreeNode("Do you find schedules reassuring (left) or restrictive (right)?"));
    root.getRight().getLeft().setRight(new TreeNode("Do you find schedules reassuring (left) or restrictive (right)?"));
    
    //level four
    root.getLeft().getLeft().getLeft().setLeft(new TreeNode("Zazu"));
    root.getLeft().getLeft().getLeft().setRight(new TreeNode("Stitch"));
    root.getLeft().getLeft().getRight().setLeft(new TreeNode("Bagheera"));
    root.getLeft().getLeft().getRight().setRight(new TreeNode("Abu"));
    root.getLeft().getRight().getLeft().setLeft(new TreeNode("Nana"));
    root.getLeft().getRight().getLeft().setRight(new TreeNode("Baymax"));
    root.getLeft().getRight().getRight().setLeft(new TreeNode("Sven"));
    root.getLeft().getRight().getRight().setRight(new TreeNode("Baloo"));

    root.getRight().getLeft().getLeft().setLeft(new TreeNode("Mushu"));
    root.getRight().getLeft().getLeft().setRight(new TreeNode("Olaf"));
    root.getRight().getLeft().getRight().setLeft(new TreeNode("Cri-Kee"));
    root.getRight().getLeft().getRight().setRight(new TreeNode("Tramp"));
    root.getRight().getRight().getLeft().setLeft(new TreeNode("Kala"));
    root.getRight().getRight().getLeft().setRight(new TreeNode("Meeko"));
    root.getRight().getRight().getRight().setLeft(new TreeNode("Jiminy Cricket"));
    root.getRight().getRight().getRight().setRight(new TreeNode("Pegasus"));
    
    
    current=root;
    return current;
  }

  TreeNode returnTree() {
    current=root;
    return root;
  }

  private void inorder() {
    inorder(root);
  }

  public void inorder(TreeNode t) {
    if (t!=null) {
      inorder(t.getLeft());
      System.out.println(t.getValue());
      inorder(t.getRight());
    }
  }
}
