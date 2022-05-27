import java.util.Scanner;
//Driver File 

public class Woo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Hey! What's your name?");
        Train train = new Train();
        Protagonist mc = new Protagonist(sc.next());
        System.out.println("Train: " + train);

        sc.close();
    }
}
