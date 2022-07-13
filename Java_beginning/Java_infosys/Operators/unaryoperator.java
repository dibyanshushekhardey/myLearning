/**
 * unaryoperator
 */
public class unaryoperator {
    public static void main(String args[]){
        int numOne = 10;
        int numTwo = 5;
        boolean isTrue = true;
        System.out.println(numOne++ + " " + ++numOne);
        System.out.println(numTwo-- + " " + --numTwo);
        System.out.println(!isTrue + " " + ~numOne);
    }    
}