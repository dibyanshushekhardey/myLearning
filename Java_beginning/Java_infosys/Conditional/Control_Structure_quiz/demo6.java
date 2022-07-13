package Control_Structure_quiz;

public class demo6 {
    public static void main(String[] args) {
		int num1 = 10;
		int num2 = 3;
		if ((num1 / num2 == 5) && (num1 + num2) > 5) {
			System.out.println("1");
		} else if ((num1 - num2) >= 1 || (num1 % num2) == 0) {
			System.out.println("2");
		} else {
			System.out.println("3");
		}
	}
}
