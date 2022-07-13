package Iteration;

public class demo6 {
    public static void main(String[] args) {
		int num1 = 16;
		int num2 = 6;
		while (num1 >= 2) {
			if (num1 > num2) {
				num1 = num1 / 2;
			} else {
				System.out.println(num1);
				break;
			}
		}
	}
}
