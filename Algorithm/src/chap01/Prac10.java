package chap01;

import java.util.Scanner;

public class Prac10 {
	public static void main(String[] args) {
		Scanner stdIn = new Scanner(System.in);

		System.out.print("a�� ��:");
		int a = stdIn.nextInt();
		int b;

		do {
			System.out.print("b�� ��:");
			b = stdIn.nextInt();
			if (a > b) {
				System.out.println("a���� ū ���� �Է��ϼ���.");
			}
		} while (a > b);

		System.out.println(b + "-" + a + "=" + (b - a));
	}
}
