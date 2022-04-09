package chap01;

import java.util.Scanner;

public class Prac16 {
	static void spira(int n) {
		for (int i = 1; i <= n; i++) {
			for (int j = 1; j <= n-i+1; j++) {
				System.out.print(" ");
			}
			for (int k = 1; k <= (i-1)*2+1; k++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
	public static void main(String[] args) {
		Scanner stdIn = new Scanner(System.in);
		int n;
		
		do {
			System.out.print("몇 단 피라미드인가요?");
			n = stdIn.nextInt();
		} while (n <= 0);
		
		spira(n);
	}
}
