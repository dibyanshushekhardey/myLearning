import java.util.Scanner;

public class IntInput {
	public static void main(String args[]) {
		System.out.println("Java is essential to the Web!");
		System.out.println("How old are you?");
		Scanner InputVariableName = new Scanner(System.in);
		//System.out.println("Your age is " + InputVariableName.nextInt());
		int My_Variable_Name = InputVariableName.nextInt();
		System.out.println("Your age is " + My_Variable_Name);
		
	}

}
