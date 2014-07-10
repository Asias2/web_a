package beans;

public class Calc {

	public double calculate(String a, String b, String c) {
		double a1, b1;
		int c1;

		a1 = Double.parseDouble(a);
		b1 = Double.parseDouble(b);
		c1 = Integer.parseInt(c);

		switch (c1) {

		case 0:
			return a1 * b1;
		case 1:
			return a1 / b1;
		case 2:
			return a1 + b1;
		case 3:
			return a1 - b1;
		}
		
		return 0;
	}

}
