public class Train{
//class of linked nodes, each node is a train car 
    final private int _size = 10;
    private TrainCar _head, _tail; //car of conductor (where car-locking keys are attained)
    private TrainCar curr;

    public Train() {
        _head = new TrainCar(0);

        for (int i = 0; i < _size; i++) {
            addCar(new TrainCar(i));
        }
        

        curr = _head.getFront(); //initializes protagonist at car in front of conductor car
    }

    public String toString() {
        TrainCar tmp = _head;
        String output = "";
        for (int i = 0; i < _size; i++) {
            output += "[ " + tmp.getCarNum() + " ] -- ";
        }
        return output;
    }

    public TrainCar getHead() {
        return _head;
    }

    public TrainCar addCar(TrainCar toAdd) {
        tmp = _tail;
        _tail.setFront(toAdd);
        tmp = tmp.getFront();
        tmp.setBack(_tail);
        _tail = tmp;
    }





    private class TrainCar{
        public boolean _locked = false;
        public int _passengers;
        public int carNum; //identifier for train car; may be just placeholder

        TrainCar _front, _back;

        public TrainCar(int carN){
            _front = _back = null;
            _passengers = 10;
            carNum = carN;

        }

        public TrainCar setFront(TrainCar fr) {
            _front = fr;
            return fr;
        }

        public TrainCar setBack(TrainCar bk) {
            _back = bk;
            return bk;
        }

        public TrainCar getFront() {
            return _front;
        }

        public TrainCar getBack() {
            return _back;
        }

        public int getCarNum() {
            return carNum;
        }
    }

}