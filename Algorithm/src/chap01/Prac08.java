package chap01;

import java.util.Scanner;

public class Prac08 {
	static int sum(int n) {
		return (1+n)*5;
	}
	
	public static void main(String[] args) {
		Scanner stdIn = new Scanner(System.in);
		
		System.out.println("1���� n������ ���� ���մϴ�.");
		System.out.print("n�� ��:");
		int n = stdIn.nextInt();
		
		System.out.println("1���� " + n + "������ ���� " + sum(n) + " �Դϴ�.");
	}
}
