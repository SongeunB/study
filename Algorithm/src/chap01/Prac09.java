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
		
		System.out.println("a���� b������ ���� ���մϴ�.");
		System.out.print("a�� ��:");
		int a = stdIn.nextInt();
		System.out.print("b�� ��:");
		int b = stdIn.nextInt();
		
		System.out.println(a + "���� " + b + "������ ���� " + sumof(a,b) + " �Դϴ�.");
	}
}
