import java.util.LinkedList;


//class of linked nodes, each node is a train car
public class Train{
    final private int _size = 10;
    //_head is the train car of the conductor (where car-locking keys are attained)
    private TrainCar _head, _tail;
    private TrainCar _curr;

    private LinkedList<TrainCar> train = new LinkedList<TrainCar>();


    public Train() {
        _head = new TrainCar(0);

        for (int i = 0; i < _size; i++) {
            train.add(TrainCar(7));
        }


        //initializes protagonist at car in front of conductor car
        _curr = _head.getFront();
    }

    public String toString() {
        String output = "";
        for (int i = 0; i < _size; i++) {
          if (i == 9) {
            output += "[" + i + " ]"; //gets rid of trailing linkage between train cars
          }
            output += "[ " + i + " ] -- ";
        }
        return output;
    }

    public TrainCar getHead() {
        return _head;
    }







    private class TrainCar{
        public boolean _locked = false;
        public int _passengers;
        public int carNum; //identifier for train car; may be just placeholder

        TrainCar _front, _behind; //points to trainCar in front of curr and behind

        public TrainCar(int carN){
            _front = _behind = null;
            _passengers = 10;
            carNum = carN;
            System.out.println(carN);
        }

        public TrainCar setFront(TrainCar fr) {
            _front = fr;
            return fr;
        }

        public TrainCar setBack(TrainCar bk) {
            _behind = bk;
            return bk;
        }

        public TrainCar getFront() {
            return _front;
        }

        public TrainCar getBack() {
            return _behind;
        }

        public int getCarNum() {
            return carNum;
        }
    } //ends subclass TrainCar

}
