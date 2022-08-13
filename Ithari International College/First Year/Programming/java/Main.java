import java.util.ArrayList;
import java.util.Iterator;

public class Main{
    //creating an arraylist to store the record of students.
    //creating arraylist static because we have to access it in static methods: main and display.
    static ArrayList<Student> list = new ArrayList<Student>();
    public static void main(String args[]){
        //creating objects of student 
        Student st1 = new Student("Ayush", "L1N1", "9876543210");
        Student st2 = new Student("Rahul", "L1M1", "9876543211");
        Student st3 = new Student("Gaurav", "L1N2", "9876543212");

        //adding student objects to the arrayList one by one.
        list.add(st1);
        list.add(st2);
        list.add(st3);

    //list.add(new Student("Ayush", "L1N1", "9876543210"));
    //list.add(new Student("Gaurav", "L1M1", "9876543211"));
    //list.add(new Student("Rahul", "L1N2", "9876543212"));

        //  calling display method to see stored students information
        display();

        //2.change group of rahul from "L1M1" to "L1N2"

        Student stRahul = list.get(1);
        //rahul is at index 1.
        stRahul.group ="L1N2";
        display();

        //3. Remove "Gaurav" from the List.
        list.remove(2); //gaurav is at index 2.
        display();

        //4.Add a new Student "Avaya, L1C1, 9876543213" before Ayush.
        list.add(0, new Student("Avaya", "L1C1", "9876543213"));
        display();

        //5. Change name of "Ayush" to "Aayush"
        Student stAyush = list.get(1);
        //ayush is at index 1.
        stAyush.name = "Aayush";
        display();

        //6.Replace Avaya info wit Gaurav info.
        Student stAvaya = list.get(0);
        stAvaya.group = "L1N2"; //Gaurav group
        stAvaya.phone = "9876543212"; //Gaurav phone
        display();

        //forLoop();
        //iteratorLoop();
    }
    //1) display values
    //example of foreach loop
    public static void display()
    {
        for(Student st: list)
        {
            System.out.println(st.name+" "+st.group+" "+st.phone);
        }
        System.out.println();
    }
    //example of iteratorLoop
    public static void iteratorLoop()
    {
        Iterator<Student> itr = list.iterator();
        while(itr.hasNext()){
            Student st = itr.next();
            System.out.println(st.name+" "+st.group+" "+st.phone);
        }
    }
}