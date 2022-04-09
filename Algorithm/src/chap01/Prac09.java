package chap01;

import java.util.Scanner;

public class Prac09 {
	static int sumof(int a, int b) {
		int sum = 0;
		if (a < b) {
			while (a <= b) {
				sum += a;
				a++;
			}
		} else {
			while (b <= a) {
				sum += b;
				b++;
			}
		}
		return sum;
		
	}
	public static void main(String[] args) {
		Scanner stdIn = new Scanner(System.in);
		
		System.out.println("a부터 b까지의 합을 구합니다.");
		System.out.print("a의 값:");
		int a = stdIn.nextInt();
		System.out.print("b의 값:");
		int b = stdIn.nextInt();
		
		System.out.println(a + "부터 " + b + "까지의 합은 " + sumof(a,b) + " 입니다.");
	}
}
