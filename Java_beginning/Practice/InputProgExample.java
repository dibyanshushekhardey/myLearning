import java.util.Scanner;

// A simple Input Program
public class InputProgExample {
	public static void main(String args[]) {
		System.out.println("Java is essential to web!");
		System.out.println("What is your name?");
		Scanner InputVariableName = new Scanner(System.in);
		System.out.println("You entered " + InputVariableName.nextLine());
	}

}
