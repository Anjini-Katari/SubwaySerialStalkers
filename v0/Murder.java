import java.util.Scanner;

public class Murder {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Hey! What's your name?");
        Train train = new Train();
        Protagonist mc = new Protagonist(sc.next());
        System.out.println("Train: " + train);

        sc.close();
    }
}
