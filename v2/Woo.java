import java.util.Scanner;

public class Woo {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Train train = new Train(); //constructor of Train class
        Protagonist mc = new Protagonist(); //constructor of main character

        System.out.print("Hey there. You ready to play?: ");

        try {
          if (s.nextLine().toLowerCase() == "yes") {
            System.out.println("You better be. Entering game...");

            //animation of entering game
            int l = 0;
            while (l < 25) {
              System.out.print(" - ");
              Thread.sleep(100);
              l++;
            } //end animation

            String mcName = mc.setName(sc.nextLine());
            System.out.println("Okay " + mcName);
            System.out.println("Train:\n" + train);

            sc.close();
          }
        } //end try

        catch(Exception e) {
          System.out.println("Um...You suck. Exiting game...");
          System.exit();
        } //end catch
    }
}
