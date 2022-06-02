import java.util.Scanner;

public class Woo {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Train train = new Train(); //constructor of Train class
        Protagonist mc = new Protagonist(); //constructor of main character

        System.out.print("Hey there. You ready to play? (Type 'yes' to confirm): ");

        if (sc.nextLine().toLowerCase().equals("yes")) {
          System.out.println("You better be. Entering game...");
          System.out.println("Your name?");

          //animation of entering game
          // int l = 0;
          // while (l < 25) {
          //   System.out.print(" - ");
          //   //Thread.sleep(100)
          //   l++;
          // } //end animation


          String mcName = mc.setName(sc.nextLine());
          System.out.println("Okay " + mcName);
          System.out.println("Train:\n" + train);

        }
        else {
          System.exit(0);
        }

        System.out.println("You're riding the 2 train, on your way to Stuyvesant High School.");
        System.out.println("All of a sudden, the lights flicker, before the train falls into complete darkness...");
        System.out.println("The passengers all fall into chaos!");    

        System.out.println("opening notes...");
        mc.write("testing out using kts");
        mc.write("testing p2");
        System.out.println(mc.openNotes());   

        System.out.println("dropping da hints");
        mc.setupHints();
        System.out.println("Hint3 : " + mc.storeHint() + "\n");
        System.out.println("Current notes: " + "\n" + mc.openNotes());
        System.out.println("Hint2: " + mc.storeHint() + "\n");
        System.out.println("Current notes: " + "\n" + mc.openNotes());

        sc.close();

    }
}
