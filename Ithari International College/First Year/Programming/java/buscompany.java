import java.util.ArrayList;
public class BusCompany {
    //creating an arrayList to store the objects of bus.
    static ArrayList<Bus> list = new ArrayList<Bus>();

    //1. method to add a bus.
    public void addBus(Bus bus)
    {
        list.add(bus);
    }

    //2. method to remove bus. It has index as parameter.
    public void removeBus(int index)
    {
        //use index to remove the bus.
        //you also need to check if the index is valid or not. If index is not valid message should be displayed.
    }

    //3. method to book the bus.
    //to book a bus you need to provide the customer name and numberPlate of bus.
    public void bookBus(String customerName, String numberPlate)
    {
        //in order to book a bus you need to check its available status.
        //only if the availableStatus of bus is true, you can book the bus.
        //if the bus has been already booked. you need to display suitable message.
        //after booking your bus you need to change avaiablestatus of bus to false.
        //and also need to set the customer name.

    }

    //5. to display information of each bus.
    public void display()
    {
        //you can use any loop to display the information of the bus.
        //you need to display numberPlate, color, route .......
    }

    //6.display discription of bus where rate is more than 500
    public void displayByRate()
    {
        //loop through the list and check rate of every bus.
        //if the rate is more than 500, you need to diplay its information.
    }

    //7. display discription of bus which color is red or blue.
    public void displayByColor(){

        //if color is red or blue, you need to display its information.
        //loop through the list and check color of the bus.
    }

    //8. display discription of bus which color is green and rate is less than 500.
    public void displayByColorAndRate()
    {
        //loop through the list and check color and rate of the bus.
        //if the bus has green color and rate less than 500, display its information.

    }

    //main method to start everything.
    public static void main(String[] args)
    {
        //create at least 5 objects of Bus.
        Bus bs1 = new Bus("Dhankuta Bus");
        Bus bs2 = new Bus("Biratnagar Bus");
        Bus bs3 = new Bus("Kathmandu Bus");
        Bus bs4 = new Bus("Dharan Bus");
        Bus bs5 = new Bus("Pokhara Bus");
        //All above methods should display results. So try to make objects on that way.
        //create an object of BusCompany.
        //call addBus method to add bus on the list.
        addBus();
        //call other methods one by one.
        removeBus();
        bookBus();
        display();
        displayByRate();
        displayByColor();
        displayByColorAndRate();

    }
}