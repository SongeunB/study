package chap01;

import java.util.Scanner;

public class Prac15 {
	static void triangleLB(int n) {
		for (int i = 1; i <= n; i++) {
			for (int j = 1; j <= i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
	static void triangleLU(int n) {
		for (int i = 1; i <= n; i++) {
			for (int j = 1; j <= n-i+1; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
	static void triangleRB(int n) {
		for (int i = 1; i <= n; i++) {
			for (int j = 1; j <= n-i+1; j++) {
				System.out.print(" ");
			}
			for (int k = 1; k <= i; k++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
	static void triangleRU(int n) {
		for (int i = 1; i <= n; i++) {
			for (int j = 1; j <= i; j++) {
				System.out.print(" ");
			}
			for (int k = 1; k <= n-i+1; k++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
	public static void main(String[] args) {
		Scanner stdIn = new Scanner(System.in);
		int n;
		
		do {
			System.out.print("몇 단 삼각형인가요?");
			n = stdIn.nextInt();
		} while (n <= 0);
		
		System.out.println("LB 이등변 삼각형 출력");
		triangleLB(n);
		System.out.println("LU 이등변 삼각형 출력");
		triangleLU(n);
		System.out.println("RB 이등변 삼각형 출력");
		triangleRB(n);
		System.out.println("RU 이등변 삼각형 출력");
		triangleRU(n);
	}
}
