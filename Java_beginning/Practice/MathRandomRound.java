
public class MathRandomRound {
	public static void main(String args[]) {
		for (int i = 0; i < 10; i++) {
			double num = Math.random() * 100;
			System.out.print("The number " + num);
			System.out.println("rounds to " + Math.round(num));
		}
	}
}
