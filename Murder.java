//driver class
public class Murder{
  public static void main(String[] args) {
    Train play = new Train();
    Scanner s = new Scanner(System.in);
    System.out.println("You arrived. Are you ready? ");
    try {
      if (s.nextLine().toLowerCase() == "yes") {
        System.out.println("You better be. Entering game...");
      }
    }
    catch {
      System.out.println("Um...You suck. Exiting game...");
      System.exit();
    }
  }
}
