import java.util.Scanner;

public class IfElse {
	public static void main(String args[]) {
		System.out.println("Java is essential to the Web!");
		System.out.println("How old are you?");
		Scanner InputVariableName = new Scanner(System.in);
		//System.out.println("Your age is " + InputVariableName.nextInt());
		int My_Variable_Name = InputVariableName.nextInt();
		//System.out.println("Your age is " + My_Variable_Name);
		
		if (My_Variable_Name < 18) {
			System.out.println("Your age is " + My_Variable_Name + " and since it is less than 18 so you are minor.");	
		}
		else { 
			System.out.println("Your age is " + My_Variable_Name + " and as it is greater than 18 you are not minor.");
		}
	}
}
