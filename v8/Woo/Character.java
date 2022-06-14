public class Character {
    private String name; //name of person on train
    private String keyItem; //distinct item on person (possibly clue???)
    private String[] responses; //list of responses to question at index #
    private int susVal;

    public Character(String n, String k) {
        name = n;
        keyItem = k;
        susVal = 0;

    }

    public String getName() {
        return name;
    }

    public String getItem() {
        return keyItem;
    }

    public String[] setResponses(String[] r) {
        responses = r;
        return responses;
    }

    public String respond(int i) {
        return responses[i];
    }

    public int getSusVal(int i) {
        return susVal;
    }

    public int susPlus(int i) {
        susVal += i;
        return susVal;
    }

}
