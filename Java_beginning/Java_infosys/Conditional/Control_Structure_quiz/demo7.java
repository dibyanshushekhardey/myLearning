package Control_Structure_quiz;

public class demo7 {
    public static void main(String[] args) {
		int a = -10;
		int b = -200;
		int c = 2000;
		int d = 4000;
		if (a * b >= d) {
			if (d > c) {
				if (d % c != 0) {
					System.out.println(11);
				} else {
					System.out.println(22);
				}
			}
		} else {
			if (b / a > 0) {
				if (a < b || d % c != 0) {
					System.out.println(33);
				} else {
					System.out.println(44);
				}
			}
		}
	}
}
