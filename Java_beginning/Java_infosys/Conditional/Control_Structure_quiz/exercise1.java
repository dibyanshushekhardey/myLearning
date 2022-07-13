package Control_Structure_quiz;

public class exercise1 {
    public static void main(String[] args) {
		// Implement your code here 
		int num1 = 3, num2 = 4, num3 = 1;
		if (num1 > num2 && num2 > num3 &&  num1 > num3){
		    System.out.println(num1);
		}
		else if (num2 > num1 && num1 > num3 &&  num2 > num3){
		    System.out.println(num2);
		}
		else if (num3  > num1 && num1 > num2 &&  num3 > num2){
		    System.out.println(num3);
		}
	}
}
