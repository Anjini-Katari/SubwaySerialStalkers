public class Protagonist {
    private String name; // player's name
    private String notes; // notepad for jotting down clues

    public Protagonist(String nameInput) {
        name = nameInput;
        notes = "";
    }

    public String getName() {
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
}
