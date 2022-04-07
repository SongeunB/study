package chap01;

public class Prac05 {
	static int med3(int a, int b, int c) {
		if ((b >= a && c <= a) || (b <= a && c >= a)) {
			return a;
		} else if ((a > b && c < b) || (a < b && c > b)) {
			return b;
		}
		return c;
	}
	//실습 1C-1 보다 효율이 떨어지는 이유?
	//조건문을 더 많이 거쳐서?
}
