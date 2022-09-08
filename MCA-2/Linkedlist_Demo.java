import java.util.LinkedList;
import java.util.List;

public class Linkedlist_Demo {
    public static void main(String[] args) {
        LinkedList<Character> ll=new LinkedList<Character>();
        //add elements
        ll.add('B');
        ll.add('E');
        ll.add('F');
        System.out.println("Original Contents: "+ll);

        //Demonstrate addFirst() and addLast()
        ll.addLast('G');
        ll.addFirst('A');
        System.out.println("\n After calls to addFirst and addLast():");
        System.out.println("Contents :"+ll);

        //Add elements at an index
        ll.add(2,'B');
        ll.add(2,'C');
        System.out.println("After insertion");
        System.out.println("Contents :"+ll);
        System.out.println("Hare are the first and Last elements :"+ll.getFirst()+""+ll.getLast());
        
        List<Character>sub=ll.subList(2,5);
        System.out.println("\nContents of subList view: "+sub);

        //create a new list that contains the sublist
        LinkedList<Character> ll2=new LinkedList<Character>(sub);

        //Remove the elements in ll2 from ll
        ll.removeAll(ll2);

        System.out.println("\nAfter removing ll2 from ll");
        System.out.println("Contents :"+ll);

        //Remove first and last elements
        ll.removeFirst();
        ll.removeLast();

        System.out.println("\nAfter deleting first and last elements");
        System.out.println("Contents :"+ll);

        //Get and Set a value through an index.
        ll.set(0,Character.toLowerCase(ll.get(0)));
        System.out.println("\nAfter Change :"+ll);


    }
    
}
