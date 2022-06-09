import java.util.Stack;

public class Protagonist {
    private String name; // player's name
    private final String[] questions = {"Hey, what's your name?", "Where are you headed?", "When was the last time you went to the bathroom?"};
    private int[] susList = new int[10];

    //You can write to the notepad to save potential clues the player may find
    private String notes;

    private Stack<String> hints = new Stack<String>();

    public Protagonist() {
        notes = "";
    }

    public String setName(String username) {
      name = username;
      return name;
    }

    public String openNotes() {
        return notes;
    }

    //jotting down clues
    public String write(String note) {
        notes += "\n" + note;
        return note;
    }

    public void setupHints() {
        hints.push("hint1");
        hints.push("hint2");
        hints.push("hint3");
    }

    public String storeHint() {
        String toStore = hints.pop();
        notes = toStore + "\n" + notes;
        return toStore;
    }

    public String askQ(Character c, int i) {
        System.out.println(questions[i]);
        return c.respond(i);
    }
}
