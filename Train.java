import java.util.Scanner;

public class Train{
//class of linked nodes, each node is a train car 
    Scanner sc = new Scanner(System.in);
    

    final public int _size = 10;


    private class TrainCar{
        public boolean _locked = false;
        public int _passengers;

        TrainCar _front, _back, _current;

        public TrainCar(){
            _front = _back = _current = null;
            passengers = 10;

        }

    }

}