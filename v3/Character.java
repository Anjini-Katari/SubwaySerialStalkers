public class Character {
    private String name; //name of person on train
    private keyItem; //distinct item on person (possibly clue???)
    private String[] responses; //list of responses to question at index #

    public Character(String n, String k) {
        name = n;
        keyItem = k;

    }

    public String getName() {
        return name;
    }

    public String getItem() {
        return keyItem;
    }



}
