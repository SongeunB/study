package chap01;

public class Prac02 {
	static int min3(int a, int b, int c) {
		int min = a;
		if(b < min) min = b;
		if(c < min) min = c;
		
		return min;
	}
	
	public static void main(String[] args) {
		System.out.println("min: " + min3(1,2,3));
		System.out.println("min: " + min3(3,1,2));
		System.out.println("min: " + min3(3,2,1));
	}
}
