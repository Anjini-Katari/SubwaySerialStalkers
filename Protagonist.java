public class Protagonist {
    // private String name; // player's name

    //You can write to the notepad to save potential clues the player may find
    private String notes;


    public Protagonist() {
        // name = nameInput;
        notes = "";
    }

    public String getName() {
        // return name;
    }

    public String openNotes() {
        return notes;
    }


    //jotting down clues
    public String write(String note) {
        notes += "\n" + note;
        return note;
    }
}
