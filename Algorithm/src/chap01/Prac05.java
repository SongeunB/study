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
	//�ǽ� 1C-1 ���� ȿ���� �������� ����?
	//���ǹ��� �� ���� ���ļ�?
}
