package Control_Structure_quiz;

public class demo8 {
    public static void main(String[] args) {
		int i = -1, j = -1;
		switch (i) {
		case -1:
			j = 1;
		case 2:
			j = 2;
			break;
		default:
			j = 0;
		}
		System.out.println("j = " + j);
	}
}
