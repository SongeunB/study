package chap01;

import java.util.Scanner;

public class Prac11 {
	public static void main(String[] args) {
		Scanner stdIn = new Scanner(System.in);
		int n;
		do {
			System.out.print("n의 값: ");
			n = stdIn.nextInt();
		} while (n <= 0);
		
		int no = 0; 			// 자릿수
		while (n > 0) {
			n /= 10; 			// n을 10으로 나눔
			no++;
		}
		
		System.out.println("그 수는 " + no + "자리입니다.");
	}
}
