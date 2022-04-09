package chap01;

import java.util.Scanner;

public class Prac08 {
	static int sum(int n) {
		return (1+n)*5;
	}
	
	public static void main(String[] args) {
		Scanner stdIn = new Scanner(System.in);
		
		System.out.println("1부터 n까지의 합을 구합니다.");
		System.out.print("n의 값:");
		int n = stdIn.nextInt();
		
		System.out.println("1부터 " + n + "까지의 합은 " + sum(n) + " 입니다.");
	}
}
