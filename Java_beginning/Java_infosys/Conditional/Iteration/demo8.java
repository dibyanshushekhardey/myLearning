package Iteration;

public class demo8 {
    public static void main(String[] args) {
		int i = 0;
		for (; i <= 3; i++) {
			if (i++ % 2 == 0) {
				System.out.println("i = " + i);
			}
		}
		System.out.println("i after the loop = " + i);
	}
}
