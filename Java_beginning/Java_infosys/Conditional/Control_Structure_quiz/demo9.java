package Control_Structure_quiz;

public class demo9 {
    public static void main(String[] args) {
		float f = 12;
		switch (12) { // Line 1
		case 10 + 1: // Line 2
			System.out.println("Twelve");
		case 0: // Line 3
			System.out.println("Zero");
		case (int) 12.0:
			System.out.println("Decimal");
		default:
			System.out.println("Default");
		}
	}
}


// Output
// shows error
// Cannot switch on a value of type float. 
// Only convertible int values, strings or enum variables are permitted