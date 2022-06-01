import java.util.Scanner;

public class Woo {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Hey! What's your name?");
        Train train = new Train(); //constructor of Train class
        Protagonist mc = new Protagonist();
        System.out.println("Okay " + sc.nextLine());
        System.out.println("Train:\n" + train);

        sc.close();
    }
}
