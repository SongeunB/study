package chap01;

public class Prac01 {
	static int max4(int a, int b, int c, int d) {
		int max = a;
		if(b > max) max = b;
		if(c > max) max = c;
		if(d > max) max = d;
				
		return max;
	}
	
	public static void main(String[] args) {
		System.out.println("max: " + max4(1,2,3,4));
		System.out.println("max: " + max4(1,2,5,4));
		System.out.println("max: " + max4(1,5,3,4));
		System.out.println("max: " + max4(5,2,3,4));
	}
}
