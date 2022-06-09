import java.util.LinkedList;
import java.util.Queue;

//class of linked nodes, each node is a train car
public class Train{
    final private int _size = 8;
    //_head is the train car of the conductor (where car-locking keys are attained)
    private TrainCar _head, _tail;
    private TrainCar _curr;

    private LinkedList<TrainCar> train = new LinkedList<TrainCar>();
    Queue<String> stations = new LinkedList<String>();


    public Train() {
        //pointers at the head and tail cars
        _head = new TrainCar();
        _tail = new TrainCar();

        for (int i = 0; i < _size; i++) {
            train.add(new TrainCar());
        }

        //initializes protagonist at car in front of conductor car
        _curr = train.get(1);
    }

    public String toString() {
        String output = "";

        for (int i = 1; i <= _size; i++) {

          if (i == 10) {
            output += "[ " + i + " ]"; //gets rid of trailing linkage between train cars
          }
          else {
            output += "[ " + i + " ] -- ";
          }

        }

        return output;
    }

    public TrainCar getHead() {
        return _head;
    }

    public void stationSetup() {
        stations.add("Times Sq- 42 St");
        stations.add("34 St- Penn Station");
        stations.add("14 St");
        stations.add("Chambers St");
    }

    private class TrainCar{
        public boolean _locked = false;
        public int _passengers;
        // public int carNum; //identifier for train car; may be just placeholder

        public TrainCar(/*int carN*/){
            _passengers = 10;
            // this.carNum = carN;
        }

    } //ends subclass TrainCar

}
